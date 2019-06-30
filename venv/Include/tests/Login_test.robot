*** Settings ***
Library            Selenium2Library
Suite Setup
Suite Teardown     Close All Browsers

*** Test Cases ***
Login test
    Go to JDI page
    Click User Icon
    Setup Username And Password
    Click Enter button
    Check authorization has been successful

*** Keywords ***
Go to JDI page
    Open Browser    https://jdi-testing.github.io/jdi-light        chrome
    Maximize Browser Window

Click User Icon
    Click Element  xpath=//*[contains(@class, 'profile-photo')]

Setup Username And Password
    Input Text     id=name           Roman
    Input Text     id=password       Jdi1234

Click Enter button
    Click Button   id=login-button

Check authorization has been successful
    Element Text Should Be    id=user-name    ROMAN IOVLEV