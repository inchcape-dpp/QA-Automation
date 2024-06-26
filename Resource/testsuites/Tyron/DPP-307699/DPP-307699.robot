*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary
Library    Process
#Library  FakerLibrary

Resource    ../../../../Resource/testdata/Retail/HK_Config/S2/HK_S2_Bronze_Config.robot
Resource    ../../../../Resource/testdata/Retail/Retail_Variable.robot
Resource    ../../../../Resource/testdata/Retail/Retail_Resource.robot

#HK Toyota - Checkout - Change on Shipping Fee Disclaimer

*** Test Cases ***
Test Setup  Run Keywords   Open Chrome Browser
Screen Shot DIR  Run Keywords    Retail Screen Shot DIR

TC-000 - Verify Login Page
    [Tags]    TC001    Login Page
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    User should be able to click Translate to English Button
#    run keyword and continue on failure    Verify Login Page
    run keyword and continue on failure    Verify Login Page Elements HK

TC-014 - Input Valid Username
    [Tags]    Login Page
    run keyword and continue on failure    Input Valid Username

TC-015 - Input Valid Password
    [Tags]    Login Page
    run keyword and continue on failure    Input Valid Password

TC-016 - User should be able to click Login Button
    [Tags]    Login Page
    run keyword and continue on failure    User should be able to click Login Button
    run keyword and continue on failure    TC Sleep

TC-017 - User should be able to view home page
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to view home page

TC-041 - User should be able to view All Products Page in HK Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to view All products
    run keyword and continue on failure    TC Sleep

TC-044 - User should be able to view product Out of Stock
    [Tags]    All Products Page
    run keyword and continue on failure    User should be able to view product Out of Stock in HK Retail Products Page
    run keyword and continue on failure    User should be albe to click enquire now button for out of stock in HK Retail Product Page
    run keyword and continue on failure    User should be able to message out of stock product in Retail Product Page
    run keyword and continue on failure    User should be able to click product details Out of Stock
    run keyword and continue on failure    User should be able to view product details Out of Stock in HK Product Page
    run keyword and continue on failure    Browse Back Button
    run keyword and continue on failure    User should be able to view All products

TC-045 - User should be able to view product In Stock Only
    [Tags]    All Products Page
    run keyword and continue on failure    User should be able to Filter Products by Stocks
    run keyword and continue on failure    User should be able to filter product name from A to Z
    run keyword and continue on failure    User should be able to view product In Stock Only in HK Retail Products Page
    run keyword and continue on failure    User should be able to click product details In Stock Only
    run keyword and continue on failure    User should be able to view product details In Stock Only in HK Product Page
    run keyword and continue on failure    Browse Back Button
    run keyword and continue on failure    User should be able to view All products

TC-046 - User should be able to click add to cart button for in stock only in Retail Product Page
    [Tags]    All Products Page
    run keyword and continue on failure    User should be able to click add to cart button for in stock only in HK Retail Product Page
    run keyword and continue on failure    User should be able to input qty item for in stock only in Retail Product Page
    run keyword and continue on failure    User should be able to add 1 qty item for in stock only in Retail Product Page
    run keyword and continue on failure    User should be able to remove 1 qty item for in stock only in Retail Product Page

TC-047 - User should be able to add to cart random item in Retail Product Page
    [Tags]    All Products Page
    run keyword and continue on failure    User should be able to add to cart random item in Retail Product Page
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    User should be able to add to cart random item in Retail Product Page
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    User should be able to add to cart random item in Retail Product Page

TC-048 - User should be able to view shopping cart pop up modal
    [Tags]    Shopping Cart Page
    run keyword and continue on failure    User should be able to view shopping cart pop up modal
    run keyword and continue on failure    User should be able to delete item from shopping cart pop up modal
    run keyword and continue on failure    User should be able to click view cart button from shopping cart pop up modal

TC-049 - User should be able to view shopping cart in HK Retail Shopping Cart Page
    [Tags]    Shopping Cart Page
    run keyword and continue on failure    User should be able to view shopping cart in HK Retail Shopping Cart Page

TC-052 - User should be able to click checkout button in Retail Shopping Cart Page
    [Tags]    Shopping Cart Page
    run keyword and continue on failure    User should be able to click checkout button in Retail Shopping Cart Page
    run keyword and continue on failure    TC Sleep

TC-053 - User should be able to view checkout in Retail Checkout Page
    [Tags]    Checkout Page
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    User should be able to view checkout in HK Retail Checkout Page

TC-053 - User should be able to change Address
    [Tags]    Checkout Page
    run keyword and continue on failure    User should be albe to click Change Address in HK Retail Checkout Page
    run keyword and continue on failure    User should be able to view Change Shipping Address Modal in HK Retail Checkout Page
    run keyword and continue on failure    User should be able to change Mobile Number on change shipping in HK Retail Checkout Page
    run keyword and continue on failure    User should be able to change Landline Number on change shipping in HK Retail Checkout Page
    run keyword and continue on failure    User should be able to clear shipping address on shipping in HK Retail Checkout Page
    run keyword and continue on failure    User should be able to edit shipping address on change shipping in HK Retail Checkout Page
    run keyword and continue on failure    User should be able to select Random Address from suggestions in HK Retail Checkout Page
    run keyword and continue on failure    User should be able to click Area Dropdown on change shipping in HK Retail Checkout Page
    run keyword and continue on failure    User should be able to select Random Area on change shipping in HK Retail Checkout Page
    run keyword and continue on failure    User should be able to click District Dropdown on change shipping in HK Retail Checkout Page
    run keyword and continue on failure    User should be able to select Random District on change shipping in HK Retail Checkout Page
    run keyword and continue on failure    User should be able to click Save Button on change shipping in HK Retail Checkout Page

#Add script for catching the change shipping fee banner

