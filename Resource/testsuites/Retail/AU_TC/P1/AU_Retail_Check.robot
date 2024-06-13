*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary
Library    Process
#Library  FakerLibrary

Resource  ../../../../../Resource/testdata/Retail/AU_Config/P1/AU_P1_Config.robot
Resource  ../../../../../Resource/testdata/Retail/Retail_Variable.robot
Resource  ../../../../../Resource/testdata/Retail/Retail_Resource.robot

*** Test Cases ***
Test Setup  Run Keywords   Open Chrome Browser
Screen Shot DIR  Run Keywords    Retail Screen Shot DIR


TC-001 - Verify Login Page
    [Tags]    TC001    Login Page
    run keyword and continue on failure    Verify Login Page

TC-002 - Verify Login Page Elements
    [Tags]    TC002    Login Page
    run keyword and continue on failure    Verify Login Page Elements

TC-003 - Input Valid Email
    [Tags]    TC005    Login Page
    run keyword and continue on failure    Input Valid Username

TC-004 - Input Valid Password
    [Tags]    TC007    Login Page
    run keyword and continue on failure    Input Valid Password

TC-005 - User should be able to click Login Button
    [Tags]    TC008    Login Page
    run keyword and continue on failure    User should be able to click Login Button

TC-006 - Admin User should be able to Login
    [Tags]    TC009    Home Page
    run keyword and continue on failure    Admin User should be able to Login
    run keyword and continue on failure    TC Sleep

TC-007 - User should be able to view account orders page
    [Tags]    TC011    Account Page    Order Page
    run keyword and continue on failure    User should be able to access account from top navigaton
    run keyword and continue on failure    User should be able to view account orders page

TC-008 - User should be able to select one order from the list
    [Tags]    TC012    Account Page    Order Page
    run keyword and continue on failure    User should be able to select one order from the list

TC-009 - User should be able to view order details
    [Tags]    TC013    Account Page    Order Page
    run keyword and continue on failure    User should be able to view order details
    run keyword and continue on failure    TC Move to Top

TC-010 - User should be able to view account return request page
    [Tags]    TC015    Account Page    Return Page
    run keyword and continue on failure    User should be able to access account from top navigaton
    run keyword and continue on failure    User should be able to view account return request page

TC-011 - User should be able to view Return Request Panel
    [Tags]    TC015    Account Page    Retrun Page
    run keyword and continue on failure    User should be able to view Return Request Panel

TC-012 - User should be able to select one return from the list
    [Tags]    TC016    Account Page    Return Page
    run keyword and continue on failure    User should be able to select one return from the list

TC-013 - User should be able to view Return details
    [Tags]    TC011    Account Page    Return Page
    run keyword and continue on failure    User should be able to view Return details
    run keyword and continue on failure    TC Move to Top

TC-014 - User should be able to view account saved carts page
    [Tags]    TC018    Account Page    Saved Cart Page
    run keyword and continue on failure    User should be able to access account from top navigaton
    run keyword and continue on failure    User should be able to view account saved carts page

TC-015 - User should be able to view Saved Carts Panel
    [Tags]    TC019    Account Page    Saved Cart Page
    run keyword and continue on failure    User should be able to view Saved Carts Panel

TC-016 - User should be able to view account vehicle listing page
    [Tags]    TC020    Account Page    Vehicle Listing Page
    run keyword and continue on failure    User should be able to access account from top navigaton
    run keyword and continue on failure    User should be able to view account vehicle listing page

TC-017 - User should be able to view vehicle listing Panel
    [Tags]    TC021    Account Page    Vehicle Listing Page
    run keyword and continue on failure    User should be able to view vehicle listing Panel

TC-018 - User should be able to view message page
    [Tags]    TC022    Account Page    Messages Page
    run keyword and continue on failure    User should be able to access account from top navigaton
    run keyword and continue on failure    User should be able to view message page

TC-019 - User should be able to view account details page
    [Tags]    TC023    Account Page    Account Details Page
    run keyword and continue on failure    User should be able to access account from top navigaton
    run keyword and continue on failure    User should be able to view account details page

TC-020 - User should be able to view change password page
    [Tags]    TC024    Account Page    Change Pass Page
    run keyword and continue on failure    User should be able to access account from top navigaton
    run keyword and continue on failure    User should be able to view change password page

TC-021 - User should be able to view company details page
    [Tags]    TC025    Account Page    Company Details Page
    run keyword and continue on failure    User should be able to access account from top navigaton
    run keyword and continue on failure    User should be able to view company details page

