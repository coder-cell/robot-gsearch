
# Prequisites:
    # Enable  USB Debugging opition and USB install option in the mobile.
    # Start Appium server manually.

*** Settings ***
Documentation       Robot Script for Android Emulator Appium Automation.

Library           AppiumLibrary

*** Variables ***
${REMOTE_URL}   http://localhost:4723/wd/hub
${deviceName}    f8ff6a4e
${platformName}    android
${appPackage}    com.miui.calculator
${appActivity}    .cal.CalculatorActivity
${noReset}    True
${ensureWebviewsHavePages}    True

*** Test Cases ***
Test case name
    Open Application    ${REMOTE_URL}   deviceName=${deviceName}  platformName=${platformName}  appPackage=${appPackage}  appActivity=${appActivity}  noReset=${noReset}  ensureWebviewsHavePages=${ensureWebviewsHavePages}
    # Clear output
    Click Element    id=com.miui.calculator:id/btn_c_s
    # Click 5 + 7
    Click Element    id=com.miui.calculator:id/btn_5_s
    Click Element    id=com.miui.calculator:id/btn_plus_s
    Click Element    id=com.miui.calculator:id/btn_7_s
    # accessibility id=equals
    Click Element    id=com.miui.calculator:id/btn_equal_s
    Capture Page Screenshot
    # close the calculator appilcation.
    Close Application
