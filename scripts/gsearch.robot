*** Settings ***
Documentation    Example Robot script to search google using Selenium automation
...     with Keyword driven approach.

Library     SeleniumLibrary

*** Variables ***
${URL}      https://www.google.com
${BROWSER}  Chrome
${SEARCH_AREA}      .//*[@name='q']
${SRCH_BTN}     /html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]

*** Test Cases ***
Google Search
    Open Browser for Search
    Input Search    Selenium Automation
    Close Current Browser

*** Keywords ***
Open Browser for Search
    Open Browser    ${URL}  ${BROWSER}
    Maximize Browser Window
    Set Browser Implicit Wait   10
    ${BTN}=     Get WebElement  xpath=${SRCH_BTN}
    Wait Until Element Is Visible   ${BTN}
    Title Should Be     Google

Input Search
    [Arguments]      ${input_text}
    ${SRCH} =   Get WebElement  xpath=${SEARCH_AREA}
    Input Text      ${SRCH}     ${input_text}   clear=True
    Click Element   xpath=${SRCH_BTN}
    Sleep   10

Close Current Browser
    Close Browser

