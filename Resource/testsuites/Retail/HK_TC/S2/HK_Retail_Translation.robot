*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary
Library    Process

Resource  ../../../../../Resource/testdata/Retail/HK_Config/S2/HK_S2_Bronze_Config.robot
Resource  ../../../../../Resource/testdata/Retail/Retail_Variable.robot
Resource  ../../../../../Resource/testdata/Retail/Retail_Resource.robot

*** Test Cases ***
Test Setup  Run Keywords   Open Chrome Browser
Screen Shot DIR  Run Keywords    Retail Screen Shot DIR

TC-001 - Verify Login Page
    [Tags]    TC001    Login Page
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    User should be able to click Translate to English Button
    run keyword and continue on failure    Verify Login Page
    run keyword and continue on failure    Verify Login Page Elements HK

TC-001 - Verify Login Page
    [Tags]    TC001    Registration  Page
    run keyword and continue on failure    User should be able to click Create Account in Retail Login Page
    run keyword and continue on failure    User should be able to view HK Registration Form

TC-001 - Verify Login Page
    [Tags]    TC001    Registration  Page
    run keyword and continue on failure    User should be able to click Create Account in Retail Login Page
    run keyword and continue on failure    User should be able to view HK Registration Form