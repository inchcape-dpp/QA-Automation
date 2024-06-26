*** Settings ***
Documentation    Suite description

Library    SeleniumLibrary
Library    Process
Library    String


Resource  ../../../../Resource/testdata/Retail/AU_Config/S2/AU_S2_Config.robot
Resource  ../../../../Resource/testdata/Retail/Retail_Variable.robot
Resource  ../../../../Resource/testdata/Retail/Retail_Resource.robot

#Buyer Admin & Buyer User - PDP - Display Associated Items for Service Kits


*** Test Cases ***
Test Setup  Run Keywords   Open Chrome Browser
Screen Shot DIR  Run Keywords    Retail Screen Shot DIR

Login Page - Verify Login Page
    [Tags]    Login Page
    run keyword and continue on failure    Verify Login Page
    run keyword and continue on failure    Verify Login Page Elements

Login Page - Input Valid Username
    [Tags]    Login Page
    run keyword and continue on failure    Input Valid Username

Login Page - Input Valid Password
    [Tags]    Login Page
    run keyword and continue on failure    Input Valid Password

Login Page - User should be able to click Login Button
    [Tags]    Login Page
    run keyword and continue on failure    User should be able to click Login Button
    run keyword and continue on failure    TC Sleep

Home Page - Verify - Clickable Footers homepage
    [Tags]    Home Page
    run keyword and continue on failure    User should verify homepage clickable Privacy Policy on footer
    run keyword and continue on failure    browse back button
    run keyword and continue on failure    User should verify homepage clickable Terms & Conditions on footer
    run keyword and continue on failure    browse back button

Home Page - User should be able to input text on search bar
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to input text on search bar

Home Page - User should be able to click searched text
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to click searched text
    run keyword and continue on failure    User should be able to Go to Home page
