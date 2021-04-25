
### ***Appium Automation:***
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
  * Start session, 
  `Appium REST http interface listener started on 0.0.0.0:4723`
  * Click on `Start inspector session` 
    * Add *Desired Capabilites*: <br> 
    JSON DATA: <br>
        `{
          "deviceName": "emulator-5554", 
          "platformName": "android",
          "appPackage": "com.google.android.calculator",
          "appActivity": "com.android.calculator2.Calculator",
          "noReset": true
        }`
      <br>Note: You can save the sessions for later loading. <br>
      You could  the series of commands initiating the appium server to connect to your emulator application.
  * The configured appilcation opens up in your emulator.
  * Using inspector, you can find the `attributes` of the componets in the application.
  * You can record sequence of actions and get generated to different coding language as Python, Java, RobotFramework etc.
  which would come handy while searchig for the attributes :wink:
    
Issues Faced:
I have listed out the issues, I have faced sofar, that can be used by other as well :smile:.
1. _HAXM_ not installed, while starting the emulator device in Android studios.
    <br>Solution: Tried installing from the internet, but failed. Later identified, `Virtualization` to be enabled at BIOS and then installed it.
2. No `Playstore` options in the Pixel 3 emulator, as Calculator application needs to be added. Go with Pixel-5A or anyother virtual device with `Playstore` option.
3. Opening emulator without Android Studio:
  `"C:/Users/manis/AppData/Local/Android/Sdk/emulator/emulator.exe" -avd Nexus_5X_API_30`
   Use `emulator.exe` under emulator folder instead of _tools_ folder.
4. In Real Device Appium Testing: <br>Enable _Developer_ options and Enable _USB Debugging_ and _Allow Installation using USB Debugging_ as well.
   <br>_Note:_ Appium *.apks get installed during initial conifugration. 
    
  
