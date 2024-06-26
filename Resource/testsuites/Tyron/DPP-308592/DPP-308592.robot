*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary
Library    Process
#Library  FakerLibrary

Resource    ../../../../Resource/testdata/Retail/HK_Config/S2/HK_S2_Bronze_Config.robot
Resource    ../../../../Resource/testdata/Retail/Retail_Variable.robot
Resource    ../../../../Resource/testdata/Retail/Retail_Resource.robot

*** Test Cases ***
Test Setup  Run Keywords   Open Chrome Browser
Screen Shot DIR  Run Keywords    Retail Screen Shot DIR

#HK Toyota - Messaging - What's App Integration

TC-000 - Verify Login Page
    [Tags]    TC001    Login Page
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    User should be able to click Translate to English Button
#    run keyword and continue on failure    Verify Login Page
    run keyword and continue on failure    Verify Login Page Elements HK

TC-001- Verify - Clickable Footers
    [Tags]    Login Page
    run keyword and continue on failure    User should verify clickable Privacy Policy on footer
    run keyword and continue on failure    browse back button
    run keyword and continue on failure    User should verify clickable Terms & Conditions on footer
    run keyword and continue on failure    browse back button
    run keyword and continue on failure    User should verify clickable Shipping Policy on footer
    run keyword and continue on failure    browse back button
    run keyword and continue on failure    User should verify clickable About Us on footer
    run keyword and continue on failure    browse back button
    run keyword and continue on failure    User should verify clickable Contact Us on footer
    run keyword and continue on failure    browse back button