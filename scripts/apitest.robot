*** Settings ***
Documentation    API Testing Robot files.
Library     lib/api_request.py

*** Test Cases ***
Test URL
    ${status}   Get Status  url=https://www.google.com/
    Log     ${status}


*** Keywords ***
