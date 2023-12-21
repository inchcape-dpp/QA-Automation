*** Settings ***
Documentation    Suite description

Library    SeleniumLibrary
Library    Process
#Library    FakerLibrary


Resource  ../../../Resource/testdata/config.robot
Resource  ../../../Resource/testdata/Dealer/Dealer_Variable.robot
Resource  ../../../Resource/testdata/Dealer/Dealer_Resource.robot


*** Test Cases ***
Test Setup  Run Keywords   Open Chrome Browser
Screen Shot DIR  Run Keywords    Dealer Screent Shot DIR

TC Sleep
    [Tags]    Sleep    TC Sleep
    run keyword and continue on failure    TC Sleep

TC-006 - Input Valid Email
    [Tags]    TC006    Valid Account
    run keyword and continue on failure    Input Valid Username

TC-007 - Input Valid Password
    [Tags]    TC007    Valid Account
    run keyword and continue on failure    Input Valid Password

TC-008 - User should be able to click Login Button
    [Tags]    TC008    Login Button
    run keyword and continue on failure    User should be able to click Login Button

TC-009 - User should be able to view message page
    [Tags]    Home Page    Messages
    run keyword and continue on failure    User should be able to click Messages from left navigation
    run keyword and continue on failure    User should be able to view message page

TC-010 - User should be able to read all unread Messages in Dealer Message Page
    [Tags]    Home Page    Messages
    run keyword and continue on failure    User should be able to read all unread Messages in Dealer Message Page


TC-000 - User should be able to Logout
    [Tags]    Home Page    Settings
    run keyword and continue on failure    User should be able to Logout

TC Sleep
    run keyword and continue on failure    TC Sleep









Test Teardown  Run Keywords  Close Browser