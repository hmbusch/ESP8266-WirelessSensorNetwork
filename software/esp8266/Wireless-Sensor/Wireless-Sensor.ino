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
 *  Read sensors (not implemented yet)
 *  -> Connect to WiFi
 *     -> Send data
 *        -> Disconnect from WiFi
 *           -> Sleep (not implemented yet)
 *              -> back to the first step
 *              
 * Reading sensors and entering deep sleep is not implemented yet. In 
 * addition, serial communication is enabled all the time.
 */
#include <ESP8266WiFi.h>
#include "Settings.h"

const int STATE_SENSOR_READ = 0;
const int STATE_WIFI_CONNECT = 1;
const int STATE_REST_SEND = 2;
const int STATE_WIFI_DISCONNECT = 3;
const int STATE_SLEEP = 4;

int currentState = STATE_SENSOR_READ;

WiFiClient client;

void setup() {
  Serial.begin(115200);
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
      // Skip this state at the moment
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
 * Performs a TCP connect to the server and sends a static data
 * package via HTTP POST to the server. If the request does not 
 * return within the configured timeout, the operation is aborted
 * and the program continues.
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

    String requestBody = String("{\"sourceId\":\"47\",\"values\":[{\"name\":\"temperature\",\"type\":\"float\",\"value\":23.2},{\"name\":\"brightness\",\"type\":\"integer\",\"value\":455},{\"name\":\"movement\",\"type\":\"boolean\",\"value\":false}]}");

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

  // Transition to the next state
  currentState = STATE_SLEEP;
}

/**
 * This method is intended to put the ESP8266 into deep sleep
 * mode for power saving. It is not currently implemented.
 */
void handleSleep() {
  Serial.println("Sleeping... zZzZzZ");
  Serial.println();
  delay(5000);
  currentState = STATE_SENSOR_READ;
  Serial.println("==================================================");
}

