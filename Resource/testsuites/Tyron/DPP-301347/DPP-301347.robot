*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary
Library    Process
#Library  FakerLibrary

Resource  ../../../../Resource/testdata/Retail/HK_Config/S2/HK_S2_Gold_Config.robot
Resource  ../../../../Resource/testdata/Retail/Retail_Variable.robot
Resource  ../../../../Resource/testdata/Retail/Retail_Resource.robot

#HK - Toyota - Manual Vehicle Search - Vehicle Listing - Lexus - Saving Lexus Vehicles Does not Reflect on Vehicle Listing Page

*** Test Cases ***
Test Setup  Run Keywords   Open Chrome Browser HK
Screen Shot DIR  Run Keywords    Retail Screen Shot DIR HK

TC-001 - Verify Login Page
    [Tags]    TC001    Login Page
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    User should be able to click Translate to English Button
    run keyword and continue on failure    Verify Login Page

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

TC-007 - User should be able to add new vehicle using Manual Search in Retail Account Vehicle Listing Page
    [Tags]    Vehicle Listing Page
    run keyword and continue on failure    User should be able to click Select Your Vehicle
    run keyword and continue on failure    User should be able to view add vehicle in HK Retail Select Vehicle
    run keyword and continue on failure    User should be able to click add new vehicle in HK Retail Select Vehicle
    run keyword and continue on failure    User should be able to view add vehicle in HK Retail Select Vehicle
    run keyword and continue on failure    User should be able to click model on manual search in Retail Select Vehicle
    run keyword and continue on failure    User should be able to select model on manual search in Retail Select Vehicle
    run keyword and continue on failure    User should be able to click year on manual search in Retail Select Vehicle
    run keyword and continue on failure    User should be able to select year on manual search in Retail Select Vehicle
    run keyword and continue on failure    User should be able to click series on manual search in Retail Select Vehicle
    run keyword and continue on failure    User should be able to select series on manual search in Retail Select Vehicle
    run keyword and continue on failure    User should be able to click Model ID on manual search in HK Retail Select Vehicle
    run keyword and continue on failure    User should be able to select Model ID on manual search in HK Retail Select Vehicle
    run keyword and continue on failure    User shoud be albe to click search this vehicle on manual seearh in Retail Select Vehicle
    run keyword and continue on failure    User should be able to click select & save vehicle in Retail Select Vehicle
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    reload page
    run keyword and continue on failure    TC Sleep

TC-008 User should be able to view account vehicle listing page
    [Tags]    Vehicle Listing Page
    run keyword and continue on failure    User should be able to access account from top navigaton
    run keyword and continue on failure    User should be able to view account vehicle listing page
    run keyword and continue on failure    User should be able to view HK vehicle listing Panel