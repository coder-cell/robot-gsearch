*** Settings ***
Documentation    Example Robot script to login to Facebook using Selenium automation
...     with Keyword driven approach.

Library     SeleniumLibrary
Library     Dialogs

*** Variables ***
${URL}      https://www.facebook.com/
${BROWSER}  Chrome
${LOG_EMAIL}      //*[@id="email"]
${LOG_PASS}      //*[@id="pass"]
${LOG_BTN}     //*[@name="login"]
${SRCH_BOX}     //*[@placeholder="Search Facebook"]


*** Test Cases ***
Facebook Login & Search
    Open Browser for Search
    ${username} =   Get Value From User   Input email Id  default
    Set Log Level    NONE
    ${password} =   Get Value From User   Input password  hidden=yes
    Set Log Level    INFO
    Input Search    ${username}     ${password}
    Close Current Browser

*** Keywords ***
Open Browser for Search
    Open Browser    ${URL}  ${BROWSER}      options=add_argument("--disable-notifications")
    Maximize Browser Window
    Set Browser Implicit Wait   10
    ${BTN}=     Get WebElement  xpath=${LOG_BTN}
    Wait Until Element Is Visible   ${BTN}
    Title Should Be     Facebook – log in or sign up

Input Search
    [Arguments]      ${emailid}     ${password}
    Input Text      xpath=${LOG_EMAIL}     ${emailid}   clear=True
    Set Log Level    NONE
    Input Text      xpath=${LOG_PASS}     ${password}   clear=True
    Set Log Level    INFO
    Click Element   xpath=${LOG_BTN}
    Sleep   2

    Wait Until Element Is Visible   xpath=${SRCH_BOX}
    #Input Text      xpath=${SRCH_BOX}      Automation    clear=True
    Press Keys      xpath=${SRCH_BOX}      Automation+RETURN
    Sleep       5
    Capture Page Screenshot

Close Current Browser
    Close Browser

