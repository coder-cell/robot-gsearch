
*** Settings ***
Documentation       Robot Script for Android Emulator Appium Automation.

Library           AppiumLibrary

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
    Open Application    ${REMOTE_URL}   deviceName=${deviceName}  platformName=${platformName}  appPackage=${appPackage}  appActivity=${appActivity}  noReset=${noReset}  ensureWebviewsHavePages=${ensureWebviewsHavePages}
    # id=com.google.android.calculator:id/digit_3
    Click Element    id=com.google.android.calculator:id/digit_3
    # accessibility id=plus
    Click Element    accessibility id=plus
    # id=com.google.android.calculator:id/digit_9
    Click Element    id=com.google.android.calculator:id/digit_9
    # accessibility id=equals
    Click Element    accessibility id=equals

*** Test Teardown ***
    Quit Application

*** Suite Teardown ***
    Close Application