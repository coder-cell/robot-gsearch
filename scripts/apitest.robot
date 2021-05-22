*** Settings ***
Documentation    API Testing Robot files.
Variables   robot.yaml
Library     lib.api_request
Library     scripts/retrieve_Info.py
*** Test Cases ***
Test URL
    ${status}   Get Status  url=https://www.google.com/
    Log     ${status}
    ${status}   Get Data  url=https://www.google.com/
    Log     ${status}

*** Keywords ***
