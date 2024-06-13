*** Settings ***
Documentation    Suite description

Library    SeleniumLibrary
Library    Process
Library    String


Resource  ../../../../../Resource/testdata/Retail/AU_Config/S2/AU_S2_Config.robot
Resource  ../../../../../Resource/testdata/Retail/Retail_Variable.robot
Resource  ../../../../../Resource/testdata/Retail/Retail_Resource.robot

*** Test Cases ***
Test Setup  Run Keywords   Open Chrome Browser
Screen Shot DIR  Run Keywords    Retail Screen Shot DIR

Login Page - Verify Login Page
    [Tags]    Login Page
    run keyword and continue on failure    Verify Login Page
    run keyword and continue on failure    Verify Login Page Elements


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

Home Page - User should be able to view Vehicle Search in AU Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to view Vehicle Search in AU Retail Home Page

Home Page - User should be able to Select and Save Vehicle using Home Page manual Search in AU Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to click model on manual search in AU Retail Home Page
    run keyword and continue on failure    User should be able to select model on manual search in AU Retail Home Page
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    User should be able to click year on manual search in AU Retail Home Page
    run keyword and continue on failure    User should be able to select year on manual search in AU Retail Home Page
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    User should be able to click series on manual search in AU Retail Home Page
    run keyword and continue on failure    User should be able to select series on manual search in AU Retail Home Page
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    User should be able to click engine on manual search in AU Retail Home Page
    run keyword and continue on failure    User should be able to select engine on manual search in AU Retail Home Page
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    User should be able to click details on manual search in AU Retail Home Page
    run keyword and continue on failure    User should be able to select details on manual search in AU Retail Home Page
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    User shoud be albe to click search this vehicle on manual seearh in AU Retail Home Page
    run keyword and continue on failure    User should be able to Save or Select Manual Vehicle Search on Search Popup in AU Retail Home Page
    run keyword and continue on failure    TC Sleep










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