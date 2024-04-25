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

tcsleep
    TCsleep training

TC-001 - User should be able to view login
    [Tags]    Login    Viewing
    run keyword    User should be able to view login

TC-002 - User should be to enter valid Username
    [Tags]    Login    Username
    run keyword    User should be to enter valid Username

TC-003 - User should be to enter valid Password
    [Tags]    Login    Password
    run keyword    User should be to enter valid Password

TC-004 - User should be able to click login button in Training TC
    [Tags]    Login    button
    run keyword    User should be able to click login button in Training TC
