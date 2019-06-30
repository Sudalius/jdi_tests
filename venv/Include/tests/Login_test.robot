*** Settings ***
Library            Selenium2Library
Variables          Variables/Variables.py
Variables          Elements/Elements.py
Resource           Keywords/Keywords.robot
Suite Teardown     Close All Browsers

*** Test Cases ***
Login test
    Go to JDI page
    Click User Icon
    Setup Username And Password
    Click Enter button
    Check authorization has been successful