*** Settings ***
Documentation    Suite description

Library    SeleniumLibrary
Library    Process
#Library    FakerLibrary


Resource  ../../../../../Resource/testdata/Dealer/HK_Config/S2/HK_S2_Config.robot
Resource  ../../../../../Resource/testdata/Dealer/Dealer_Variable.robot
Resource  ../../../../../Resource/testdata/Dealer/Dealer_Resource.robot


*** Test Cases ***
Test Setup  Run Keywords   Open Chrome Browser HK
Screen Shot DIR  Run Keywords    Dealer Screent Shot DIR HK

TC Sleep
    [Tags]    Sleep    TC Sleep
    run keyword and continue on failure    TC Sleep

TC-001 - Verify Login Page
    [Tags]    Login Page
    run keyword and continue on failure    User should be able to click Translate to English Button
    run keyword and continue on failure    Verify Login Page

TC-002 - Verify Login Page Elements
    [Tags]    Login Page
    run keyword and continue on failure    Verify Login Page Elements

TC-003 - Input Invalid Username
    [Tags]    Login Page
    run keyword and continue on failure    Input Invalid Username

TC-004 - Input Invalid Password
    [Tags]    Login Page
    run keyword and continue on failure    Input Invalid Password


TC-005 - Login Invalid Email and Pass
    [Tags]    Login Page
    run keyword and continue on failure    Login Invalid Email and Pass

TC-006 - User should be able to check/uncheck Remember me
    [Tags]    Login Page
    run keyword and continue on failure    User should be able to check/uncheck Remember me

TC-007 - User should be able to Click Forgot Password
    [Tags]    Login Page    Forgot Password
    run keyword and continue on failure    User should be able to Click Forgot Password

TC-008 - User should be able to view Reset Password Page
    [Tags]    Login Page    Forgot Password
    run keyword and continue on failure    User should be able to view Reset Password Page

TC-009 - User should be able to view email error messsage in Dealer Reset Password Page
    [Tags]    Login Page    Forgot Password
    run keyword and continue on failure    User should be able to view email error messsage in Dealer Reset Password Page

TC-010 - User should be able input valid email in Dealer Reset Password Page
    [Tags]    Login Page    Forgot Password
    run keyword and continue on failure    User should be able input valid email in Dealer Reset Password Page

TC-011 - User should be able to click submit button in Dealer Reset Password Page
    [Tags]    Login Page    Forgot Password
    run keyword and continue on failure    User should be able to click submit button in Dealer Reset Password Page
    run keyword and continue on failure    Browse Back Button


TC-001 - Input Valid Email
    [Tags]    TC006    Valid Account

    run keyword and continue on failure    Input Valid Username

TC-002 - Input Valid Password
    [Tags]    TC007    Valid Account
    run keyword and continue on failure    Input Valid Password

TC-003 - User should be able to click Login Button
    [Tags]    TC008    Login Button
    run keyword and continue on failure    User should be able to click Login Button
    run keyword and continue on failure    TC Sleep

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




#


































































