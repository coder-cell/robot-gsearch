# *Automation Using Robot Framework Python Selenium*
* Robot Framework Python automation for [**Google search**](https://www.google.com/).
* Robot script for the login and search in [**Facebook**](https://www.facebook.com/).

###***Appium Automation:***
#### Emulator Setup:
*Steps Involved:*
<br>
* *Install Android studio*
  * Open Android Studio.
  * Click and Open AVD Manager.
  * Create Virtual Device - I have used *Pixel 5A* device. - Prefer to use device with playstore available by default.
  * Start the virtual device, so the mobile emulator will be active
  * Login to playstore and install the required application.
  * Launch the application and verify it is working fine.
    <br><br>
* _CMD_:
    * Open Command Prompt (CMD).
    * Enter the command `adb`, you could see the list of device emulated. e.g. emulator_xxxx
    * Enter the command `adb logcat`, to get the log of the activites done at the emulator. This would help to know the psuedo name of the application used at the backend of the emulator.
        * Note: For example, I have used Calculator application, pseudo name would be of `com.google.android.calculator/com.android.calculator2.Calculator`.
    * Please note the above details are used for configuring in Appium in the upcoming section.
    <br><br>
* _Install Appium:_.
  * Open Appium.
  * Start the server by default ipaddress and ports.
  * Add *Desired Capabilites*: <br> 
    JSON DATA: <br>
        `{
          "deviceName": "emulator-5554", 
          "platformName": "android",
          "appPackage": "com.google.android.calculator",
          "appActivity": "com.android.calculator2.Calculator",
          "noReset": true
        }`
  * Start Server .... to be continued.....  