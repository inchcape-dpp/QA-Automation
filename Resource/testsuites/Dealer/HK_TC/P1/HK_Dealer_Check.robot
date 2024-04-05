*** Settings ***
Documentation    Suite description

Library    SeleniumLibrary
Library    Process
#Library    FakerLibrary


Resource  ../../../../../Resource/testdata/Dealer/HK_Config/P1/HK_P1_Config.robot
Resource  ../../../../../Resource/testdata/Dealer/Dealer_Variable.robot
Resource  ../../../../../Resource/testdata/Dealer/Dealer_Resource.robot


*** Test Cases ***
Test Setup  Run Keywords   Open Chrome Browser
Screen Shot DIR  Run Keywords    Dealer Screent Shot DIR

TC Sleep
    [Tags]    Sleep    TC Sleep
    run keyword and continue on failure    TC Sleep P1

TC-001 - Input Valid Email
    [Tags]    TC006    Valid Account
    run keyword and continue on failure    User should be able to click Translate to English Button
    run keyword and continue on failure    Input Valid Username


TC-002 - Input Valid Password
    [Tags]    TC007    Valid Account
    run keyword and continue on failure    Input Valid Password

TC-003 - User should be able to click Login Button
    [Tags]    TC008    Login Button
    run keyword and continue on failure    User should be able to click Login Button
    run keyword and continue on failure    TC Sleep P1

TC-004 - User should be able to view top navigation
    [Tags]    TC014    Top Navigation
    run keyword and continue on failure    User should be able to view top navigation in HK Dealer Home Page

TC-005 - User should be able to click account from top navigation
    [Tags]    TC015    Top Navigation
    run keyword and continue on failure    User should be able to click account from top navigation

TC-006 - User should be able to click orders from top navigation
    [Tags]    TC016    Top Navigation
    run keyword and continue on failure    User should be able to click orders from top navigation

TC-007 - User should be able to click return from top navigation
    [Tags]    TC017    Top Navigation
    run keyword and continue on failure    User should be able to click return from top navigation

TC-009 - User should be able to click messages from top navigation
    [Tags]    TC019    Top Navigation
    run keyword and continue on failure    User should be able to click messages from top navigation

TC-010 - User should be able to click orders from left navigation
    [Tags]    TC020    Left Navigation
    run keyword and continue on failure    User should be able to click orders from left navigation

TC-011 - User should be able to view Cutomer Orders Panel
    [Tags]    TC033    Order Page
    run keyword and continue on failure    User should be able to view Cutomer Orders Panel

TC-012 - User should be able to select one order from the list
    [Tags]    TC034    Order Page
    run keyword and continue on failure    User should be able to select one order from the list

TC-013 - User should be able to view order details
    [Tags]    TC035    Order Page
    run keyword and continue on failure    User should be able to view order details in HK Order Details Page
    run keyword and continue on failure    TC Move to Top

TC-014 - User should be able to click Return from left navigation
    [Tags]    TC021    Left Navigation
    run keyword and continue on failure    User should be able to click Return from left navigation

TC-015 - User should be able to select one return from the list
    [Tags]    TC037    Return Page
    run keyword and continue on failure    User should be able to select one return from the list

TC-016 - User should be able to view Return details
    [Tags]    TC038    Return Page
    run keyword and continue on failure    User should be able to view Return details in HK Return Details Page
    run keyword and continue on failure    TC Move to Top

TC-022 - User should be able to click and expand Customer Management
    [Tags]    TC022    Left Navigation
    run keyword and continue on failure    User should be able to click and expand Customer Management

TC-023 - User should be able to click Customer Manegement - Buyer Rel from left navigation
    [Tags]    TC024    Left Navigation
    run keyword and continue on failure    User should be able to click Customer Manegement - Buyer Rel from left navigation

TC-024 - User should be able to view Buyer Rel Page
    [Tags]    TC043    New RegReq Page
    run keyword and continue on failure    User should be able to view Buyer Rel Page
    run keyword and continue on failure    TC Move to Top

TC-025 - User should be able to click Messages from left navigation
    [Tags]    TC025    Left Navigation
    run keyword and continue on failure    User should be able to click Messages from left navigation

TC-026 - User should be able to view message page
    [Tags]    TC044    Message Page
    run keyword and continue on failure    User should be able to view message page
    run keyword and continue on failure    TC Move to Top

TC-027 - User should be able to click and expand Profile
    [Tags]    TC026    Left Navigation
    run keyword and continue on failure    User should be able to click and expand Profile

TC-028 - User should be able to click Profile - Account Details from left navigation
    [Tags]    TC027    Left Navigation
    run keyword and continue on failure    User should be able to click Profile - Account Details from left navigation

TC-029 - User should be able to view account details page
    [Tags]    TC045    Profile
    run keyword and continue on failure    User should be able to view account details page

TC-030 - User should be able to click Profile - Change Pass from left navigation
    [Tags]    TC028    Left Navigation
    run keyword and continue on failure    User should be able to click Profile - Change Pass from left navigation

TC-031 - User should be able to view change password page
    [Tags]    TC046    Profile
    run keyword and continue on failure    User should be able to view change password page

TC-032 - User should be able to click and expand Company
    [Tags]    TC029    Left Navigation
    run keyword and continue on failure    User should be able to click and expand Company

TC-033 - User should be able to click Company - Company Details from left navigation
    [Tags]    TC030    Left Navigation
    run keyword and continue on failure    User should be able to click Company - Company Details from left navigation

TC-034 - User should be able to view company details page
    [Tags]    TC047    Company Details
    run keyword and continue on failure    User should be able to check/uncheck Del Add Same As Postal Add Checkbox in Dealer Company Details Page
    run keyword and continue on failure    User should be able to view company details in HK Company Details Page
    run keyword and continue on failure    TC Move to Top
















































