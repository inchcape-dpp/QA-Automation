*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary
Library    Process
#Library  FakerLibrary

Resource  ../../../Resource/testdata/config.robot
Resource  ../../../Resource/testdata/Retail/Retail_Variable.robot
Resource  ../../../Resource/testdata/Retail/Retail_Resource.robot

*** Test Cases ***
Test Setup  Run Keywords   Open Chrome Browser
Screen Shot DIR  Run Keywords    Retail Screent Shot DIR

TC-001 - Verify Login Page
    [Tags]    TC001    Login Page
    run keyword and continue on failure    Verify Login Page

TC-002 - Email
    [Tags]    TC001    Login Page
    run keyword and continue on failure    New browser tab
    run keyword and continue on failure    Enter Yop Mail
    run keyword and continue on failure    Switch to Inbox List Frame
    run keyword and continue on failure    Click Inbox Messages
    run keyword and continue on failure    Unselect Mail Frame
    run keyword and continue on failure    Switch to Inbox Message Frame
    run keyword and continue on failure    Read Message

#TC-002 - Input Valid Username
#    [Tags]    Login Page
#    run keyword and continue on failure    Input Valid Username



#TC-003 - Input Valid Password
#    [Tags]    Login Page
#    run keyword and continue on failure    Input Valid Password
#
#TC-004 - User should be able to click Login Button
#    [Tags]    Login Page
#    run keyword and continue on failure    User should be able to click Login Button
#    run keyword and continue on failure    TC Sleep
#
#TC-005 - User should be able to filter product
#    [Tags]    All Products Page
#    run keyword and continue on failure    User should be able to view shopping cart pop up modal
#    run keyword and continue on failure    User should be albe to delete all items from shopping cart pop up modal
#    run keyword and continue on failure    User should be able to view All Products Page in HK Retail Home Page
#    run keyword and continue on failure    User should be able to Filter Products by Stocks
#
#TC-006 - User should be able to add to cart random item in Retail Product Page
#    [Tags]    All Products Page
#    run keyword and continue on failure    User should be able to add to cart random item in Retail Product Page
#    run keyword and continue on failure    User should be able to add to cart random item in Retail Product Page
#
#TC-007 - User should be able to view shopping cart pop up modal
#    [Tags]    Shopping Cart Page
#    run keyword and continue on failure    User should be able to view shopping cart pop up modal
#    run keyword and continue on failure    User should be able to click view cart button from shopping cart pop up modal
#
#TC-007 - User should be able to view shopping cart in Retail Shopping Cart Page
#    [Tags]    Shopping Cart Page
#    run keyword and continue on failure    User should be able to view shopping cart in HK Retail Shopping Cart Page
#
#TC-009 - User should be able to click checkout button in Retail Shopping Cart Page
#    [Tags]    Shopping Cart Page
#    run keyword and continue on failure    User should be able to click checkout button in Retail Shopping Cart Page
#    run keyword and continue on failure    TC Sleep
#
#TC-010 - User should be able to view checkout in Retail Checkout Page
#    [Tags]    Checkout Page
#    run keyword and continue on failure    TC Sleep
#    run keyword and continue on failure    User should be able to view checkout in HK Retail Checkout Page
#
#TC-011 - User should be able to view checkout in Retail Checkout Page
#    [Tags]    Checkout Page
#    run keyword and continue on failure    User should be able to view Shipping Details in HK Retail Checkout Page
#
#TC-012 - User should be albe to Manage Instruction in HK Retail Checkout Page
#    [Tags]    Checkout Page
#    run keyword and continue on failure    User should be albe to Manage Instruction in HK Retail Checkout Page
#    run keyword and continue on failure    User should be albe to click Cancel Instruction in HK Retail Checkout Page
#    run keyword and continue on failure    User should be albe to Manage Instruction in HK Retail Checkout Page
#    run keyword and continue on failure    User should be albe to Add Instuction text in HK Retail Checkout Page
#    run keyword and continue on failure    User should be albe to click Save Instruction in HK Retail Checkout Page
#
#TC-013 - User should be albe to click Edit Instruction in HK Retail Checkout Page
#    [Tags]    Checkout Page
#    run keyword and continue on failure    User should be albe to click Edit Instruction in HK Retail Checkout Page
#    run keyword and continue on failure    User should be albe to Add Instuction text in HK Retail Checkout Page
#    run keyword and continue on failure    User should be albe to click Save Instruction in HK Retail Checkout Page
#
#TC-014 - User should be albe to click Delete Instruction in HK Retail Checkout Page
#    [Tags]    Checkout Page
#    run keyword and continue on failure    User should be albe to click Delete Instruction in HK Retail Checkout Page
#    run keyword and continue on failure    User should be able to click No on Delete Instruction Pop Up in HK Retail Checkout Page
#
#TC-015 - User should be albe to click Change Address in HK Retail Checkout Page
#    [Tags]    Checkout Page
#    run keyword and continue on failure    User should be albe to click Change Address in HK Retail Checkout Page
#    run keyword and continue on failure    User should be able to view Change Shipping Address Modal in HK Retail Checkout Page
#
#TC-016 - User should be able to edit shipping address on change shipping in HK Retail Checkout Page
#    [Tags]    Checkout Page
#    run keyword and continue on failure    User should be able to change Mobile Number on change shipping in HK Retail Checkout Page
#    run keyword and continue on failure    User should be able to change Landline Number on change shipping in HK Retail Checkout Page
#    run keyword and continue on failure    User should be able to edit shipping address on change shipping in HK Retail Checkout Page
#    run keyword and continue on failure    User should be able to select Random Address from suggestions in HK Retail Checkout Page
#    run keyword and continue on failure    User should be able to click Area Dropdown on change shipping in HK Retail Checkout Page
#    run keyword and continue on failure    User should be able to select Random Area on change shipping in HK Retail Checkout Page
#    run keyword and continue on failure    User should be able to click District Dropdown on change shipping in HK Retail Checkout Page
#    run keyword and continue on failure    User should be able to select Random District on change shipping in HK Retail Checkout Page
#    run keyword and continue on failure    User should be able to click Save Button on change shipping in HK Retail Checkout Page













#TC-000000 - TC Sleep
#    [Tags]    TC-000000   TC Sleep
#    run keyword and continue on failure    TC Sleep

#TC-000000 - Browse Back Button
#    [Tags]    TC-000000   Browser Back
#    run keyword and continue on failure    Browse Back Button


#TC-000000 - User should be able to logout
#    [Tags]    TC009    Logout
#    run keyword and continue on failure    User should be able to logout
#
#Test Teardown
#    Run Keywords  Close Browser
#    run keyword    Save Log DIR