/** 
 * Uncomment the following line to enable serial debugging. If the
 * token DEBUG is not defined, no serial connection will be configured
 * and nothing will be written to the serial monitor.
 */
//#define DEBUG

/**
 * This constant defines the identification of the
 * sensor within your InfluxDB. Set it to something
 * meaningful such as 'livingroom'.
 */
const char* SENSOR_ID = "livingroom";

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
const char* INFLUX_HOST = "192.168.0.1";

/**
 * The port to connect to on you central server.
 */
const int INFLUX_PORT = 8086;

/**
 * The base URL that will be called when transmitting
 * the data to your InfluxDB. This value is almost certain
 * to be 'write'.
 */
const char* INFLUX_URL = "/write";

/**
 * The name of the database on your InfluxDB that the values
 * shall be written into. You need to setup this database in
 * advance or otherwise the data transmission will fail.
 */
const char* INFLUX_DB_NAME = "sensor_network";

/**
 * The retention policy that InfluxDB will use to store your
 * data over time. Unless you have special needs, 'default'
 * will suffice.
 */
const char* INFLUX_RETENTION_POLICY = "default";

/**
 * A value in milliseconds after which the sensor will assume
 * that your server is unreachable or not answering. When reaching
 * this value while waiting for a response, the node will abort
 * the operation so it does not get stuck while sending data to a
 * dead server.
 */
const int HTTP_TIMEOUT = 5000;

/**
 * The pin the PIR sensor is attached to.
 */
const int PIN_PIR = 12;
