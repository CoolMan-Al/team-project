from subprocess import run
from tkinter import Tk, font, Frame
from tkinter.ttk import Button, Label
from PIL import Image, ImageTk
from bme280 import BME280
from smbus2 import SMBus
from datetime import datetime


def confirmStop():
    # Window
    stopWindow = Tk()
    stopWindow.geometry('300x100')
    stopWindow.title("Exit Service?")

    # Frames
    stopPanel = Frame(stopWindow, relief='flat', bd=1)
    stopPanel.place(x=20, y=55)

    # Content
    stop_label = Label(stopWindow, text="Are you sure you want to stop the program? \n The device will stop collecting data!")
    stop_label.pack(side='top')

    exitYes = Button(stopPanel,text="Confirm Exit", command=stopService)
    exitYes.pack(side='right', padx=15)

    exitNo = Button(stopPanel, text="Back to Home", command=stopWindow.destroy)
    exitNo.pack(side='left', padx=15)

    # Execute
    stopWindow.mainloop()


def stopService():
    # Kill main process
    run(["/bin/sh", "-c", "kill $(pgrep -f 'BABAH_Main.py')"])
    quit()


def update():
    date.configure(text="Date: " + str(datetime.now())[0:-16])
    time.configure(text="Time: " + str(datetime.now())[11:-7])
    temp.configure(text="Temperature : " + str(int(sensor.get_temperature())) + " °C")
    humid.configure(text="Humidity    : " + str(int(sensor.get_humidity()))  + " %")
    press.configure(text="Air Pressure: " + str(int(sensor.get_pressure())) + " hPa")
    window.after(1000, update)


if __name__ == "__main__": 
    # Window
    window = Tk()
    window.title("BABA's Home")
    window.geometry('800x480')
    window.attributes("-fullscreen", True)

    # Options
    icon_file = ImageTk.PhotoImage(Image.open("temp.png").resize((100,100)))
    window.defaultFont = font.nametofont("TkDefaultFont")
    window.defaultFont.configure(family = "Courier",
                                size = 32,
                                weight = font.BOLD)

    # External
    sensor = BME280(i2c_dev=SMBus(1))

    # Frames
    detail = Frame(window, relief='flat', bd=1)
    detail.place(x=0,y=0)
    
    # Content
    title = Label(detail, text="BABA's Home", font=("Courier", 64, 'bold'), image=icon_file, compound='left')
    title.pack(side='top')
        
    date = Label(detail, text=str(datetime.now())[0:-16])
    date.pack(anchor='w', padx=10, pady=5)
    
    time = Label(detail, text=str(datetime.now())[11:-7])
    time.pack(anchor='w', padx=10, pady=5)

    temp = Label(detail, text=sensor.get_temperature())
    temp.pack(anchor='w', padx=10, pady=10)

    humid = Label(detail, text=sensor.get_humidity())
    humid.pack(anchor='w', padx=10, pady=10)

    press = Label(detail, text=sensor.get_pressure())
    press.pack(anchor='w', padx=10, pady=10)

    exit_button = Button(detail, text="Exit", command=confirmStop)
    exit_button.pack(side='left', padx=10, pady=0)
    
    # Final
    window.protocol("WM_DELETE_WINDOW", confirmStop)
    update()
    window.mainloop()
