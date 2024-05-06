*** Settings ***
Documentation    Suite description

Library    SeleniumLibrary
Library    Process
Library    String


Resource  ../../../../Resource/testdata/Retail/AU_Config/S2/AU_S2_Config.robot
Resource  ../../../../Resource/testdata/Retail/Retail_Variable.robot
Resource  ../../../../Resource/testdata/Retail/Retail_Resource.robot


*** Test Cases ***
Test Setup  Run Keywords   Open Chrome Browser
Screen Shot DIR  Run Keywords    Retail Screent Shot DIR

TC-001 - Verify Login Page
    [Tags]    Login Page
    run keyword and continue on failure    Verify Login Page
    run keyword and continue on failure    Verify Login Page Elements

TC-002 - Input Valid Username
    [Tags]    Login Page
    run keyword and continue on failure    Input Valid Username

TC-003 - Input Valid Password
    [Tags]    Login Page
    run keyword and continue on failure    Input Valid Password

TC-004 - User should be able to click Login Button
    [Tags]    Login Page
    run keyword and continue on failure    User should be able to click Login Button
    run keyword and continue on failure    TC Sleep

TC-005 - User should be able to view All Parts Page
    [Tags]    All Products Page
    run keyword and continue on failure    User should be able to view All Parts Page

TC-006 - User should be able to view product In Stock and DC Stock
    [Tags]    All Products Page
    run keyword and continue on failure    User should be able to view product In Stock and DC Stock
    run keyword and continue on failure    User should be able to click product details In Stock and DC Stock
    run keyword and continue on failure    User should be able to view product details In Stock and DC Stock
    run keyword and continue on failure    Browse Back Button
    run keyword and continue on failure    Return to first page



