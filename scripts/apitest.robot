*** Settings ***
Documentation    API Testing Robot files.
Library     lib.api request

*** Test Cases ***
Test URL
    ${status} = Get Status  url='https://www.google.com/'
    Log


*** Keywords ***
