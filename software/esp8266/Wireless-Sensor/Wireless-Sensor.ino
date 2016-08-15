/**
 * This sketch collects data from the attached sensors, packages it
 * and sends it to a machine running an InfluxDB. See 
 * https://influxdata.com/time-series-platform/influxdb/ for more
 * information on InfluxDB and how to set it up.
 * 
 * The node software implements a state machine for the various states,
 * from collecting to sleeping. The steps in this state machine are:
 * 
 *             + Start
 *             |
 *             v
 *     +--------------+    +-----------------+    +-----------+
 *     |              |    |                 |    |           |
 * +-->| Read sensors |--->| Connect to Wifi |--->| Send data |
 * |   |              |    |                 |    |           |
 * |   +------+-------+    +-----------------+    +-----+-----+
 * |          |                                         |
 * |          | on failure                              |
 * |          |                                         |
 * |          v                                         v
 * |   +---------------+               +----------------------+
 * |   |               |               |                      |
 * +---|    Sleep      |<--------------| Disconnect from WiFi |
 *     |               |               |                      |
 *     +---------------+               +----------------------+
 *              
 * Serial communication is enabled all the time, using 74880 
 * bauds/s. This is the same speed that the ESP8266 itself uses, so log
 * output from this sketch and from the ESP8266 itself can be viewed in
 * the same serial monitor.
 * 
 * The sensors used in the sketch are:
 * 
 * - a PIR sensor for movement (supplies HIGH or LOW an a dedicated pin)
 * - a TSL2561 for brightness measurement (via I2C)
 * - a HDC1000 for temperature and humidity measurement (via I2C)
 * - a BMP085 for barometric pressure (via I2C)
 * 
 * Each run of the state machine takes about 60 seconds, so one dataset
 * is created and logged roughly every minute.
 * 
 * All configuration values such as WiFi access, InfluxDB server and
 * database information, etc. have to be set in the Settings.h.
 * 
 * This version of the sketch skips the DHCP configuration of the
 * ESP8266 by using pre-configured values for IP, DNS and gateway. 
 * This saves a little time while connecting to the WiFi. And as they
 * say: time is battery power.
 */

#include <Wire.h>
#include <ESP8266WiFi.h>
#include <Adafruit_Sensor.h>
#include <Adafruit_TSL2561_U.h>
#include <Adafruit_BMP085_U.h>
#include <Adafruit_HDC1000.h>
#include "Settings.h"

// We need to use some ESP specific function calls not available 
// in the Arduino layer, therefore we need to import this.
extern "C" {
#include "user_interface.h"
}

// When we don't need any debug information printed, we might as
// well skip the call in a central place - right here.
#ifdef DEBUG
  #define DEBUG_PRINT(x)    Serial.print (x)
  #define DEBUG_PRINTDEC(x) Serial.print (x, DEC)
  #define DEBUG_PRINTLN(x)  Serial.println (x)
#else
  #define DEBUG_PRINT(x)
  #define DEBUG_PRINTDEC(x)
  #define DEBUG_PRINTLN(x)
#endif 

const int STATE_SENSOR_READ = 0;
const int STATE_WIFI_CONNECT = 1;
const int STATE_REST_SEND = 2;
const int STATE_WIFI_DISCONNECT = 3;
const int STATE_SLEEP = 4;

int currentState = STATE_SENSOR_READ;

float sensorTemperature;
float sensorHumidity;
boolean sensorMotion;
int sensorLux;
int sensorPressure;

boolean sensorReadingsValid;

long startTime = 0;

WiFiClient client;
Adafruit_HDC1000 hdc = Adafruit_HDC1000();
Adafruit_TSL2561_Unified tsl = Adafruit_TSL2561_Unified(TSL2561_ADDR_FLOAT, 12345);
Adafruit_BMP085_Unified bmp = Adafruit_BMP085_Unified(10085);

/**
 * Intializes the different sensors (using the Adafruit Unified Sensor API)
 * and the serial communication (if enabled). If the sensors are not reachable,
 * an error message is displayed on the serial monitor (if enabled).
 */
void setup() {
#ifdef DEBUG  
  Serial.begin(74880);
#endif

  pinMode(PIN_PIR, INPUT);

  // Configure the light sensor for auto-range and fast (but slightly inaccurate) readings
  if (tsl.begin()) {
    tsl.enableAutoRange(true);
    tsl.setIntegrationTime(TSL2561_INTEGRATIONTIME_13MS);
  }
  else {
    DEBUG_PRINTLN("[ERROR] Couldn't find any TSL2561 device, check your I2C addresses or your cabling");
  }
  
  if (!hdc.begin()) {
    DEBUG_PRINTLN("[ERROR] Couldn't find any HDC1000 device, check your I2C addresses or your cabling");
  }
  
  if (!bmp.begin(BMP085_MODE_ULTRALOWPOWER)) {
    DEBUG_PRINTLN("[ERROR] Couldn't find any BMP085/BMP180 device, check your I2C addresses or your cabling");
  }
}

