*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary
Library    Process
#Library  FakerLibrary

Resource    ../../../../Resource/testdata/Retail/HK_Config/S2/HK_S2_Bronze_Config.robot
Resource    ../../../../Resource/testdata/Retail/Retail_Variable.robot
Resource    ../../../../Resource/testdata/Retail/Retail_Resource.robot

#HK Toyota - Vehicle Listing - Layout

*** Test Cases ***
Test Setup  Run Keywords   Open Chrome Browser
Screen Shot DIR  Run Keywords    Retail Screen Shot DIR

TC-000 - Verify Login Page
    [Tags]    TC001    Login Page
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    User should be able to click Translate to English Button
#    run keyword and continue on failure    Verify Login Page
    run keyword and continue on failure    Verify Login Page Elements HK

TC-014 - Input Valid Username
    [Tags]    Login Page
    run keyword and continue on failure    Input Valid Username

TC-015 - Input Valid Password
    [Tags]    Login Page
    run keyword and continue on failure    Input Valid Password

TC-016 - User should be able to click Login Button
    [Tags]    Login Page
    run keyword and continue on failure    User should be able to click Login Button
    run keyword and continue on failure    TC Sleep

TC-017 - User should be able to view home page
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to view home page

TC-060 - User should be able to view account orders page
    [Tags]    Order Page
    run keyword and continue on failure    User should be able to access Account page using double header in Retail Home page
    run keyword and continue on failure    User should be able to view account orders page HK

TC-083 - User should be able to view account vehicle listing page
    [Tags]    Vehicle Listing Page
    run keyword and continue on failure    User should be able to access Account page using double header in Retail Home page
    run keyword and continue on failure    User should be able to view account vehicle listing page
    run keyword and continue on failure    User should be able to view HK vehicle listing Panel

TC-083 - User should be able to add new vehicle in Retail Account Vehicle Listing Page
    [Tags]    Vehicle Listing Page
    run keyword and continue on failure    User should be able to click add new vehicle in Retail Account Vehicle Listing Page
    run keyword and continue on failure    User should be able to view add vehicle in HK Retail Select Vehicle
    run keyword and continue on failure    User should be able to click add new vehicle in HK Retail Select Vehicle
    run keyword and continue on failure    User should be able to view add vehicle in HK Retail Select Vehicle
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    User should be able to click model on manual search in Retail Select Vehicle
    run keyword and continue on failure    User should be able to select model on manual search in Retail Select Vehicle
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    User should be able to click year on manual search in Retail Select Vehicle
    run keyword and continue on failure    User should be able to select year on manual search in Retail Select Vehicle
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    User should be able to click series on manual search in Retail Select Vehicle
    run keyword and continue on failure    User should be able to select series on manual search in Retail Select Vehicle
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    User should be able to click Model ID on manual search in HK Retail Select Vehicle
    run keyword and continue on failure    User should be able to select Model ID on manual search in HK Retail Select Vehicle
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    User shoud be albe to click search this vehicle on manual seearh in Retail Select Vehicle
    run keyword and continue on failure    User should be able to click Save and Shop in EPC Search Result Drop Down in HK Retail Vehicle Listing Page
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    reload page
    run keyword and continue on failure    TC Sleep

TC-009 - User should be able to click shop this vehicle in Retail Account Vehicle Listing Page
    [Tags]    Vehicle Listing Page
    run keyword and continue on failure    User should be able to access Account page using double header in Retail Home page
    run keyword and continue on failure    User should be able to view account vehicle listing page
    run keyword and continue on failure    User should be able to click shop this vehicle in HK Retail Account Vehicle Listing Page
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    reload page
    run keyword and continue on failure    TC Sleep

TC-010 - User should be able to click delete in Retail Account Vehicle Listing Page
    [Tags]    Vehicle Listing Page
    run keyword and continue on failure    User should be able to access Account page using double header in Retail Home page
    run keyword and continue on failure    User should be able to view account vehicle listing page
    run keyword and continue on failure    User should be able to click delete in HK Retail Account Vehicle Listing Page
    run keyword and continue on failure    User should be able to click no on confirm deletion in Retail Account Vehicle Listing Page
    run keyword and continue on failure    User should be able to click delete in HK Retail Account Vehicle Listing Page
    run keyword and continue on failure    User should be able to click yes on confirm deletion in Retail Account Vehicle Listing Page