*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary
Library    Process
#Library  FakerLibrary

Resource  ../../../../../Resource/testdata/Retail/HK_Config/S1/HK_S1_Config.robot
Resource  ../../../../../Resource/testdata/Retail/Retail_Variable.robot
Resource  ../../../../../Resource/testdata/Retail/Retail_Resource.robot

*** Test Cases ***
Test Setup  Run Keywords   Open Chrome Browser
Screen Shot DIR  Run Keywords    Retail Screent Shot DIR

TC-001 - Verify Login Page
    [Tags]    TC001    Login Page
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    User should be able to click Translate to English Button
    run keyword and continue on failure    Verify Login Page

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

TC-005 - User should be able to view All Parts Page
    [Tags]    All Products Page
    run keyword and continue on failure    User should be able to view All Parts Page

TC-006 - User should be able to add car in HK Retail Products Page
    [Tags]    All Products Page
    run keyword and continue on failure    User should be able to click add car in Retail Products Page
    run keyword and continue on failure    User should be able to view add vehicle in HK Retail Select Vehicle
    run keyword and continue on failure    User should be able to click model on manual search in Retail Select Vehicle
    run keyword and continue on failure    User should be able to select model on manual search in Retail Select Vehicle
    run keyword and continue on failure    User should be able to click year on manual search in Retail Select Vehicle
    run keyword and continue on failure    User should be able to select year on manual search in Retail Select Vehicle
    run keyword and continue on failure    User should be able to click series on manual search in Retail Select Vehicle
    run keyword and continue on failure    User should be able to select series on manual search in Retail Select Vehicle
    run keyword and continue on failure    User should be able to click Model ID on manual search in HK Retail Select Vehicle
    run keyword and continue on failure    User should be able to select Model ID on manual search in HK Retail Select Vehicle
    run keyword and continue on failure    User shoud be albe to click search this vehicle on manual seearh in Retail Select Vehicle
    run keyword and continue on failure    User should be able to click select this vehicle in Retail Select Vehicle
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    reload page

TC-007 - User should be able to add new vehicle using Manual Search in Retail Account Vehicle Listing Page
    [Tags]    Vehicle Listing Page
    run keyword and continue on failure    User should be able to click Select Your Vehicle
    run keyword and continue on failure    User should be able to view add vehicle in HK Retail Select Vehicle
    run keyword and continue on failure    User should be able to click add new vehicle in HK Retail Select Vehicle
    run keyword and continue on failure    User should be able to view add vehicle in HK Retail Select Vehicle
    run keyword and continue on failure    User should be able to click model on manual search in Retail Select Vehicle
    run keyword and continue on failure    User should be able to select model on manual search in Retail Select Vehicle
    run keyword and continue on failure    User should be able to click year on manual search in Retail Select Vehicle
    run keyword and continue on failure    User should be able to select year on manual search in Retail Select Vehicle
    run keyword and continue on failure    User should be able to click series on manual search in Retail Select Vehicle
    run keyword and continue on failure    User should be able to select series on manual search in Retail Select Vehicle
    run keyword and continue on failure    User should be able to click Model ID on manual search in HK Retail Select Vehicle
    run keyword and continue on failure    User should be able to select Model ID on manual search in HK Retail Select Vehicle
    run keyword and continue on failure    User shoud be albe to click search this vehicle on manual seearh in Retail Select Vehicle
    run keyword and continue on failure    User should be able to click select & save vehicle in Retail Select Vehicle
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    reload page
    run keyword and continue on failure    TC Sleep

TC-008 User should be able to view account vehicle listing page
    [Tags]    Vehicle Listing Page
    run keyword and continue on failure    User should be able to access account from top navigaton
    run keyword and continue on failure    User should be able to view account vehicle listing page
    run keyword and continue on failure    User should be able to view HK vehicle listing Panel

TC-009 - User should be able to click shop this vehicle in Retail Account Vehicle Listing Page
    [Tags]    Vehicle Listing Page
    run keyword and continue on failure    User should be able to click shop this vehicle in HK Retail Account Vehicle Listing Page
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    Browse Back Button

TC-010 - User should be able to click delete in Retail Account Vehicle Listing Page
    [Tags]    Vehicle Listing Page
    run keyword and continue on failure    User should be able to click delete in HK Retail Account Vehicle Listing Page
    run keyword and continue on failure    User should be able to click no on confirm deletion in Retail Account Vehicle Listing Page
    run keyword and continue on failure    User should be able to click delete in HK Retail Account Vehicle Listing Page
    run keyword and continue on failure    User should be able to click yes on confirm deletion in Retail Account Vehicle Listing Page
    run keyword and continue on failure    TC Sleep

