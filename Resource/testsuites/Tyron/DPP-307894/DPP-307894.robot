*** Settings ***
Documentation    Suite description

Library    SeleniumLibrary
Library    Process
#Library    FakerLibrary


Resource  ../../../../Resource/testdata/Dealer/HK_Config/S2/HK_S2_Config.robot
Resource  ../../../../Resource/testdata/Dealer/Dealer_Variable.robot
Resource  ../../../../Resource/testdata/Dealer/Dealer_Resource.robot

#HK Toyota - Supplier - Manual Order Update

*** Test Cases ***
Test Setup  Run Keywords   Open Chrome Browser
Screen Shot DIR  Run Keywords    Dealer Screen Shot DIR

TC Sleep
    [Tags]    Sleep    TC Sleep
    run keyword and continue on failure    TC Sleep

TC-001 - Verify Login Page
    [Tags]    Login Page
    run keyword and continue on failure    User should be able to click Translate to English Button
    run keyword and continue on failure    Verify Login Page

TC-012 - Input Valid Email
    [Tags]    TC006    Valid Account

    run keyword and continue on failure    Input Valid Username

TC-013 - Input Valid Password
    [Tags]    TC007    Valid Account
    run keyword and continue on failure    Input Valid Password

TC-014 - User should be able to click Login Button
    [Tags]    TC008    Login Button
    run keyword and continue on failure    User should be able to click Login Button
    run keyword and continue on failure    TC Sleep

TC-032 - User should be able to view Cutomer Orders Panel
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to click orders from left navigation
    run keyword and continue on failure    User should be able to view Cutomer Orders Panel
    run keyword and continue on failure    TC Move to Top

Order Page - User should be able to change order status
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to change order status

#Add script in changing order status to dispatched


