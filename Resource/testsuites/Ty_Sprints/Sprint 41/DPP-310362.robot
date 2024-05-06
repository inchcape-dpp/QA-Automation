*** Settings ***
Documentation    Suite description

Library    SeleniumLibrary
Library    Process
#Library    FakerLibrary


Resource  ../../../../../Resource/testdata/Dealer/AU_Config/S2/AU_S2_Config.robot
Resource  ../../../../../Resource/testdata/Dealer/Dealer_Variable.robot
Resource  ../../../../../Resource/testdata/Dealer/Dealer_Resource.robot


*** Test Cases ***
Test Setup  Run Keywords   Open Chrome Browser
Screen Shot DIR  Run Keywords    Dealer Screent Shot DIR

TC Sleep
    [Tags]    Sleep    TC Sleep
    run keyword and continue on failure    TC Sleep

TC-001 - Input Valid Email
    [Tags]    TC006    Valid Account
    run keyword and continue on failure    Input Valid Username


TC-002 - Input Valid Password
    [Tags]    TC007    Valid Account
    run keyword and continue on failure    Input Valid Password

TC-003 - User should be able to click Login Button
    [Tags]    TC008    Login Button
    run keyword and continue on failure    User should be able to click Login Button
    run keyword and continue on failure    TC Sleep

TC-004 - User should be able to view top navigation
    [Tags]    TC014    Top Navigation
    run keyword and continue on failure    User should be able to view top navigation

TC-005 - User should be able to click account from top navigation
    [Tags]    TC015    Top Navigation
    run keyword and continue on failure    User should be able to click account from top navigation

TC-006 - User should be able to click orders from top navigation
    [Tags]    TC016    Top Navigation
    run keyword and continue on failure    User should be able to click orders from top navigation