*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary
Library    Process
#Library  FakerLibrary

Resource  ../../../../../Resource/testdata/Retail/HK_Config/S1/HK_S1_Gold_Config.robot
Resource  ../../../../../Resource/testdata/Retail/Retail_Variable.robot
Resource  ../../../../../Resource/testdata/Retail/Retail_Resource.robot

*** Test Cases ***
Test Setup  Run Keywords   Open Chrome Browser
Screen Shot DIR  Run Keywords    Retail Screent Shot DIR

TC-001 - Verify Login Page
    [Tags]    TC001    Login Page
    run keyword and continue on failure    Verify Login Page
    run keyword and continue on failure    Verify Login Page Elements

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

TC-005 - User should be able to view All Products Page in HK Retail Home Page
    [Tags]    All Products Page
    run keyword and continue on failure    User should be able to view All Products Page in HK Retail Home Page
    run keyword and continue on failure    User should be able to Filter Products by Stocks

TC-006 - User should be able to add to cart random item in Retail Product Page
    [Tags]    All Products Page
    run keyword and continue on failure    User should be able to add to cart random item in Retail Product Page

TC-007 - User should be able to checkout cart items
    [Tags]    Checkout Page
    run keyword and continue on failure    User should be able to view shopping cart pop up modal
    run keyword and continue on failure    User should be able to click view cart button from shopping cart pop up modal
    run keyword and continue on failure    User should be able to view shopping cart in HK Retail Shopping Cart Page
    run keyword and continue on failure    User should be able to click checkout button in Retail Shopping Cart Page
    run keyword and continue on failure    User should be able to view checkout in HK Retail Checkout Page

TC-008 - User should be able to view payment method in HK Retail Checkout Page
    [Tags]    Checkout Page
    run keyword and continue on failure    User should be able to view payment method in HK Retail Checkout Page

TC-009 - User should be albe to select COD Payment
    [Tags]    Checkout Page
    run keyword and continue on failure    User should be albe to select COD Payment

TC-010 - User should be able to click place order button in Retail Checkout Page
    [Tags]    Checkout Page
    Reload Page
    run keyword and continue on failure    User should be able to click place order button in HK Retail Checkout Page

TC-011 - User should be able to view place order in HK Retail Place Order Page
    [Tags]    Checkout Page
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    User should be able to view place order in HK Retail Place Order Page
    run keyword and continue on failure    User should be able to click back to home button in Retail Place Order Page

TC-012 - User should be able to filter product
    [Tags]    All Products Page
    run keyword and continue on failure    User should be able to view All Products Page in HK Retail Home Page
    run keyword and continue on failure    User should be able to Filter Products by Stocks

TC-013 - User should be able to add to cart random item in Retail Product Page
    [Tags]    All Products Page
    run keyword and continue on failure    User should be able to add to cart random item in Retail Product Page

TC-014 - User should be able to checkout cart items
    [Tags]    Checkout Page
    run keyword and continue on failure    User should be able to view shopping cart pop up modal
    run keyword and continue on failure    User should be able to click view cart button from shopping cart pop up modal
    run keyword and continue on failure    User should be able to view shopping cart in HK Retail Shopping Cart Page
    run keyword and continue on failure    User should be able to click checkout button in Retail Shopping Cart Page
    run keyword and continue on failure    User should be able to view checkout in HK Retail Checkout Page

TC-015 - User should be able to view payment method in HK Retail Checkout Page
    [Tags]    Checkout Page
    run keyword and continue on failure    User should be able to view payment method in HK Retail Checkout Page

TC-016 - User should be albe to select Credit Cart Payment
    [Tags]    Checkout Page
    run keyword and continue on failure    User should be albe to select Credit Cart Payment
    run keyword and continue on failure    Select Credit Card Frame

TC-017 - User should be able to input card details
    [Tags]    Checkout Page
    run keyword and continue on failure    User should be able to input jcb card number
    run keyword and continue on failure    User should be albe to input Exp Date
    run keyword and continue on failure    User should be albe to input CVV
    run keyword and continue on failure    User should be albe to input Card Holders Name
    run keyword and continue on failure    User should be albe to input Email

TC-018 - User should be able to click continue payment
    [Tags]    Checkout Page
    run keyword and continue on failure    User should be able to click continue payment button
    run keyword and continue on failure    User should be able to view 2C2P Modal

TC-019 - User should be able to input otp
    [Tags]    Checkout Page
    run keyword and continue on failure    User should be able to Input OTP

TC-020 - User should be able to click Submit button on 2C2P
    [Tags]    Checkout Page
    run keyword and continue on failure    User should be able to click Submit button on 2C2P

TC-021 - User should be able to view place order in HK Retail Place Order Page
    [Tags]    Checkout Page
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    Unselect Credit Card Frame
    run keyword and continue on failure    User should be able to view place order in HK Retail Place Order Page
    run keyword and continue on failure    User should be able to click back to home button in Retail Place Order Page

























