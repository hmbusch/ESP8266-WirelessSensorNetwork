/**
 * This sketch collects data from the attached sensors, packages it
 * and sends it to a machine running the 'simple-sensor-rest-service' 
 * which is also supplied in this repository.
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
 * 
 * Each run of the state machine takes about 60 seconds, so one dataset
 * is created and logged roughly every minute.
 */
#include <Wire.h>
#include <ESP8266WiFi.h>
#include <Adafruit_Sensor.h>
#include <Adafruit_TSL2561_U.h>
#include <Adafruit_HDC1000.h>
#include "Settings.h"

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

boolean sensorReadingsValid;

WiFiClient client;
Adafruit_HDC1000 hdc = Adafruit_HDC1000();
Adafruit_TSL2561_Unified tsl = Adafruit_TSL2561_Unified(TSL2561_ADDR_FLOAT, 12345);

/**
 * Intializes the different sensors (using the Adafruit Unified Sensor API)
 * and the serial communication.
 */
void setup() {
  Serial.begin(74880);

  pinMode(PIN_PIR, INPUT);

  // Configure the light sensor for auto-range and fast (but slightly inaccurate) readings
  tsl.begin();
  tsl.enableAutoRange(true);
  tsl.setIntegrationTime(TSL2561_INTEGRATIONTIME_13MS);

  hdc.begin();
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
  delay(1000);
}

/**
 * This method configures the WiFiClient and connects to 
 * the network. Currently, there is no timeout while waiting
 * for a connection.
 */
void handleWifiConnect() {
  Serial.println();
  Serial.println();
  Serial.print("Connecting to ");
  Serial.print(WIFI_SSID);
  Serial.print("...");

  WiFi.begin(WIFI_SSID, WIFI_KEY);

  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }

  Serial.println("done");
  Serial.println();
  Serial.print("IP address: ");
  Serial.println(WiFi.localIP());
  Serial.println();

  // Transition to the next state
  currentState = STATE_REST_SEND;
}

/**
 * Performs a TCP connect to the server and packages the
 * sensor information into a JSON document. The document is then POSTed
 * to the server. If the request does not return within the configured 
 * timeout, the operation is aborted and the program continues.
 * Any response from the server is printed to Serial.
 */
void sendDataToServer() {
  boolean successfullyConnected = client.connect(REST_HOST, REST_PORT);
  if (successfullyConnected) {
    Serial.print("Sending PUT request to http://");
    Serial.print(REST_HOST);
    Serial.print(":");
    Serial.print(REST_PORT);
    Serial.println(REST_URL);

    String requestBody = String("{\"sourceId\":\"47\",\"values\":[");
    requestBody = requestBody + "{\"name\":\"temperature\",\"type\":\"float\",\"value\":" + sensorTemperature + "},";
    requestBody = requestBody + "{\"name\":\"humidity\",\"type\":\"float\",\"value\":" + sensorHumidity + "},";
    requestBody = requestBody + "{\"name\":\"brightness\",\"type\":\"integer\",\"value\":" + sensorLux + "},";
    requestBody = requestBody + "{\"name\":\"movement\",\"type\":\"boolean\",\"value\":" + (sensorMotion ? "true" : "false") + "}";
    requestBody = requestBody + "]}";

    // use static request at the moment
    client.print("PUT ");
    client.print(REST_URL);
    client.println(" HTTP/1.1");
    client.print("Host: ");
    client.print(REST_HOST);
    client.print(":");
    client.println(REST_PORT);
    client.println("Content-Type: application/json");
    client.println("Connection: close");
    client.print("Content-Length: ");
    client.println(requestBody.length());
    client.println();
    client.println(requestBody);

    Serial.println("Request sent");

    int gracePeriod = millis() + HTTP_TIMEOUT;
    boolean aborted = false;
    while (client.available() == 0 && !aborted) {
      if (millis() > gracePeriod) {
        Serial.println("Request timed out, aborting...");
        client.stop();
        aborted = true;
      }
      delay(50);
    }

    if (!aborted) {
      // give the server a little more time to complete the response
      delay(100);
      Serial.print("Received ");
      Serial.print(client.available(), DEC);
      Serial.println(" bytes");
      Serial.println();
      // We'll display the response for debugging purposed. Until we have a decent response parser,
      // we might as well flush() the client and throw away the data.
      while (client.available()) {
        String line = client.readStringUntil('\r');
        Serial.print(line);
      }
    }
  }
  else {
    Serial.print("Could not connect to ");
    Serial.print(REST_HOST);
    Serial.print(":");
    Serial.println(REST_PORT);
    Serial.println();
  }

  // Transition to the next state
  currentState = STATE_WIFI_DISCONNECT;
}

/**
 * Disconnects from the current WiFi.
 */
void handleWifiDisconnect() {
  Serial.print("Disconnecting from WiFi...");
  WiFi.disconnect();
  while (WiFi.status() != WL_IDLE_STATUS) {
    delay(500);
    Serial.print(".");
  }
  Serial.println("done");
  Serial.println();

  WiFi.mode(WIFI_OFF);

  // Transition to the next state
  currentState = STATE_SLEEP;
}

/**
 * This method puts the ESP8266 into deep sleep mode for power saving
 * for 50 seconds.
 */
void handleSleep() {
  Serial.println("Sleeping... zZzZzZ");
  Serial.println();
  ESP.deepSleep(50 * 1000000, WAKE_RF_DEFAULT);
  delay(100);
}

/**
 * Reads the indiviual sensors and assigns their values to the
 * corresponding global variables.
 */
void readSensors() {
  Serial.println("Reading Sensors...");
  
  sensorReadingsValid = false;

  // Read the HDC1000
  sensorTemperature = hdc.readTemperature();
  sensorHumidity = hdc.readHumidity();

  // Read the PIR Sensor
  sensorMotion = HIGH == digitalRead(PIN_PIR);

  // Read the light sensor
  sensors_event_t event;
  tsl.getEvent(&event);
  if (event.light > 0) {
    sensorLux = event.light;     
  }
  else {
    sensorLux = 0;
  }

  sensorReadingsValid = true;

  Serial.print("Temperature: ");
  Serial.print(hdc.readTemperature());
  Serial.print(" (");
  Serial.print(sensorTemperature);
  Serial.println(")");
  Serial.print("Humidity: ");
  Serial.print(hdc.readHumidity());
  Serial.print(" (");
  Serial.print(sensorHumidity);
  Serial.println(")");
  Serial.print("Brightness: ");
  Serial.print(event.light);
  Serial.print(" (");
  Serial.print(sensorLux);
  Serial.println(")");
  Serial.print("Movement: ");
  Serial.println(sensorMotion ? "true" : "false");
  
  Serial.println("done");
  
  // Transition to the next state
  if (sensorReadingsValid) {
    Serial.println("Sensors read OK, proceeding to WiFi connect");
    currentState = STATE_WIFI_CONNECT;  
  }
  else {
    Serial.println("Sensor reading failed, proceeding directly to sleep");
    currentState = STATE_SLEEP;
  }
  Serial.println();
}

