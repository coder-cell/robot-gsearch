
*** Settings ***
Documentation       Robot Script for Android Emulator Appium Automation.

Library           AppiumLibrary
Library     OperatingSystem
Library     Dialogs
Library     Process

*** Variables ***
${REMOTE_URL}   http://localhost:4723/wd/hub
${deviceName}    emulator-5554
${platformName}    android
${appPackage}    com.google.android.calculator
${appActivity}    com.android.calculator2.Calculator
${noReset}    True
${ensureWebviewsHavePages}    True

*** Test Cases ***
Test case name
#    Run Process     "C:/Program Files/Appium/Appium.exe"    -a 127.0.0.1 -p 4723 &
#    Execute Manual Step     Its Paused
    Open Application    ${REMOTE_URL}   deviceName=${deviceName}  platformName=${platformName}  appPackage=${appPackage}  appActivity=${appActivity}  noReset=${noReset}  ensureWebviewsHavePages=${ensureWebviewsHavePages}
    # id=com.google.android.calculator:id/digit_3
    Click Element    id=com.google.android.calculator:id/digit_3
    # accessibility id=plus
    Click Element    id=com.google.android.calculator:id/op_add
    # id=com.google.android.calculator:id/digit_9
    Click Element    id=com.google.android.calculator:id/digit_9
    # accessibility id=equals
    Click Element    id=com.google.android.calculator:id/eq
    # close the calculator appilcation.
    Close Application
