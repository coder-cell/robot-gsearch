*** Settings ***
Documentation    API Testing Robot files.
Variables   robot.yaml
Library     lib.api_request
Library     scripts/retrieve_Info.py

*** Variables ***
@{URLS}     https://www.google.com/    https://www.linkedin.com    https://slack.com/intl/en-in/


*** Test Cases ***
Test Different URLS
    FOR   ${INDEX}    IN RANGE   1  11
        FOR   ${url}   IN   @{URLS}
            ${status}   Run Keyword And Continue On Failure   Get Status  ${url}
            Log     ${status}
            ${status}   Run Keyword And Continue On Failure   Get Data  ${url}
            Log     ${status}
        END
    END
*** Keywords ***
