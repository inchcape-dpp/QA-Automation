*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary
Library    Process
#Library  FakerLibrary

Resource  ../../../../../Resource/testdata/Retail/SG_Config/S2/SG_S2_GameChanger_Config.robot
Resource  ../../../../../Resource/testdata/Retail/Retail_Variable.robot
Resource  ../../../../../Resource/testdata/Retail/Retail_Resource.robot

*** Test Cases ***
Test Setup  Run Keywords   Open Chrome Browser
Screen Shot DIR  Run Keywords    Retail Screen Shot DIR

TC-001 - Verify Login Page
    [Tags]    TC001    Login Page
    run keyword and continue on failure    Verify Login Page

TC-002- Verify - Clickable Footers
    [Tags]    TC001    Login Page
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
#
#TC-004 - User should be able to compare RRP Values in Retail Checkout Page
#    [Tags]    Login Page
#    run keyword and continue on failure    TC Sleep
#    run keyword and continue on failure    User should be able to view shopping cart pop up modal
#    run keyword and continue on failure    User should be albe to delete all items from shopping cart pop up modal
#    run keyword and continue on failure    User should be able to view All products
#    run keyword and continue on failure    User shold be able to get RRP value of random item with add to cart button in Retail Product Page
#    run keyword and continue on failure    User should be able to view shopping cart pop up modal
#    run keyword and continue on failure    User should be able to click view cart button from shopping cart pop up modal
#    run keyword and continue on failure    User should be able to get RRP Value in Retail Shopping Cart Page
#    run keyword and continue on failure    User should be able to click checkout button in Retail Shopping Cart Page
#    run keyword and continue on failure    TC Sleep
#    run keyword and continue on failure    User should be able to get RRP Values in Retail Checkout Page
#    run keyword and continue on failure    User should be able to compare RRP Values in Retail Checkout Page










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