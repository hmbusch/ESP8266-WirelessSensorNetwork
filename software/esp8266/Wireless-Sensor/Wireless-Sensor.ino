/**
 * This sketch is intended to test the sending of data via WiFi to
 * a server for collection. It sends the data to a machine running the 
 * 'simple-sensor-rest-service' which also supplied in this repository.
 * It is a noop Java REST service that accepts the data sent and logs it
 * to the console.
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
 * Reading sensors and entering deep sleep is not implemented yet. In 
 * addition, serial communication is enabled all the time, using 74880 
 * bauds/s. This is the same speed that the ESP8266 itself uses, so log
 * output from this sketch and from the ESP8266 itself can be viewed in
 * the same serial monitor.
 */
#include <ESP8266WiFi.h>
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

void setup() {
  Serial.begin(74880);
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
 * Performs a TCP connect to the server and packages the (static)
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
 * for 5 seconds. The sleep interval is intended for speedier testing.
 */
void handleSleep() {
  Serial.println("Sleeping... zZzZzZ");
  Serial.println();
  ESP.deepSleep(5 * 1000000, WAKE_RF_DEFAULT);
  delay(100);
}

/**
 * This method will perform the sensor readings in a future version 
 * of this sketch. For now, it just sets the variabled for the 
 * individual measurements to static values.
 * If the sensors could not be read, the control flow skips to the
 * sleep state immediately.
 */
void readSensors() {
  Serial.println("Reading Sensors...");
  
  sensorReadingsValid = false;

  sensorTemperature = 20.2;
  sensorHumidity = 46.9;
  sensorMotion = false;
  sensorLux = 1233;

  sensorReadingsValid = true;
  
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

