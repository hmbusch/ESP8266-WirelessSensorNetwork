/** 
 * Uncomment the following line to enable serial debugging. If the
 * token DEBUG is not defined, no serial connection will be configured
 * and nothing will be written to the serial monitor.
 */
#define DEBUG

/**
 * Is this flag is enabled, temperature and humidity will be read using
 * the HDC1000 sensor. You may enable only one such sensor, either the
 * HDC1000 or the BME280
 */
//#define HDC1000

/**
 * If this flag is enabled, the code will use a BMP085 sensor to read
 * the air pressure. If not, no pressure readings will be taken. You can 
 * enable either the BMP085 or the BME280, not both. The sketch 
 * behaviour will be eratical if you do.
 */
//#define BMP085

/**
 * If this flag is enabled, the code will use a BME280 sensor to read
 * the temperature, humidity and air pressure. You can enable either the
 * BMP085 or the BME280, not both. The sketch behaviour will be eratical
 * if you do.
 * 
 */
#define BME280 

/**
 * Enables or disabled the PIR motion sensor.
 */
#define PIR

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
 * This IP address will be used by the ESP8266. It is
 * intended to be static in order to speed up the connection
 * process.
 */
const IPAddress WIFI_IP(192, 168, 0, 10); 

/**
 * This is the IP address of the primary DNS server that
 * your network uses. In most home setups, the address is
 * identical to the gateway address (see below).
 * We can skip the DHCP process when we pre-configure these
 * addresses.
 */
const IPAddress WIFI_DNS(192, 168, 0, 5); 

/**
 * This is the IP address of the gateway in your local
 * network that connects you to the internet. The sensor
 * does not communicate with the internet, but the address
 * is needed nonetheless for proper WiFi configuration.
 * We can skip the DHCP process when we pre-configure these
 * addresses.
 */
const IPAddress WIFI_GATEWAY(192, 168, 0, 5); 

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

/**
 * Defines the ratio by which the voltage is divided/reduced
 * by the voltage divider. The measured value multiplied by this 
 * factor equals the actual battery voltage.
 * From a mathematical standpoint, this ratio can be calculated as
 * Vout = Vin * (10K / (33K + 10K)) = 0.2326 i.e. 
 * Vin = (1 / 0.2326) * Vout 
 * Vin = 4.299 * Vout
 * 
 * This derived factor is valid for perfect conditions and absolutely
 * precise resistors. So in reality, the ratio may (and will) vary,
 * depending on your setup. Run the sketch in debug mode an recalculate
 * this ratio on what the sketch reports so that the calculated battery
 * voltage corresponds with the real battery voltage.
 */
const float VOLTAGE_RATIO = 4.57;