TC-011 - User should be albe to View Search Vehicle in HK Retail Home Page
    [Tags]    Vehicle Listing Page
    run keyword and continue on failure    User should be able to Go to Home page
    run keyword and continue on failure    reload page
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    User should be albe to View Search Vehicle in HK Retail Home Page
    run keyword and continue on failure    User should be able to click model on manual search in Retail Select Vehicle
    run keyword and continue on failure    User should be able to select model on manual search in Retail Select Vehicle
    run keyword and continue on failure    User should be able to click year on manual search in Retail Select Vehicle
    run keyword and continue on failure    User should be able to select year on manual search in Retail Select Vehicle
    run keyword and continue on failure    User should be able to click series on manual search in Retail Select Vehicle
    run keyword and continue on failure    User should be able to select series on manual search in Retail Select Vehicle
    run keyword and continue on failure    User shoud be albe to click search this vehicle on manual seearh in Retail Select Vehicle
    run keyword and continue on failure    User should be able to click Model ID on manual search in HK Retail Select Vehicle
    run keyword and continue on failure    User should be able to select Model ID on manual search in HK Retail Select Vehicle
    run keyword and continue on failure    User should be able to click select this vehicle in Retail Select Vehicle
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    reload page

TC-012 - User should be albe to View Search VIN in HK Retail Home Page
    [Tags]    Vehicle Listing Page
    run keyword and continue on failure    User should be able to Go to Home page
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    User should be albe to View Search VIN in HK Retail Home Page
    run keyword and continue on failure    User should be albe to Input Search VIN in HK Retail Home Page
    run keyword and continue on failure    User should be albe to Click Search VIN in HK Retail Home Page
    run keyword and continue on failure    User should be able to click select this vehicle in Retail Select Vehicle
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    reload page

TC-013 - User should be albe to purchase using VIN in HK Retail Home Page
    [Tags]    Vehicle Listing Page
    run keyword and continue on failure    User should be able to Go to Home page
    run keyword and continue on failure    User should be able to view All products
    run keyword and continue on failure    User should be able to Filter Products by Stocks

TC-014 - User should be able to add to cart random item in Retail Product Page
    [Tags]    All Products Page
    run keyword and continue on failure    User should be able to add to cart random item in Retail Product Page
    run keyword and continue on failure    User should be able to add to cart random item in Retail Product Page

TC-015 - User should be able to view shopping cart pop up modal
    [Tags]    Shopping Cart Page
    run keyword and continue on failure    User should be able to view shopping cart pop up modal
    run keyword and continue on failure    User should be able to click view cart button from shopping cart pop up modal

TC-016 - User should be able to view shopping cart in Retail Shopping Cart Page
    [Tags]    Shopping Cart Page
    run keyword and continue on failure    User should be able to view shopping cart in HK Retail Shopping Cart Page

TC-017 - User should be able to click checkout button in Retail Shopping Cart Page
    [Tags]    Shopping Cart Page
    run keyword and continue on failure    User should be able to click checkout button in Retail Shopping Cart Page
    run keyword and continue on failure    TC Sleep

TC-018 - User should be able to view checkout in Retail Checkout Page
    [Tags]    Checkout Page
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    User should be able to view checkout in HK Retail Checkout Page

TC-019 - User should be able to view payment method in HK Retail Checkout Page
    [Tags]    Checkout Page
    run keyword and continue on failure    User should be able to view payment method in HK Retail Checkout Page
    run keyword and continue on failure    Select Credit Card Frame

TC-020 - User should be able to input card details
    [Tags]    Checkout Page
    run keyword and continue on failure    User should be able to input jcb card number
    run keyword and continue on failure    User should be albe to input Exp Date
    run keyword and continue on failure    User should be albe to input CVV
    run keyword and continue on failure    User should be albe to input Card Holders Name
    run keyword and continue on failure    User should be albe to input Email

TC-021 - User should be able to click continue payment
    [Tags]    Checkout Page
    run keyword and continue on failure    User should be able to click continue payment button
    run keyword and continue on failure    User should be able to view 2C2P Modal

TC-022 - User should be able to input otp
    [Tags]    Checkout Page
    run keyword and continue on failure    User should be able to Input OTP

TC-023 - User should be able to click Submit button on 2C2P
    [Tags]    Checkout Page
    run keyword and continue on failure    User should be able to click Submit button on 2C2P
    run keyword and continue on failure    TC Sleep

TC-024 - User should be able to view place order in HK Retail Place Order Page
    [Tags]    Checkout Page
    run keyword and continue on failure    Unselect Credit Card Frame
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    User should be able to view place order in HK Retail Place Order Page
    run keyword and continue on failure    User should be able to click back to home button in Retail Place Order Page




























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