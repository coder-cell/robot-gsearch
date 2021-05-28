*** Settings ***
Documentation    API Testing Robot files.
Variables   robot.yaml
Library     lib.api_request
Library     scripts/retrieve_Info.py
Library     Collections

*** Variables ***
@{URLS}     https://www.google.com/    https://www.linkedin.com    https://slack.com/intl/en-in/
&{dictURLs}     google=https://www.google.com/  linkedin=https://www.linkedin.com    slack=https://slack.com/intl/en-in/
@{STATUS_}      []

*** Test Cases ***
Test Different URLS
    FOR   ${INDEX}    IN RANGE   1  11
        FOR   ${url}   IN   @{dictURLS.values()}
            ${status}   Run Keyword And Continue On Failure   Get API Status  ${url}
            Log     ${status}
            ${status}    Repeat Keyword    5    Get API Data    ${url}
            Log     ${status}
        END
    END
*** Keywords ***
Get API Data
    [Arguments]      ${url}
    ${status}   Run Keyword And Continue On Failure   Get Data  ${url}
    [return]    ${status}

Get API Status
    [Arguments]     ${url}
    ${status}   Run Keyword And Continue On Failure   Get Status  ${url}
    Should be equal    ${status}    ${200}
    [return]    ${status}