/**
 * Evaluates the current state of the machine and calls
 * the appropriate transition method.
 */
void loop() {
  switch (currentState)
  {
    case STATE_WIFI_CONNECT:
      handleWifiConnect();
      break;
    case STATE_SENSOR_READ:
      readSensors();
      currentState = STATE_WIFI_CONNECT;
      break;
    case STATE_REST_SEND:
      sendDataToServer();
      break;
    case STATE_WIFI_DISCONNECT:
      handleWifiDisconnect();
      break;
    case STATE_SLEEP:
      handleSleep();
      break;
    default:
      currentState = STATE_WIFI_DISCONNECT;
      break;
  }
}

/**
 * This method loops while waiting for WiFi.status() to reach WL_CONNECTED.
 * In other words: it does what it's name says: it pauses the sketch until
 * the WiFiClient signals a successful connection.
 */
void waitForConnect() {
  while (WiFi.status() != WL_CONNECTED) {
    delay(250);
    DEBUG_PRINT(".");
  }
  DEBUG_PRINTLN("done");
}

/**
 * This method configures the WiFiClient and connects to 
 * the network. It skips the DHCP process in favor of 
 * pre-configured values in order to save time.
 * Configuring the ESP8266 WiFiClient takes up a significant
 * amount of runtime (50-60% of each awake cycle) and needs
 * only to be done when the ESP is not properly configured
 * already.
 * A check is made if the ESP is already configured for the
 * given SSID and if it is, the sketch just waits for the
 * chip to automatically re-establish the network connection.
 * 
 * Note: if the WiFi SSID stays the same but the password 
 * changes, this behaviour will result in connections problems
 * because the sketch does not set the new password. I will
 * perhaps address this in a later version.
 */
void handleWifiConnect() {
  DEBUG_PRINTLN();
  DEBUG_PRINTLN();

  if (WiFi.SSID().equalsIgnoreCase(WIFI_SSID)) {
    DEBUG_PRINT("Already configured for: ");
    DEBUG_PRINT(WiFi.SSID());
    DEBUG_PRINT(". Waiting for connect");
    waitForConnect();
  }
  else {
    DEBUG_PRINT("Connecting to ");
    DEBUG_PRINT(WIFI_SSID);
    DEBUG_PRINT("...");
    
    // Configure IPs to save time during connect by omitting the DHCP negotiation
    WiFi.config(WIFI_IP, WIFI_DNS, WIFI_GATEWAY);
    WiFi.mode(WIFI_STA);

    // Connect
    WiFi.begin(WIFI_SSID, WIFI_KEY);
    // Tell the ESP to auto-reconnect to the configured WiFi network
    wifi_station_set_auto_connect(true);
    waitForConnect();
  }

  DEBUG_PRINTLN();
  DEBUG_PRINT("IP address: ");
  DEBUG_PRINTLN(WiFi.localIP());
  DEBUG_PRINTLN();

  // Transition to the next state
  currentState = STATE_REST_SEND;
}

/**
 * Performs a TCP connect to the server and packages the
 * sensor information as an InfluxDB line data package. This line is then
 * POSTed to the server. If the request does not return within the 
 * configured timeout, the operation is aborted and the program continues.
 * Any response from the server is printed to Serial (if enabled).
 */
void sendDataToServer() {
  boolean successfullyConnected = client.connect(INFLUX_HOST, INFLUX_PORT);
  if (successfullyConnected) {
    DEBUG_PRINT("Sending POST request to http://");
    DEBUG_PRINT(INFLUX_HOST);
    DEBUG_PRINT(":");
    DEBUG_PRINT(INFLUX_PORT);
    DEBUG_PRINTLN(INFLUX_URL);

    String requestBody = String("sensor,source-id=") + SENSOR_ID + " ";
    requestBody = requestBody + "temperature=" + sensorTemperature + ",";
    requestBody = requestBody + "humidity=" + sensorHumidity + ",";
    requestBody = requestBody + "brightness=" + sensorLux + ",";
    requestBody = requestBody + "movement=" + (sensorMotion ? "1" : "0") + ",";
    requestBody = requestBody + "pressure=" + sensorPressure;

    // use static request at the moment
    client.print("POST ");
    client.print(INFLUX_URL);
    client.print("?db=");
    client.print(INFLUX_DB_NAME);
    client.print("&rp=");
    client.print(INFLUX_RETENTION_POLICY);
    client.println(" HTTP/1.1");
    client.print("Host: ");
    client.print(INFLUX_HOST);
    client.print(":");
    client.println(INFLUX_PORT);
    client.println("Connection: close");
    client.print("Content-Length: ");
    client.println(requestBody.length());
    client.println();
    client.println(requestBody);

    DEBUG_PRINTLN("Request sent");

    int gracePeriod = millis() + HTTP_TIMEOUT;
    boolean aborted = false;
    while (client.available() == 0 && !aborted) {
      if (millis() > gracePeriod) {
        DEBUG_PRINTLN("Request timed out, aborting...");
        client.stop();
        aborted = true;
      }
      delay(50);
    }

    if (!aborted) {
      // give the server a little more time to complete the response
      delay(100);
      DEBUG_PRINT("Received ");
      DEBUG_PRINTDEC(client.available());
      DEBUG_PRINTLN(" bytes");
      DEBUG_PRINTLN();
      // We'll display the response for debugging purposed. Until we have a decent response parser,
      // we might as well flush() the client and throw away the data.
      while (client.available()) {
        String line = client.readStringUntil('\r');
        DEBUG_PRINT(line);
      }
    }
  }
  else {
    DEBUG_PRINT("Could not connect to ");
    DEBUG_PRINT(INFLUX_HOST);
    DEBUG_PRINT(":");
    DEBUG_PRINTLN(INFLUX_PORT);
    DEBUG_PRINTLN();
  }

  // Transition to the next state
  currentState = STATE_WIFI_DISCONNECT;
}

