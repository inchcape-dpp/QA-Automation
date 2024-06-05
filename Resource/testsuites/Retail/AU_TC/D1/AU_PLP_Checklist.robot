*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary
Library    Process
#Library  FakerLibrary

Resource  ../../../../../Resource/testdata/Retail/AU_Config/D1/AU_D1_Config.robot
Resource  ../../../../../Resource/testdata/Retail/Retail_Variable.robot
Resource  ../../../../../Resource/testdata/Retail/Retail_Resource.robot

*** Test Cases ***
Test Setup  Run Keywords   Open Chrome Browser
Screen Shot DIR  Run Keywords    Retail Screen Shot DIR


TC-001 - Verify Login Page
    [Tags]    TC001    Login Page
    run keyword and continue on failure    Verify Login Page

TC-002 - Verify Login Page Elements
    [Tags]    TC002    Login Page
    run keyword and continue on failure    Verify Login Page Elements

TC-003 - Input Valid Email
    [Tags]    TC005    Login Page
    run keyword and continue on failure    Input Valid Username

TC-004 - Input Valid Password
    [Tags]    TC007    Login Page
    run keyword and continue on failure    Input Valid Password

TC-005 - User should be able to click Login Button
    [Tags]    TC008    Login Page
    run keyword and continue on failure    User should be able to click Login Button

TC-006 - Admin User should be able to Login
    [Tags]    TC009    Home Page
    run keyword and continue on failure    Admin User should be able to Login
    run keyword and continue on failure    TC Sleep