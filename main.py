import robot
import os
import threading


def open_emulator():
    os.system('"C:/Users/manis/AppData/Local/Android/Sdk/emulator/emulator.exe" -avd Nexus_5X_API_30')
    pass


def start_appium_server():
    os.system('appium  -a  127.0.0.1   -p  4723')
    pass


# emthread = threading.Thread(target=open_emulator, args=())
# appthread = threading.Thread(target=start_appium_server, args=())
# emthread.start()
# appthread.start()
# appthread.join(timeout=60*1)

# subprocess.call([r"D:\Projects\Python\Robot\robot-gsearch\bat\appium.cmd"])
# robot.run("gsearch.robot", outputdir="output")
robot.run("appium_emulator.robot", outputdir="output")
# robot.run("fbsearch.robot", outputdir="output")
