*** Settings ***
Library            Selenium2Library
Variables          Variables/Variables.py
Variables          Elements/Elements.py

*** Keywords ***
Go to JDI page
    Open Browser    ${URL}        chrome
    Maximize Browser Window

Click User Icon
    Click Element    ${user_icon}

Setup Username And Password
    Input Text     ${username_selector}          ${username}
    Input Text     ${password_selector}          ${password}

Click Enter button
    Click Button   ${login_button_selector}

Check authorization has been successful
    Element Text Should Be    ${username_icon_text_selector}   ${expected_user_text}