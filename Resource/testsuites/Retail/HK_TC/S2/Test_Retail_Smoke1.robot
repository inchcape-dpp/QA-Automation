*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary
Library    Process
#Library  FakerLibrary

Resource  ../../../../../Resource/testdata/Retail/HK_Config/S2/HK_S2_Bronze_Config.robot
Resource  ../../../../../Resource/testdata/Retail/Retail_Variable.robot
Resource  ../../../../../Resource/testdata/Retail/Retail_Resource.robot

*** Test Cases ***
Test Setup  Run Keywords   Open Chrome Browser
Screen Shot DIR  Run Keywords    Retail Screen Shot DIR

TC-001 - Verify Login Page
    [Tags]    TC001    Login Page
    run keyword and continue on failure    Verify Login Page

#TC-002 - Email
#    [Tags]    Get Email
#    run keyword and continue on failure    New browser tab
#    run keyword and continue on failure    Enter Yop Mail
#    run keyword and continue on failure    Switch to Inbox List Frame
#    run keyword and continue on failure    Click Inbox Messages
#    run keyword and continue on failure    Unselect Mail Frame
#    run keyword and continue on failure    Switch to Inbox Message Frame
#    run keyword and continue on failure    Read Message
#    run keyword and continue on failure    Get Sender Email
#    run keyword and continue on failure    Get Email Message
#
#TC-003 - Read Text
#    [Tags]    Read Text
#    run keyword and continue on failure    Read Text File


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

TC-025 - User should be able to select 1 filter from selected category in HK Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to select 1 filter from selected category in HK Retail Home Page

TC-026 - User should be able to click 1 sub filter from selected category in Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to click 1 sub filter from selected category in Retail Home Page
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    User should be able to verify parts breadcrumbs in HK Retail Home Page
    run keyword and continue on failure    Show number of product list
    run keyword and continue on failure    User should be able to Go to Home page






#TC-000000 - TC Sleep
#    [Tags]    TC-000000   TC Sleep
#    run keyword and continue on failure    TC Sleep

#TC-000000 - Browse Back Button
#    [Tags]    TC-000000   Browser Back
#    run keyword and continue on failure    Browse Back Button


#TC-000000 - User should be able to logout
#    [Tags]    TC009    Logout
#    run keyword and continue on failure    User should be able to logout using double header
#
#Test Teardown
#    Run Keywords  Close Browser
#    run keyword    Save Log DIR