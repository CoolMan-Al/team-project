from datetime import datetime #for getting current date and time
import time #for time.sleep()
from bme280 import BME280 # for colelcting sensor data
from smbus2 import SMBus # for bus to connect sensor
import mysql.connector # for sending sensor data to database
import subprocess
import os


def sql_connect():
    sql_server = mysql.connector.connect(
        host="stu-db.aet.leedsbeckett.ac.uk",
        user="c3654717",
        password="MyDB49240412",
        database="c3654717"
    )
    sql_cursor = sql_server.cursor()
    
    return sql_server, sql_cursor


def sql_send(date,time,temp,humid,press):
    query = "INSERT INTO value (date, time, temp, humid, press) VALUES (%s, %s, %s, %s, %s)"
    values = (current_date, current_time, sensor.get_temperature(), sensor.get_humidity(), sensor.get_pressure())
    cursor.execute(query,values)
    server.commit()


if __name__ == "__main__":

    server, cursor = sql_connect()
    sensor = BME280(i2c_dev=SMBus(1))
    
    countdown = 0
    frequency = 5
    
    dir = os.path.dirname(os.path.realpath(__file__)) + "/BABA_Graphic.py"
    subprocess.Popen(["/usr/bin/python3", dir],
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT)
    
    while True:
        current_time = str(datetime.now())[11:-7]
        current_date = str(datetime.now())[0:-16]
        
        
        if int(str(current_time)[3:-3]) % frequency == 0:
            if countdown == 0:
                sql_send(current_date, current_time, int(sensor.get_temperature()), int(sensor.get_humidity()), int(sensor.get_pressure()))
                countdown = 59
            
            else:
                countdown -= 1
            

        print("Date: %s | Time: %s | Temperature: %s°C | Humidity: %s%% | Pressure: %shPa" %
              (current_date, current_time, int(sensor.get_temperature()), int(sensor.get_humidity()), int(sensor.get_pressure())), end='\r')
            
        time.sleep(1)     