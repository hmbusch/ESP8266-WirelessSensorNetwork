/**
 * This is the SSID of the WiFi network, that the sensor node
 * will connect to.
 */
const char* WIFI_SSID = "<Your SSID here>";

/**
 * This is the password for the above WiFi network.
 */
const char* WIFI_KEY = "<Your WiFi password here>";

/**
 * This constant contains the DNS name or IP address of
 * the server that will receive the information generated
 * by this node.
 * You will need to change this to the name/IP your system
 * should use.
 */
const char* REST_HOST = "192.168.0.1";

/**
 * The port to connect to on you central server.
 */
const int REST_PORT = 8080;

/**
 * The base URL that will be called when transmitting
 * the data to your server.
 */
const char* REST_URL = "/sensor";

/**
 * A value in milliseconds after which the sensor will assume
 * that your server is unreachable or not answering. When reaching
 * this value while waiting for a response, the node will abort
 * the operation so it does not get stuck while sending data to a
 * dead server.
 */
const int HTTP_TIMEOUT = 5000;