#TC-022 - User should be able to view staff page
#    [Tags]    TC026    Account Page    Staff Page
#    run keyword and continue on failure    User should be able to access account from top navigaton
#    run keyword and continue on failure    User should be able to view staff page

TC-023 - User should be able to click 1 filter from selected category in Retail Home Page
    [Tags]    TC027    All Parts Page
    run keyword and continue on failure    User should be able to click 1 filter from selected category in Retail Home Page

TC-024 - User should be able to filter product name from A to Z
    [Tags]    TC028    Products
    run keyword and continue on failure    User should be able to filter product name from A to Z

TC-025 - User should be able to fitler results per page to 100
    [Tags]    TC029    Products
    run keyword and continue on failure    User should be able to fitler results per page to 100

TC-026 - User should be able to view product In Stock and DC Stock
    [Tags]    TC030    Products
    run keyword and continue on failure    User should be able to view product In Stock and DC Stock

TC-027 - User should be able to click product details In Stock and DC Stock
    [Tags]    TC031    Products
    run keyword and continue on failure    User should be able to click product details In Stock and DC Stock

TC-028 - User should be able to view product details In Stock and DC Stock
    [Tags]    TC032    Products
    run keyword and continue on failure    User should be able to view product details In Stock and DC Stock
    run keyword and continue on failure    Browse Back Button
    run keyword and continue on failure    Return to first page

TC-029 - User should be able to view product Out of Stock and DC Stock
    [Tags]    TC033    Products
    run keyword and continue on failure    User should be able to view product Out of Stock and DC Stock

TC-030 - User should be able to click product details Out of Stock and DC Stock
    [Tags]    TC034    Products
    run keyword and continue on failure    User should be able to click product details Out of Stock and DC Stock

TC-031 - User should be able to view product details Out of Stock and DC Stock
    [Tags]    TC035    Products
    run keyword and continue on failure    User should be able to view product details Out of Stock and DC Stock
    run keyword and continue on failure    Browse Back Button
    run keyword and continue on failure    Return to first page

TC-032 - User should be able to view product Out of Stock
    [Tags]    TC036    Products
    run keyword and continue on failure    User should be able to view product Out of Stock

TC-033 - User should be able to click product details Out of Stock
    [Tags]    TC037    Products
    run keyword and continue on failure    User should be able to click product details Out of Stock

TC-034 - User should be able to view product details Out of Stock
    [Tags]    TC038    Products
    run keyword and continue on failure    User should be able to view product details Out of Stock
    run keyword and continue on failure    Browse Back Button
    run keyword and continue on failure    Return to first page

TC-035 - User should be able to view product Price not Available
    [Tags]    TC039    Products
    run keyword and continue on failure    User should be able to view product Price not Available

TC-036 - User should be able to click product details Price not Available
    [Tags]    TC040    Products
    run keyword and continue on failure    User should be able to click product details Price not Available

TC-037 - User should be able to view product details Price not Available
    [Tags]    TC041    Products
    run keyword and continue on failure    User should be able to view product details Price not Available
    run keyword and continue on failure    Browse Back Button
    run keyword and continue on failure    Return to first page

TC-038 - User should be able to view product In Stock Only
    [Tags]    TC044    Products
    run keyword and continue on failure    User should be able to Filter Products by Stocks
    run keyword and continue on failure    User should be able to filter product name from A to Z
    run keyword and continue on failure    User should be able to fitler results per page to 100
    run keyword and continue on failure    User should be able to view product In Stock Only

TC-039 - User should be able to click product details In Stock Only
    [Tags]    TC045    Products
    run keyword and continue on failure    User should be able to click product details In Stock Only

TC-040 - User should be able to view product details In Stock Only
    [Tags]    TC046    Products
    run keyword and continue on failure    User should be able to view product details In Stock Only
    run keyword and continue on failure    Browse Back Button
    run keyword and continue on failure    Return to first page

TC-053 - User should be albe to delete all items from shopping cart pop up modal
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to Go to Home page
    run keyword and continue on failure    User should be able to view shopping cart pop up modal
    run keyword and continue on failure    User should be albe to delete all items from shopping cart pop up modal


TC-041 - User should be able to logout using double header
    [Tags]    TC009    Logout
    run keyword and continue on failure    User should be able to logout using double header

#Test Teardown
#    Run Keywords  Close Browser
#    run keyword    Save Log DIR



