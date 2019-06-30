*** Settings ***
Library            Selenium2Library
Variables          Variables/Variables.py
Variables          Elements/Elements.py
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
    Open Browser    ${URL}        chrome
    Maximize Browser Window

Click User Icon
    Click Element    ${user_icon}

Setup Username And Password
    Input Text     ${username_selector}          ${username}
    Input Text     ${username_password}          ${password}

Click Enter button
    Click Button   ${login_button_selector}

Check authorization has been successful
    Element Text Should Be    ${username_icon_text_selector}   ${expected_user_text}