/**
 * This is now a noop method. When the ESP enters deep sleep, the network
 * connection is lost anyways and shutting it down manually interferes with
 * the auto-reconnect feature. 
 * This method now immediately transistions to the next steps and will 
 * probably be removed in a future version.
 */
void handleWifiDisconnect() {
  // Transition to the next state
  currentState = STATE_SLEEP;
}

/**
 * This method puts the ESP8266 into deep sleep mode for power saving
 * for 56 seconds. With the new connection handling, the on time was
 * reduced to 3-5 seconds and sleep time was increased to maintain the 
 * "one measurement per minute" mark.
 */
void handleSleep() {
  DEBUG_PRINT("Operating cycle time: ");
  DEBUG_PRINT(millis() - startTime);
  DEBUG_PRINTLN(" milliseconds");
  DEBUG_PRINTLN("Sleeping... zZzZzZ");
  DEBUG_PRINTLN();
  ESP.deepSleep(56 * 1000000, WAKE_RF_DEFAULT);
  delay(100);
}

/**
 * Reads the indiviual sensors and assigns their values to the
 * corresponding global variables.
 */
void readSensors() {
  startTime = millis();
  
  DEBUG_PRINTLN("Reading Sensors...");
  
  sensorReadingsValid = false;

  // Read the HDC1000
  sensorTemperature = hdc.readTemperature();
  sensorHumidity = hdc.readHumidity();

  // Read the PIR Sensor
  sensorMotion = HIGH == digitalRead(PIN_PIR);

  // Read the light sensor
  sensors_event_t lightEvent;
  tsl.getEvent(&lightEvent);
  if (lightEvent.light > 0) {
    sensorLux = lightEvent.light;     
  }
  else {
    sensorLux = 0;
  }

  // Read the pressure sensor
  sensors_event_t pressureEvent;
  bmp.getEvent(&pressureEvent);
  if (pressureEvent.pressure > 0) {
    sensorPressure = pressureEvent.pressure;
  }
  else {
    sensorPressure = 0;
  }  

  // just set this to true, maybe we'll add functionality later on
  sensorReadingsValid = true;

  DEBUG_PRINT("Temperature: ");
  DEBUG_PRINT(hdc.readTemperature());
  DEBUG_PRINT(" (");
  DEBUG_PRINT(sensorTemperature);
  DEBUG_PRINTLN(")");
  DEBUG_PRINT("Humidity: ");
  DEBUG_PRINT(hdc.readHumidity());
  DEBUG_PRINT(" (");
  DEBUG_PRINT(sensorHumidity);
  DEBUG_PRINTLN(")");
  DEBUG_PRINT("Brightness: ");
  DEBUG_PRINT(lightEvent.light);
  DEBUG_PRINT(" (");
  DEBUG_PRINT(sensorLux);
  DEBUG_PRINTLN(")");
  DEBUG_PRINT("Movement: ");
  DEBUG_PRINTLN(sensorMotion ? "true" : "false");
  DEBUG_PRINT("Pressure: ");
  DEBUG_PRINT(pressureEvent.pressure);
  DEBUG_PRINT(" (");
  DEBUG_PRINT(sensorPressure);
  DEBUG_PRINTLN(")");
  
  DEBUG_PRINTLN("done");
  
  // Transition to the next state
  if (sensorReadingsValid) {
    DEBUG_PRINTLN("Sensors read OK, proceeding to WiFi connect");
    currentState = STATE_WIFI_CONNECT;  
  }
  else {
    DEBUG_PRINTLN("Sensor reading failed, proceeding directly to sleep");
    currentState = STATE_SLEEP;
  }
  Serial.println();
}

