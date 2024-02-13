*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary
Library    Process
#Library  FakerLibrary

Resource  ../../../../Resource/testdata/QEMiniSIte/Ric/MiniSite_Config.robot
Resource  ../../../../Resource/testdata/QEMiniSIte/Ric/MiniSite_Variable.robot
Resource  ../../../../Resource/testdata/QEMiniSIte/Ric/MiniSite_resource.robot

*** Test Cases ***
Test Setup  Run Keywords   Open Chrome Browser
Screen Shot DIR  Run Keywords    Retail Screent Shot DIR

TC-001 - Verify Minisite Page
    [Tags]    TC001    Login Page
    run keyword and continue on failure    Verify Minisite Page

TC-002 - Verify Why Choose Us elements
    [Tags]    TC002    Login Page
    run keyword and continue on failure    Verify Why Choose Us elements

TC-003 - Verify How it Works elements
    [Tags]    TC003    Login Page
    run keyword and continue on failure    Verify How it Works elements

TC-004 - Click register button
    [Tags]    TC004    Login Page
    run keyword and continue on failure    Click register button

