from datetime import datetime #for getting current date and time
import time #for time.sleep()
import bme280 # for colelcting sensor data
import smbus2 # for bus to connect sensor
import mysql.connector # for sending sensor data to database

#Insert values here

sql_server = mysql.connector.connect(
  host="",
  user="",
  password="",
  database=""
)

sql_cursor = sql_server.cursor()

print(sql_server)


if __name__ == "__main__":
    
    # sensor connection and reading
    sensor_address = 0x76
    sensor_bus = smbus2.SMBus(1)
    sensor_cal = bme280.load_calibration_params(sensor_bus, sensor_address)
    # variable that will contain the values for all the sensors
    sensor_data = bme280.sample(sensor_bus, sensor_address, sensor_cal)
    
    while True:
        current_time = str(datetime.now())[11:-7]
        current_date = str(datetime.now())[0:-16]
        
        # pull minutes from the current_time
        # check if it is 0'clock or half-past
        if int(str(current_time)[3:-3]) % 30 == 0:
            # sql database connection and insertion
            sql_query = "INSERT INTO value (date, time, temp, humid, press) VALUES (%s, %s, %s, %s, %s)"
            sql_values = (current_date, current_time, sensor_data.temperature, sensor_data.humidity, sensor_data.pressure)        
            sql_cursor.execute(sql_query, sql_values)
            sql_server.commit()

        print("Date: %s | Time: %s | Temperature: %s C | Humidity: %s | Pressure: %s hPa" %
              (current_date, current_time, int(sensor_data.temperature), int(sensor_data.humidity), int(sensor_data.pressure)), end='\r')
            
        time.sleep(1)     
