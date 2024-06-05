*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary
Library    Process
#Library  FakerLibrary

Resource  ../../../../Resource/testdata/config.robot
Resource  ../../../../Resource/testdata/Ric/Retail/Ric_Retail_Variable.robot
Resource   ../../../../Resource/testdata/Ric/Retail/Ric_Retail_Resource.robot

*** Test Cases ***
Test Setup  Run Keywords   Open Chrome Browser
Screen Shot DIR  Run Keywords    Retail Screent Shot DIR

TC-001 - Verify Login Page
    [Tags]    TC001    Login Page
    run keyword and continue on failure    Verify Login Page

TC-002 - Verify Login Page Elements
    [Tags]    TC002    Login Page
    run keyword and continue on failure    Verify Login Page Elements

TC-003 - Input Invalid Username
    [Tags]    TC003    Login Page
    run keyword and continue on failure    Input Invalid Username

TC-004 - Forgot Password invalid username
    [Tags]    TC004    Login Page
    run keyword and continue on failure    Forgot Password invalid username

TC-005 - Verify Create Acccount
    [Tags]    TC005    Login Page
    run keyword and continue on failure    Verify Create Acccount

TC-006 - Verify footer links
    [Tags]    TC006    Login Page
    run keyword and continue on failure    Verify footer links