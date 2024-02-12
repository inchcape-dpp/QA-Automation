*** Settings ***
Documentation    Suite description

Library    SeleniumLibrary
Library    Process
Library    String


Resource  ../../../../../Resource/testdata/Retail/AU_Config/S1_Config.robot
Resource  ../../../../../Resource/testdata/Retail/Retail_Variable.robot
Resource  ../../../../../Resource/testdata/Retail/Retail_Resource.robot


*** Test Cases ***
Test Setup  Run Keywords   Open Chrome Browser
Screen Shot DIR  Run Keywords    Retail Screent Shot DIR

TC-001 - Verify Login Page
    [Tags]    Login Page
    run keyword and continue on failure    Verify Login Page
    run keyword and continue on failure    Verify Login Page Elements

TC-018 - Input Valid Username
    [Tags]    Login Page
    run keyword and continue on failure    Input Valid Username

TC-019 - Input Valid Password
    [Tags]    Login Page
    run keyword and continue on failure    Input Valid Password

TC-020 - User should be able to click Login Button
    [Tags]    Login Page
    run keyword and continue on failure    User should be able to click Login Button
    run keyword and continue on failure    TC Sleep

TC-107 - User should be able to add new vehicle using Manual Search in Retail Account Vehicle Listing Page
    [Tags]    Vehicle Listing Page
    run keyword and continue on failure    User should be able to click Select Your Vehicle
    run keyword and continue on failure    User should be able to view add vehicle in Retail Select Vehicle
    run keyword and continue on failure    User should be able to click add new vehicle in Retail Select Vehicle
    run keyword and continue on failure    User should be able to view add vehicle in Retail Select Vehicle
    run keyword and continue on failure    User should be able to click search by make and model button in Retail Select Vehicle
    run keyword and continue on failure    User should be able to click model on manual search in Retail Select Vehicle
    run keyword and continue on failure    User should be able to select model on manual search in Retail Select Vehicle
    run keyword and continue on failure    User should be able to click year on manual search in Retail Select Vehicle
    run keyword and continue on failure    User should be able to select year on manual search in Retail Select Vehicle
    run keyword and continue on failure    User should be able to click series on manual search in Retail Select Vehicle
    run keyword and continue on failure    User should be able to select series on manual search in Retail Select Vehicle
    run keyword and continue on failure    User should be able to click engine on manual search in Retail Select Vehicle
    run keyword and continue on failure    User should be able to select engine on manual search in Retail Select Vehicle
    run keyword and continue on failure    User should be able to click details on manual search in Retail Select Vehicle
    run keyword and continue on failure    User should be able to select details on manual search in Retail Select Vehicle
    run keyword and continue on failure    User shoud be albe to click search this vehicle on manual seearh in Retail Select Vehicle
    run keyword and continue on failure    User should be able to click select this vehicle in Retail Select Vehicle
    run keyword and continue on failure    TC Sleep

TC-056 - User should be able to view All Parts Page
    [Tags]    All Products Page
    run keyword and continue on failure    User should be able to view All Parts Page

TC-058 - User should be able to filter product
    [Tags]    All Products Page
    run keyword and continue on failure    User should be able to filter product name from A to Z
    run keyword and continue on failure    User should be able to fitler results per page to 100

TC-067 - User should be able to click add to cart button for in stock only in Retail Product Page
    [Tags]    All Products Page
    run keyword and continue on failure    User should be able to click add to cart button for in stock only in Retail Product Page
    run keyword and continue on failure    Return to first page
    run keyword and continue on failure    User should be able to click add to cart button for in stock only in Retail Product Page
    run keyword and continue on failure    Return to first page

TC-069 - User should be able to view shopping cart pop up modal
    [Tags]    Shopping Cart Page
    run keyword and continue on failure    User should be able to view shopping cart pop up modal
    run keyword and continue on failure    User should be able to click view cart button from shopping cart pop up modal

TC-070 - User should be able to view shopping cart in Retail Shopping Cart Page
    [Tags]    Shopping Cart Page
    run keyword and continue on failure    User should be able to view shopping cart in Retail Shopping Cart Page

TC-075 - User should be able to click checkout button in Retail Shopping Cart Page
    [Tags]    Shopping Cart Page
    run keyword and continue on failure    User should be able to click checkout button in Retail Shopping Cart Page
    run keyword and continue on failure    TC Sleep

TC-076 - User should be able to view checkout in Retail Checkout Page
    [Tags]    Checkout Page
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    User should be able to view checkout in Retail Checkout Page

TC-077 - User should be able to edit po number in Retail Checkout Page
    [Tags]    Checkout Page
    run keyword and continue on failure    User should be able to edit invalid po number in Retail Checkout Page
    run keyword and continue on failure    User should be able to edit valid po number in Retail Checkout Page
    run keyword and continue on failure    User should be able to click save po number in Retail Checkout Page
    run keyword and continue on failure    User should be able to click reset po number in Retail Checkout Page

TC-078 - User should be able to place order in Retail Checkout Page
    [Tags]    Checkout Page
    run keyword and continue on failure    User should be able to click place order button in Retail Checkout Page
    run keyword and continue on failure    User should be able to view place order in Retail Place Order Page
    run keyword and continue on failure    User should be able to click back to home button in Retail Place Order Page






