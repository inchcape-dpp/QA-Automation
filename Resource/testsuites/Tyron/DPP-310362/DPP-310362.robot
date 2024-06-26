*** Settings ***
Documentation    Suite description

Library    SeleniumLibrary
Library    Process
#Library    FakerLibrary


Resource    ../../../../Resource/testdata/Dealer/AU_Config/S2/AU_S2_Config.robot
Resource    ../../../../Resource/testdata/Dealer/Dealer_Variable.robot
Resource    ../../../../Resource/testdata/Dealer/Dealer_Resource.robot

#Seller Portal - Messages - Adding 'Your Reference' to Top Line of Messages


*** Test Cases ***
Test Setup    Run Keywords   Open Chrome Browser
Screen Shot DIR    Run Keywords    Dealer Screen Shot DIR

Login Page - Verify Login Page
    [Tags]    Login Page
    run keyword and continue on failure    Verify Login Page

Login Page - Input Valid Username
    [Tags]    Login Page
    run keyword and continue on failure    Input Valid Username

Login Page - Input Valid Password
    [Tags]    Login Page
    run keyword and continue on failure    Input Valid Password

Login Page - User should be able to click Login Button
    [Tags]    Login Page
    run keyword and continue on failure    User should be able to click Login Button

Home Page - Verify Home Page Elements
    [Tags]    Home Page
    run keyword and continue on failure    Verify Home Page Elements

Messages Page - User should be able to view message page
    [Tags]    Home Page    Messages
    run keyword and continue on failure    User should be able to click Messages from left navigation
    run keyword and continue on failure    User should be able to view message page

Messages Page - User should be able to click and send message on unread General Enquiry in Dealer Message Page
    [Tags]    Home Page    Messages
    run keyword and continue on failure    User should be able to click filter messages in Dealer Messages Page
    run keyword and continue on failure    User should be able to select General Enquiry filter in Dealer Messages Page
    run keyword and continue on failure    User should be able to view unread General Enquiry in Dealer Message Page
    run keyword and continue on failure    User should be able to click unread General Enquiry in Dealer Message Page
    run keyword and continue on failure    User should be able to Input Text on Message in Dealer Messages Details Page
    run keyword and continue on failure    User should be able to click cancel in Dealer Messages Details Page
    run keyword and continue on failure    User should be able to Input Text on Message in Dealer Messages Details Page
    run keyword and continue on failure    User should be able to upload image in Dealer Messages Details Page
    run keyword and continue on failure    User should be able to click send in Dealer Messages Details Page
    run keyword and continue on failure    User should be able to click Back to All Message in Dealer Messages Details Page