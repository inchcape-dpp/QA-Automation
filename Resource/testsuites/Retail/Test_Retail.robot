*** Settings ***

Documentation    Suite description

Library  SeleniumLibrary
Library    Process
#Library  FakerLibrary

Resource  ../../../Resource/testdata/config.robot
Resource  ../../../Resource/testdata/Retail/Retail_Variable_Ty.robot
Resource  ../../../Resource/testdata/Retail/Retail_Resource_Ty.robot

*** Test Cases ***



Test Setup  Run Keywords   Open Chrome Browser
Screen Shot DIR  Run Keywords    Retail Screent Shot DIR

TC-001 - User should be able to view Login Form
    [Tags]    TC001    Login
    run keyword and continue on failure    User should be able to view Login Form

TC-002 - Verify Login Page Elements
    [Tags]    TC002    Login
    run keyword and continue on failure    Verify Login Page Elements

TC-003 - Validate user invalid email input
    [Tags]    TC003    Login
    run keyword and continue on failure    Validate user invalid email input

TC-004 - Validate user invalid password input
    [Tags]    TC004    Login
    run keyword and continue on failure    Validate user invalid password input

TC-005 - Validate user unsuccessful login with invalid credentials
    [Tags]    TC005    Login
    run keyword and continue on failure    Validate user unsuccessful login with invalid credentials

TC-006 - Validate user valid email input
    [Tags]    TC005    Login
    run keyword and continue on failure    Validate user valid email input

TC-007 - Validate user valid password input
    [Tags]    TC007    Login
    run keyword and continue on failure    Validate user valid password input

TC-008 - User should be able to click Login Button
    [Tags]    TC008    Login
    run keyword and continue on failure    User should be able to click Login Button

TC-009 - Validate user should be able to navigate to Homepage
    [Tags]    TC009    Homepage
    run keyword and continue on failure    Validate user should be able to navigate to Homepage

TC-010 - User should be able to select 1 filter from selected category in Shop By Categories section
    [Tags]    TC010    Homepage
    run keyword and continue on failure    User should be able to select 1 filter from selected category in Shop By Categories section

TC-011 - User should be able to click Sold By Seller button for In Stock and DC in PLP
    [Tags]    TC011    Homepage
    run keyword and continue on failure    User should be able to click Sold By Seller button for In Stock and DC in PLP

#Test




