*** Settings ***
Documentation    Suite description

Library    SeleniumLibrary
Library    Process
Library    String


Resource  ../../../../../Resource/testdata/Retail/AU_Config/P1/AU_P1_Config.robot
Resource  ../../../../../Resource/testdata/Retail/Retail_Variable.robot
Resource  ../../../../../Resource/testdata/Retail/Retail_Resource.robot


*** Test Cases ***
Test Setup  Run Keywords   Open Chrome Browser
Screen Shot DIR  Run Keywords    Retail Screen Shot DIR

TC-000 - Verify Login Page
    [Tags]    Login Page
    run keyword and continue on failure    Verify Login Page
    run keyword and continue on failure    Verify Login Page Elements

TC-001 - Clickable Footers
    [Tags]    Login Page
    run keyword and continue on failure    User should verify clickable Privacy Policy on footer
    run keyword and continue on failure    browse back button
    run keyword and continue on failure    User should verify clickable Terms & Conditions on footer
    run keyword and continue on failure    browse back button

TC-002 - Input Invalid Username
    [Tags]    Login Page
    run keyword and continue on failure    Input Invalid Username

TC-003 - Input Invalid Password
    [Tags]    Login Page
    run keyword and continue on failure    Input Invalid Password
    run keyword and continue on failure    Required password message

TC-004 - User should not be able to login using invalid account
    [Tags]    Login Page
    run keyword and continue on failure    User should not be able to login using invalid account

TC-005 - User should be able to check/uncheck Remember me in Retail Login Page
    [Tags]    Login Page
    run keyword and continue on failure    User should be able to check/uncheck Remember me in Retail Login Page
    run keyword and continue on failure    User should be able to check/uncheck Remember me in Retail Login Page

TC-006 - User should be able to click Forgot Password in Retail Login Page
    [Tags]    Login Page    Forgot Password
    run keyword and continue on failure    User should be able to click Forgot Password in Retail Login Page

TC-007 - User should be able to view Forgot Password Page in Retail Forgot Password Page
    [Tags]    Login Page    Forgot Password
    run keyword and continue on failure    User should be able to view Forgot Password Page in Retail Forgot Password Page

TC-008 - User should be albe to view Error Message in Retail Forgot Password Page
    [Tags]    Login Page    Forgot Password
    run keyword and continue on failure    User should be albe to view Error Message in Retail Forgot Password Page

TC-009 - User should be albe to view Error Message in Retail Forgot Password Page
    [Tags]    Login Page    Forgot Password
    run keyword and continue on failure    User should be albe to view Error Message in Retail Forgot Password Page

TC-010 - User should be able to Input Valid Email Address in Retail Forgot Password Page
    [Tags]    Login Page    Forgot Password
    run keyword and continue on failure    User should be able to Input Valid Email Address in Retail Forgot Password Page
    run keyword and continue on failure    browse back button

TC-011 - User should be able to click Create Account in Retail Login Page
    [Tags]    Login Page    Registration
    run keyword and continue on failure    User should be able to click Create Account in Retail Login Page

TC-012 - User should be albe to view Registration Page
    [Tags]    Login Page    Registration
    run keyword and continue on failure    User should be albe to view Registration Page

TC-013 - User should be able to click and select Preferred Supplier
    [Tags]    Login Page    Registration
    run keyword and continue on failure   User should be able to click select supplier dropdown
    run keyword and continue on failure    User should be able to select option from select supplier dropdown

TC-014 - User should be able to click Next Button
    [Tags]    Login Page    Registration
    run keyword and continue on failure    User should be able to click Next Button

TC-015 - User should be able to view Registration Form Page
    [Tags]    Login Page    Registration
    run keyword and continue on failure    User should be able to view Registration Form Page

TC-016 - User should be able to input valid registration details
    [Tags]    Login Page    Registration
    run keyword and continue on failure    User should be able to input Account Number
    run keyword and continue on failure    User should be able to input Company Name
    run keyword and continue on failure    User should be able to input Trading Name
    run keyword and continue on failure    User should be able to input Postal Address Line 1
    run keyword and continue on failure    User should be able to input Postal Address Line 2
    run keyword and continue on failure    User should be able to input Postal Suburb
    run keyword and continue on failure    User should be able to input Postal Code
    run keyword and continue on failure    User should be able to click Postal State
    run keyword and continue on failure    User should be able to select Postal State
    run keyword and continue on failure    User should be able to input Delivery Address Line 1
    run keyword and continue on failure    User should be able to input Delivery Address Line 2
    run keyword and continue on failure    User should be able to input Delivery Suburb
    run keyword and continue on failure    User should be able to input Delivery Code
    run keyword and continue on failure    User should be able to click Delivery State
    run keyword and continue on failure    User should be able to select Delivery State
    run keyword and continue on failure    User should be able to click ACN Button
    run keyword and continue on failure    User should be able to click ABN Button
    run keyword and continue on failure    User should be albe to input ABN/ACN
    run keyword and continue on failure    User should be able to click Opening Hours
    run keyword and continue on failure    User should be able to select Opening Hours
    run keyword and continue on failure    User should be able to click Closing Hours
    run keyword and continue on failure    User should be able to select Closing Hours
    run keyword and continue on failure    User should be able to input Contact First Name
    run keyword and continue on failure    User should be able to input Contact Last Name
    run keyword and continue on failure    User should be able to input Email Address
    run keyword and continue on failure    User should be able to input Company Phone Number
    run keyword and continue on failure    User should be able to input Landline Number

TC-017 - User should be able to click Back to Login Button
    [Tags]    Login Page    Registration
    run keyword and continue on failure    User should be able to click Back to Login Button

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

TC-020 - Clickable Footers homepage
    [Tags]    Home Page
    run keyword and continue on failure    User should verify homepage clickable Privacy Policy on footer
    run keyword and continue on failure    browse back button
    run keyword and continue on failure    User should verify homepage clickable Terms & Conditions on footer
    run keyword and continue on failure    browse back button

TC-021 - User should be able to view filters & oil menus in Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to view filters & oil menus in Retail Home Page

TC-022 - User should be able to view belts & timing parts menus in Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to view belts & timing parts menus in Retail Home Page

TC-023 - User should be able to view cooling menus in Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to view cooling menus in Retail Home Page

TC-024 - User should be able to view brakes menus in Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to view brakes menus in Retail Home Page

TC-025 - User should be able to view suspension menus in Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to view suspension menus in Retail Home Page

TC-026 - User should be able to view electrical menus in Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to view electrical menus in Retail Home Page

TC-027 - User should be able to view service parts menus in Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to view service parts menus in Retail Home Page

TC-028 - User should be able to view engine parts menus in Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to view engine parts menus in Retail Home Page

TC-029 - User should be able to select 1 filter from selected category in Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to select 1 filter from selected category in Retail Home Page

TC-030 - User should be able to click 1 sub filter from selected category in Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to click 1 sub filter from selected category in Retail Home Page
    run keyword and continue on failure    User should be able to Go to Home page

TC-031 - User should be able to toggle radio button Select from Last 5 Searched Vehicle to Vehicle Listing
    [Tags]    Login Page
    run keyword and continue on failure    User should be able to toggle radio button Select from Last 5 Searched Vehicle to Vehicle Listing
    run keyword and continue on failure    reload page
    run keyword and continue on failure    TC Sleep

TC-032 - User should be able to toggle radio button Select from your vehicle listing
    run keyword and continue on failure    User should be able to toggle radio button Select from your vehicle listing
    run keyword and continue on failure    reload page
    run keyword and continue on failure    TC Sleep

TC-033 - User should be able to click shop by category accessories & audio in Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to click shop by category accessories & audio in Retail Home Page
    run keyword and continue on failure    User should be able to Go to Home page

TC-034 - User should be able to click shop by category aircon & heating in Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to click shop by category aircon & heating in Retail Home Page
    run keyword and continue on failure    User should be able to Go to Home page

TC-035 - User should be able to click shop by category belts & timing parts in Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to click shop by category belts & timing parts in Retail Home Page
    run keyword and continue on failure    User should be able to Go to Home page

TC-036 - User should be able to click shop by category body parts in Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to click shop by category body parts in Retail Home Page
    run keyword and continue on failure    User should be able to Go to Home page

TC-037 - User should be able to click shop by category brakes in Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to click shop by category brakes in Retail Home Page
    run keyword and continue on failure    User should be able to Go to Home page

TC-038 - User should be able to click shop by category clutch & transmissions in Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to click shop by category clutch & transmissions in Retail Home Page
    run keyword and continue on failure    User should be able to Go to Home page

TC-039 - User should be able to click shop by category cooling in Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to click shop by category cooling in Retail Home Page
    run keyword and continue on failure    User should be able to Go to Home page

TC-040 - User should be able to click shop by category electrical in Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to click shop by category electrical in Retail Home Page
    run keyword and continue on failure    User should be able to Go to Home page

TC-041 - User should be able to click shop by category engine parts in Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to click shop by category engine parts in Retail Home Page
    run keyword and continue on failure    User should be able to Go to Home page

TC-042 - User should be able to click shop by category exhaust & emission in Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to click shop by category exhaust & emission in Retail Home Page
    run keyword and continue on failure    User should be able to Go to Home page

TC-043 - User should be able to click shop by category filters & oil in Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to click shop by category filters & oil in Retail Home Page
    run keyword and continue on failure    User should be able to Go to Home page

TC-044 - User should be able to click shop by category fuel system in Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to click shop by category fuel system in Retail Home Page
    run keyword and continue on failure    User should be able to Go to Home page

TC-045 - User should be able to click shop by category gasket in Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to click shop by category gasket in Retail Home Page
    run keyword and continue on failure    User should be able to Go to Home page

TC-046 - User should be able to click shop by category ignition, start & charge in Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to click shop by category ignition, start & charge in Retail Home Page
    run keyword and continue on failure    User should be able to Go to Home page

TC-048 - User should be able to click shop by category service parts in Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to click shop by category service parts in Retail Home Page
    run keyword and continue on failure    User should be able to Go to Home page

TC-049 - User should be able to click shop by category shafts axles & wheels in Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to click shop by category shafts axles & wheels in Retail Home Page
    run keyword and continue on failure    User should be able to Go to Home page

TC-050 - User should be able to click shop by category steering in Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to click shop by category steering in Retail Home Page
    run keyword and continue on failure    User should be able to Go to Home page

TC-051 - User should be able to click shop by category suspension in Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to click shop by category suspension in Retail Home Page
    run keyword and continue on failure    User should be able to Go to Home page

TC-052 - User should be able to click shop by category all in Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to click shop by category all in Retail Home Page
    run keyword and continue on failure    User should be able to Go to Home page

TC-053 - User should be able to input text on search bar
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to input text on search bar

TC-054 - User should be able to click searched text
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to click searched text
    run keyword and continue on failure    User should be able to Go to Home page

TC-055 - User should be able to view Vehicle Search in AU Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to view Vehicle Search in AU Retail Home Page

TC-056 - User should be able to Select and Save Vehicle using Home Page manual Search in AU Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to click model on manual search in AU Retail Home Page
    run keyword and continue on failure    User should be able to select model on manual search in AU Retail Home Page
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    User should be able to click year on manual search in AU Retail Home Page
    run keyword and continue on failure    User should be able to select year on manual search in AU Retail Home Page
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    User should be able to click series on manual search in AU Retail Home Page
    run keyword and continue on failure    User should be able to select series on manual search in AU Retail Home Page
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    User should be able to click engine on manual search in AU Retail Home Page
    run keyword and continue on failure    User should be able to select engine on manual search in AU Retail Home Page
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    User should be able to click details on manual search in AU Retail Home Page
    run keyword and continue on failure    User should be able to select details on manual search in AU Retail Home Page
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    User shoud be albe to click search this vehicle on manual seearh in AU Retail Home Page
    run keyword and continue on failure    User should be able to Save or Select Manual Vehicle Search on Search Popup in AU Retail Home Page
    run keyword and continue on failure    TC Sleep

TC-057 - User should be able to Search by Rego in AU Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    User should be able to Go to Home page
    run keyword and continue on failure    User should be able to select state in AU Retail Home Page
    run keyword and continue on failure    User should be able to input rego in AU Retail Home Page
    run keyword and continue on failure    User should be albe to click search button in AU Retail Home Page
    run keyword and continue on failure    User should be able to Save or Select Manual Vehicle Search on Search Popup in AU Retail Home Page
    run keyword and continue on failure    TC Sleep

TC-058 - User should be able to Search by Rego 2 in AU Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    User should be able to Go to Home page
    run keyword and continue on failure    User should be able to select state in AU Retail Home Page
    run keyword and continue on failure    User should be able to input rego 2 in AU Retail Home Page
    run keyword and continue on failure    User should be albe to click search button in AU Retail Home Page
    run keyword and continue on failure    User should be able to Save or Select Manual Vehicle Search on Search Popup in AU Retail Home Page
    run keyword and continue on failure    TC Sleep

TC-059 - User should be able to Search by Rego 3 in AU Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    User should be able to Go to Home page
    run keyword and continue on failure    User should be able to select state in AU Retail Home Page
    run keyword and continue on failure    User should be able to input rego 3 in AU Retail Home Page
    run keyword and continue on failure    User should be albe to click search button in AU Retail Home Page
    run keyword and continue on failure    User should be able to Save or Select Manual Vehicle Search on Search Popup in AU Retail Home Page
    run keyword and continue on failure    TC Sleep

TC-060 - User should be able to Search by VIN in AU Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    User should be able to Go to Home page
    run keyword and continue on failure    User should be albe to input vin in AU Retail Home Page
    run keyword and continue on failure    User should be albe to click search button in AU Retail Home Page
    run keyword and continue on failure    User should be able to Save or Select Manual Vehicle Search on Search Popup in AU Retail Home Page
    run keyword and continue on failure    TC Sleep

TC-061 - User should be able to Search by VIN 2 in AU Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    User should be able to Go to Home page
    run keyword and continue on failure    User should be albe to input vin 2 in AU Retail Home Page
    run keyword and continue on failure    User should be albe to click search button in AU Retail Home Page
    run keyword and continue on failure    User should be able to Save or Select Manual Vehicle Search on Search Popup in AU Retail Home Page
    run keyword and continue on failure    TC Sleep

TC-062 - User should be able to Search by VIN 3 in AU Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    User should be able to Go to Home page
    run keyword and continue on failure    User should be albe to input vin 3 in AU Retail Home Page
    run keyword and continue on failure    User should be albe to click search button in AU Retail Home Page
    run keyword and continue on failure    User should be able to Save or Select Manual Vehicle Search on Search Popup in AU Retail Home Page
    run keyword and continue on failure    TC Sleep


TC-063 - User should be able to access Order page using double header in Retail Homepage
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to Go to Home page
    run keyword and continue on failure    User should be able to access Order page using double header in Retail Homepage
    run keyword and continue on failure    reload page
    run keyword and continue on failure    TC Sleep

TC-064 - User should be able to access Retrun page using double header in Retail Homepage
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to Go to Home page
    run keyword and continue on failure    User should be able to access Retrun page using double header in Retail Homepage
    run keyword and continue on failure    reload page
    run keyword and continue on failure    TC Sleep

TC-065 - User should be able to access Save carts page using double header in Retail Homepage
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to Go to Home page
    run keyword and continue on failure    User should be able to access Save carts page using double header in Retail Homepage
    run keyword and continue on failure    reload page
    run keyword and continue on failure    TC Sleep

TC-066 - User should be able to access Vehicle Listing page using double header in Retail Homepage
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to Go to Home page
    run keyword and continue on failure    User should be able to access Vehicle Listing page using double header in Retail Homepage
    run keyword and continue on failure    reload page
    run keyword and continue on failure    TC Sleep

TC-067 - User should be able to access Inbox page using double header in Retail Homepage
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to Go to Home page
    run keyword and continue on failure    User should be able to access Inbox page using double header in Retail Homepage
    run keyword and continue on failure    reload page
    run keyword and continue on failure    TC Sleep

TC-068 - User should be able to access Account Details page using double header in Retail Homepage
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to Go to Home page
    run keyword and continue on failure    User should be able to access Account Details page using double header in Retail Homepage
    run keyword and continue on failure    reload page
    run keyword and continue on failure    TC Sleep

TC-069 - User should be able to access Change Pass page using double header in Retail Homepage
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to Go to Home page
    run keyword and continue on failure    User should be able to access Change Pass page using double header in Retail Homepage
    run keyword and continue on failure    reload page
    run keyword and continue on failure    TC Sleep

TC-070 - User should be able to access Company Details page using double header in Retail Homepage
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to Go to Home page
    run keyword and continue on failure    User should be able to access Company Details page using double header in Retail Homepage
    run keyword and continue on failure    reload page
    run keyword and continue on failure    TC Sleep

TC-071 - User should be able to clear vehicle selection
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to Go to Home page
    run keyword and continue on failure    User should be able to click Select Your Vehicle
    run keyword and continue on failure    User should be able to click clear vehicle on selected vehicle in Retail Select Vehicle

TC-072 - User should be able to view All Parts Page
    [Tags]    All Products Page
    run keyword and continue on failure    User should be able to view All Parts Page

TC-073 - User should be able to side filter product
    [Tags]    All Products Page
    run keyword and continue on failure    User should be able to breakdown L1 product filter in Retail All Products Page
    run keyword and continue on failure    User should be able to breakdown L2 product filter in Retail All Products Page
    run keyword and continue on failure    User should be able to breakdown L3 product filter in Retail All Products Page
    run keyword and continue on failure    User should be albe to check/uncheck 1 product sub category in Retail All Products Page
    run keyword and continue on failure    User should be able to toggle on/off your price in Retail Filtered Product Page
    run keyword and continue on failure    User should be able to toggle on/off your price in Retail Filtered Product Page
    run keyword and continue on failure    User should be able to toggle on/off gts in Retail Filtered Product Page
    run keyword and continue on failure    User should be able to toggle on/off gts in Retail Filtered Product Page
    run keyword and continue on failure    User should be able to view All Parts Page

TC-074 - User should be able to filter product
    [Tags]    All Products Page
    run keyword and continue on failure    User should be able to click 1 filter from selected category in Retail Home Page
    run keyword and continue on failure    User should be able to fitler results per page to 100

TC-075 - User should be able to view product In Stock and DC Stock
    [Tags]    All Products Page
    run keyword and continue on failure    User should be able to click 1 filter from selected category in Retail Home Page
    run keyword and continue on failure    User should be able to fitler results per page to 100
    run keyword and continue on failure    User should be able to view product In Stock and DC Stock
    run keyword and continue on failure    User should be able to click product details In Stock and DC Stock
    run keyword and continue on failure    User should be able to view product details In Stock and DC Stock
    run keyword and continue on failure    Browse Back Button
    run keyword and continue on failure    Return to first page

TC-076 - User should be able to view product Out of Stock and DC Stock
    [Tags]    All Products Page
    run keyword and continue on failure    User should be able to click 1 filter from selected category in Retail Home Page
    run keyword and continue on failure    User should be able to fitler results per page to 100
    run keyword and continue on failure    User should be able to view product Out of Stock and DC Stock
    run keyword and continue on failure    User should be able to click product details Out of Stock and DC Stock
    run keyword and continue on failure    User should be able to view product details Out of Stock and DC Stock
    run keyword and continue on failure    Browse Back Button
    run keyword and continue on failure    Return to first page

TC-077 - User should be able to view product Out of Stock
    [Tags]    All Products Page
    run keyword and continue on failure    User should be able to click 1 filter from selected category in Retail Home Page
    run keyword and continue on failure    User should be able to fitler results per page to 100
    run keyword and continue on failure    User should be able to view product Out of Stock
    run keyword and continue on failure    User should be albe to click enquire now button for out of stock in Retail Product Page
    run keyword and continue on failure    User should be able to message out of stock product in Retail Product Page
    run keyword and continue on failure    User should be able to click product details Out of Stock
    run keyword and continue on failure    User should be able to view product details Out of Stock
    run keyword and continue on failure    Browse Back Button
    run keyword and continue on failure    Return to first page

TC-078 - User should be able to view product Price not Available
    [Tags]    All Products Page
    run keyword and continue on failure    User should be able to click 1 filter from selected category in Retail Home Page
    run keyword and continue on failure    User should be able to fitler results per page to 100
    run keyword and continue on failure    User should be able to view product Price not Available
    run keyword and continue on failure    User should be albe to click enquire now button for price not available in Retail Product Page
    run keyword and continue on failure    User should be able to message price not available product in Retail Product Page
    run keyword and continue on failure    User should be able to click product details Price not Available
    run keyword and continue on failure    User should be able to view product details Price not Available
    run keyword and continue on failure    Browse Back Button
    run keyword and continue on failure    Return to first page

TC-079 - User should be able to view product In Stock Only
    [Tags]    All Products Page
    run keyword and continue on failure    User should be able to click 1 filter from selected category in Retail Home Page
    run keyword and continue on failure    User should be able to Filter Products by Stocks
    run keyword and continue on failure    User should be able to view product In Stock Only
    run keyword and continue on failure    User should be able to click product details In Stock Only
    run keyword and continue on failure    User should be able to view product details In Stock Only
    run keyword and continue on failure    Browse Back Button
    run keyword and continue on failure    Return to first page

TC-080 - User should be able to click add to cart button for out of stock and dc stock in Retail Product Page
    [Tags]    All Products Page
    run keyword and continue on failure    User should be able to click add to cart button for out of stock and dc stock in Retail Product Page
    run keyword and continue on failure    TC sleep
    run keyword and continue on failure    User should be able to input qty item for out of stock and dc stock in Retail Product Page
    run keyword and continue on failure    User should be able to add 1 qty item for out of stock and dc stock in Retail Product Page
    run keyword and continue on failure    User should be able to remove 1 qty item for out of stock and dc stock in Retail Product Page
    run keyword and continue on failure    Return to first page

TC-081 - User should be able to click add to cart button for in stock and dc stock in Retail Product Page
    [Tags]    All Products Page
    run keyword and continue on failure    User should be able to click add to cart button for in stock and dc stock in Retail Product Page
    run keyword and continue on failure    TC sleep
    run keyword and continue on failure    User should be able to input qty item for in stock and dc stock in Retail Product Page
    run keyword and continue on failure    User should be able to add 1 qty item for in stock and dc stock in Retail Product Page
    run keyword and continue on failure    User should be able to remove 1 qty item for in stock and dc stock in Retail Product Page
    run keyword and continue on failure    Return to first page

TC-082 - User should be able to click add to cart button for in stock only in Retail Product Page
    [Tags]    All Products Page
    run keyword and continue on failure    User should be able to fitler results per page to 100
    run keyword and continue on failure    User should be able to click add to cart button for in stock only in Retail Product Page
    run keyword and continue on failure    TC sleep
    run keyword and continue on failure    User should be able to input qty item for in stock only in Retail Product Page
    run keyword and continue on failure    User should be able to add 1 qty item for in stock only in Retail Product Page
    run keyword and continue on failure    User should be able to remove 1 qty item for in stock only in Retail Product Page
    run keyword and continue on failure    Return to first page

TC-083 - User should be able to add to cart random item in Retail Product Page
    [Tags]    All Products Page
    run keyword and continue on failure    User should be able to add to cart random item in Retail Product Page

TC-084 - User should be able to view shopping cart pop up modal
    [Tags]    Shopping Cart Page
    run keyword and continue on failure    User should be able to view shopping cart pop up modal
    run keyword and continue on failure    User should be able to delete item from shopping cart pop up modal
    run keyword and continue on failure    User should be able to click view cart button from shopping cart pop up modal

TC-085 - User should be able to view shopping cart in Retail Shopping Cart Page
    [Tags]    Shopping Cart Page
    run keyword and continue on failure    User should be able to view shopping cart in Retail Shopping Cart Page
    run keyword and continue on failure    User should be able to toggle on/off your price in Retail Shopping Cart Page
    run keyword and continue on failure    User should be able to toggle on/off your price in Retail Shopping Cart Page
    run keyword and continue on failure    User should be able to toggle on/off GST in Retail Shopping Cart Page
    run keyword and continue on failure    User should be able to toggle on/off GST in Retail Shopping Cart Page

TC-086 - User should be able to click save cart button in Retail Shopping Cart Page
    [Tags]    Shopping Cart Page
    run keyword and continue on failure    User should be able to click save cart button in Retail Shopping Cart Page
    run keyword and continue on failure    User should be able to edit Name for Edit Pop Up in Retail Account Saved Carts Details Page
    run keyword and continue on failure    User should be able to edit Description for Edit Pop Up in Retail Account Saved Carts Details Page
    run keyword and continue on failure    User shoulld be albe to click Update for Edit Pop Up in Retail Account Saved Carts Details Page
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    User should be able to click Restore in Retail Account Saved Carts Page
    run keyword and continue on failure    TC Sleep

TC-087 - User should be able to edit shopping cart items in Retail Shopping Cart Page
    [Tags]    Shopping Cart Page
    run keyword and continue on failure    User should be able to view 1 cart item in Retail Shopping Cart Page
    run keyword and continue on failure    User should be able to click 1 product cart item in Retail Shopping Cart Page
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    Browse Back Button
    run keyword and continue on failure    User should be able to click add item qty in Retail Shopping Cart Page
    run keyword and continue on failure    User should be able to click remove item qty in Retail Shopping Cart Page
    run keyword and continue on failure    User should be able to input item qty in Retail Shopping Cart Page

TC-088 - User should be able to delete shopping cart items in Retail Shopping Cart Page
    [Tags]    Shopping Cart Page
    run keyword and continue on failure    User should be able to click delete cart item button in Retail Shopping Cart Page

TC-089 - User should be able to click continue shopping button in Retail Shopping Cart Page
    [Tags]    Shopping Cart Page
    run keyword and continue on failure    User should be able to click continue shopping button in Retail Shopping Cart Page
    run keyword and continue on failure    Browse Back Button

TC-090 - User should be able to click checkout button in Retail Shopping Cart Page
    [Tags]    Shopping Cart Page
    run keyword and continue on failure    User should be able to click checkout button in Retail Shopping Cart Page
    run keyword and continue on failure    TC Sleep

TC-091 - User should be able to view checkout in Retail Checkout Page
    [Tags]    Checkout Page
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    User should be able to view checkout in Retail Checkout Page
    run keyword and continue on failure    User should be able to click po number info in Retail Checkout Page
    run keyword and continue on failure    User should be able to click shipping info button in Retail Checkout Page
    run keyword and continue on failure    User should be able to click back to cart button in Retail Checkout Page
    run keyword and continue on failure    Browse Back Button

TC-092 - User should be able to edit po number in Retail Checkout Page
    [Tags]    Checkout Page
    run keyword and continue on failure    User should be able to edit invalid po number in Retail Checkout Page
    run keyword and continue on failure    User should be able to edit valid po number in Retail Checkout Page
    run keyword and continue on failure    User should be able to click save po number in Retail Checkout Page
    run keyword and continue on failure    User should be able to click reset po number in Retail Checkout Page

#TC-093 - User should be able to place order in Retail Checkout Page
#    [Tags]    Checkout Page
#    run keyword and continue on failure    User should be able to click place order button in Retail Checkout Page
#    run keyword and continue on failure    User should be able to view place order in Retail Place Order Page
#    run keyword and continue on failure    User should be able to click back to home button in Retail Place Order Page
#
#TC-094 - User should be able to process Re-Order in Retail Account Order Details Page
#    [Tags]    Re-Order Process
#    run keyword and continue on failure    User should be able to Go to Home page
#    run keyword and continue on failure    User should be able to view shopping cart pop up modal
#    run keyword and continue on failure    User should be albe to delete all items from shopping cart pop up modal
#    run keyword and continue on failure    User should be able to access Account page using double header in Retail Home page
#    run keyword and continue on failure    User should be able to view account orders page
#    run keyword and continue on failure    User should be able to select one order from the list
#    run keyword and continue on failure    User should be able to click Re-Order button in Retail Account Order Details Page
#    run keyword and continue on failure    User should be able to view shopping cart in Retail Shopping Cart Page
#    run keyword and continue on failure    User should be able to click checkout button in Retail Shopping Cart Page
#    run keyword and continue on failure    User should be able to view checkout in Retail Checkout Page
#    run keyword and continue on failure    User should be able to click place order button in Retail Checkout Page
#    run keyword and continue on failure    User should be able to view place order in Retail Place Order Page
#    run keyword and continue on failure    User should be able to click back to home button in Retail Place Order Page

TC-095 - User should be able to view account orders page
    [Tags]    Order Page
    run keyword and continue on failure    User should be able to access Account page using double header in Retail Home page
    run keyword and continue on failure    User should be able to view account orders page

TC-096 - User should be able to apply filter status in Retail Account Orders Page
    [Tags]    Order Page
    run keyword and continue on failure    User should be able to click filter status in Account Order Page
    run keyword and continue on failure    User should be able to check all filter status in Account Order Page
    run keyword and continue on failure    User should be able to filter status by Order with Returns in Account Order Page
    run keyword and continue on failure    User should be able to click filter status in Account Order Page
    run keyword and continue on failure    User should be able to filter status by Partially Dispathed in Account Order Page
    run keyword and continue on failure    User should be able to click filter status in Account Order Page
    run keyword and continue on failure    User should be able to filter status by Dispatched in Account Order Page
    run keyword and continue on failure    User should be able to click filter status in Account Order Page
    run keyword and continue on failure    User should be able to filter status by Submitted in Account Order Page
    run keyword and continue on failure    User should be able to click filter status in Account Order Page
    run keyword and continue on failure    User should be able to filter status by Received in Account Order Page
    run keyword and continue on failure    User should be able to click filter status in Account Order Page
    run keyword and continue on failure    User should be able to filter status by ALL in Account Order Page

TC-097 - User should be able to apply date filter in Retail Account Orders Page
    [Tags]    Order Page
    run keyword and continue on failure    User should be able to click Date Filter in Account Order Page
    run keyword and continue on failure    User should be able to view Date Filter Elements in Account Order Page
    run keyword and continue on failure    User should be able to click Previous Month Button in Account Order Page
    run keyword and continue on failure    User should be able to click Next Month Button in Account Order Page
    run keyword and continue on failure    User should be able to click Month Drop Down Filter in Account Order Page
    run keyword and continue on failure    User should be able to select month from drop down in Account Order Page
    run keyword and continue on failure    User should be able to click Year Drop Down Filter in Account Order Page
    run keyword and continue on failure    User should be able to select year from drop down in Account Order Page
    run keyword and continue on failure    User should be able to select From Date in Account Order Page
    run keyword and continue on failure    User should be able to select To Date in Account Order Page
    run keyword and continue on failure    User should be able to click Date Filter Submit Button in Account Order Page

TC-098 - User should be able to click Date Filter Clear Button in Account Order Page
    [Tags]    Order Page
    run keyword and continue on failure    User should be able to click Date Filter in Account Order Page
    run keyword and continue on failure    User should be able to click Date Filter Clear Button in Account Order Page
    run keyword and continue on failure    User should be able to click Search Box in Account Order Page

TC-099 - User should be able to Search in Account Order Page
    [Tags]    Order Page
    run keyword and continue on failure    User should be able to click Search Box in Account Order Page
    run keyword and continue on failure    User should be able to Input Text in Search Box in Account Order Page
    run keyword and continue on failure    User should be able to click clear button from Search Box in Account Order Page

TC-100 - User should be able to arrange filter in Retail Account Orders Page
    [Tags]    Order Page
    run keyword and continue on failure    User should be able to click Arrage Filter in Account Order Page
    run keyword and continue on failure    User should be able to Filter by Order Number in Account Order Page
    run keyword and continue on failure    User should be able to click Arrage Filter in Account Order Page
    run keyword and continue on failure    User should be able to Filter by Old to New in Account Order Page
    run keyword and continue on failure    User should be able to click Arrage Filter in Account Order Page
    run keyword and continue on failure    User should be able to Filter by New to Old in Account Order Page

TC-101 - User should be able to view and message order with Recieved Status in Retail Account Orders Page
    [Tags]    Order Page
    run keyword and continue on failure    User should be able to view order with Recieved Status in Retail Account Orders Page
    run keyword and continue on failure    User should be able to click order with Recieved Status in Retail Account Orders Page
    run keyword and continue on failure    User should be able to click message supplier button in Retail Account Order Details Page
    run keyword and continue on failure    User should be able to click cancel on message pop in Retail Account Order Details Page
    run keyword and continue on failure    User should be able to click message supplier button in Retail Account Order Details Page
    run keyword and continue on failure    User should be able to view message supplier pop up in Retail Account Order Details Page
    run keyword and continue on failure    User should be able to input text on message pop up text field in Retail Account Order Details Page
    run keyword and continue on failure    User should be able to upload photo on message pop in Retail Account Order Details Page
    run keyword and continue on failure    User should be able to send on message pop in Retail Account Order Details Page
    run keyword and continue on failure    User should be able to click back to order details in Retail Account Order Details Page
    run keyword and continue on failure    User should be able to click Back to Customer Orders in Retail Account Order Details Page

TC-102 - User should be able to view and message order with Submitted Status in Retail Account Orders Page
    [Tags]    Order Page
    run keyword and continue on failure    User should be able to view order with Submitted Status in Retail Account Orders Page
    run keyword and continue on failure    User should be able to click order with Submitted Status in Retail Account Orders Page
    run keyword and continue on failure    User should be able to click message supplier button in Retail Account Order Details Page
    run keyword and continue on failure    User should be able to click cancel on message pop in Retail Account Order Details Page
    run keyword and continue on failure    User should be able to click message supplier button in Retail Account Order Details Page
    run keyword and continue on failure    User should be able to view message supplier pop up in Retail Account Order Details Page
    run keyword and continue on failure    User should be able to input text on message pop up text field in Retail Account Order Details Page
    run keyword and continue on failure    User should be able to upload photo on message pop in Retail Account Order Details Page
    run keyword and continue on failure    User should be able to send on message pop in Retail Account Order Details Page
    run keyword and continue on failure    User should be able to click back to order details in Retail Account Order Details Page
    run keyword and continue on failure    User should be able to click Back to Customer Orders in Retail Account Order Details Page

TC-103 - User should be able to view and message order with Dispatched Status in Retail Account Orders Page
    [Tags]    Order Page
    run keyword and continue on failure    User should be able to view order with Dispatched Status in Retail Account Orders Page
    run keyword and continue on failure    User should be able to click order with Dispatched Status in Retail Account Orders Page
    run keyword and continue on failure    User should be able to click message supplier button in Retail Account Order Details Page
    run keyword and continue on failure    User should be able to click cancel on message pop in Retail Account Order Details Page
    run keyword and continue on failure    User should be able to click message supplier button in Retail Account Order Details Page
    run keyword and continue on failure    User should be able to view message supplier pop up in Retail Account Order Details Page
    run keyword and continue on failure    User should be able to input text on message pop up text field in Retail Account Order Details Page
    run keyword and continue on failure    User should be able to upload photo on message pop in Retail Account Order Details Page
    run keyword and continue on failure    User should be able to send on message pop in Retail Account Order Details Page
    run keyword and continue on failure    User should be able to click back to order details in Retail Account Order Details Page
    run keyword and continue on failure    User should be able to click Back to Customer Orders in Retail Account Order Details Page

TC-104 - User should be able to view and message order with Partially Dispatched Status in Retail Account Orders Page
    [Tags]    Order Page
    run keyword and continue on failure    User should be able to view order with Partially Dispatched Status in Retail Account Orders Page
    run keyword and continue on failure    User should be able to click order with Partially Dispatched Status in Retail Account Orders Page
    run keyword and continue on failure    User should be able to click message supplier button in Retail Account Order Details Page
    run keyword and continue on failure    User should be able to click cancel on message pop in Retail Account Order Details Page
    run keyword and continue on failure    User should be able to click message supplier button in Retail Account Order Details Page
    run keyword and continue on failure    User should be able to view message supplier pop up in Retail Account Order Details Page
    run keyword and continue on failure    User should be able to input text on message pop up text field in Retail Account Order Details Page
    run keyword and continue on failure    User should be able to upload photo on message pop in Retail Account Order Details Page
    run keyword and continue on failure    User should be able to send on message pop in Retail Account Order Details Page
    run keyword and continue on failure    User should be able to click back to order details in Retail Account Order Details Page
    run keyword and continue on failure    User should be able to click Back to Customer Orders in Retail Account Order Details Page

TC-105 - User should be able to view and message order with Orders with Returns Status in Retail Account Orders Page
    [Tags]    Order Page
    run keyword and continue on failure    User should be able to view order with Orders with Returns Status in Retail Account Orders Page
    run keyword and continue on failure    User should be able to click order with Orders with Returns Status in Retail Account Orders Page
    run keyword and continue on failure    User should be able to click message supplier button in Retail Account Order Details Page
    run keyword and continue on failure    User should be able to click cancel on message pop in Retail Account Order Details Page
    run keyword and continue on failure    User should be able to click message supplier button in Retail Account Order Details Page
    run keyword and continue on failure    User should be able to view message supplier pop up in Retail Account Order Details Page
    run keyword and continue on failure    User should be able to input text on message pop up text field in Retail Account Order Details Page
    run keyword and continue on failure    User should be able to upload photo on message pop in Retail Account Order Details Page
    run keyword and continue on failure    User should be able to send on message pop in Retail Account Order Details Page
    run keyword and continue on failure    User should be able to click back to order details in Retail Account Order Details Page
    run keyword and continue on failure    User should be able to click Back to Customer Orders in Retail Account Order Details Page

TC-106 - User should be able to view account return request page
    [Tags]    Return Page
    run keyword and continue on failure    User should be able to access Account page using double header in Retail Home page
    run keyword and continue on failure    User should be able to view account return request page
    run keyword and continue on failure    User should be able to view Return Request Panel

TC-107 - User should be able to click filter by status in Account Retrun Page
    [Tags]    Return Page
    run keyword and continue on failure    User should be able to click filter by status in Account Retrun Page
    run keyword and continue on failure    User should be able to click filter by status in Account Retrun Page

TC-108 - User should be able to apply filter status in Account Retrun Page
    [Tags]    Return Page
    run keyword and continue on failure    User should be able to click filter by status in Account Retrun Page
    run keyword and continue on failure    User should be able to filter status by In Progress in Account Return Page
    run keyword and continue on failure    User should be able to click filter by status in Account Retrun Page
    run keyword and continue on failure    User should be able to filter status by Declined in Account Return Page
    run keyword and continue on failure    User should be able to click filter by status in Account Retrun Page
    run keyword and continue on failure    User should be able to filter status by Accepted in Account Return Page
    run keyword and continue on failure    User should be able to click filter by status in Account Retrun Page
    run keyword and continue on failure    User should be able to filter status by ALL in Account Return Page

TC-109 - User should be able to apply date filter in Account Retrun Page
    [Tags]    Return Page
    run keyword and continue on failure    User should be able to click Date Filter in Return Page
    run keyword and continue on failure    User should be able to view Date Filter Elements in Account Return Page
    run keyword and continue on failure    User should be able to click Previous Month Button in Account Return Page
    run keyword and continue on failure    User should be able to click Next Month Button in Account Return Page
    run keyword and continue on failure    User should be able to click Month Drop Down Filter in Account Return Page
    run keyword and continue on failure    User should be able to select month from drop down in Account Return Page
    run keyword and continue on failure    User should be able to click Year Drop Down Filter in Account Return Page
    run keyword and continue on failure    User should be able to select year from drop down in Account Return Page
    run keyword and continue on failure    User should be able to select From Date in Account Return Page
    run keyword and continue on failure    User should be able to select To Date in Account Return Page
    run keyword and continue on failure    User should be able to click Date Filter Submit Button in Account Return Page

TC-110 - User should be able to click Date Filter Clear Button in Account Return Page
    [Tags]    Return Page
    run keyword and continue on failure    User should be able to click Date Filter in Return Page
    run keyword and continue on failure    User should be able to click Date Filter Clear Button in Account Return Page
    run keyword and continue on failure    User should be able to click Search Box in Account Return Page


TC-111 - User should be able to Search in Account Return Page
    [Tags]    Return Page
    run keyword and continue on failure    User should be able to click Search Box in Account Return Page
    run keyword and continue on failure    User should be able to Input Text in Search Box in Account Return Page
    run keyword and continue on failure    User should be able to click clear button from Search Box in Account Return Page

TC-112 - User should be able to arrange filter in Account Return Page
    [Tags]    Return Page
    run keyword and continue on failure    User should be able to click Arrage Filter in Account Return Page
    run keyword and continue on failure    User should be able to Filter by Old to New in Account Return Page
    run keyword and continue on failure    User should be able to click Arrage Filter in Account Return Page
    run keyword and continue on failure    User should be able to Filter by New to Old in Account Return Page

TC-113 - User should be able to view and message order with Accepted Status in Retail Account Return Page
    [Tags]    Return Page
    run keyword and continue on failure    User should be able to view order with Accepted Status in Retail Account Return Page
    run keyword and continue on failure    User should be able to click order with Accepted Status in Retail Account Return Page
    run keyword and continue on failure    User should be able to click message supplier button in Retail Account Return Details Page
    run keyword and continue on failure    User should be able to click cancel on message pop in Retail Account Return Details Page
    run keyword and continue on failure    User should be able to click message supplier button in Retail Account Return Details Page
    run keyword and continue on failure    User should be able to view message supplier pop up in Retail Account Return Details Page
    run keyword and continue on failure    User should be able to input text on message pop up text field in Retail Account Return Details Page
    run keyword and continue on failure    User should be able to upload photo on message pop in Retail Account Return Details Page
    run keyword and continue on failure    User should be able to send on message pop in Retail Account Return Details Page
    run keyword and continue on failure    User should be able to click back to order details in Retail Account Return Details Page
    run keyword and continue on failure    User should be able to click Back to Return Request in Retail Account Return Details Page

TC-114 - User should be able to view and message order with Declined Status in Retail Account Return Page
    [Tags]    Return Page
    run keyword and continue on failure    User should be able to view order with Declined Status in Retail Account Return Page
    run keyword and continue on failure    User should be able to click order with Declined Status in Retail Account Return Page
    run keyword and continue on failure    User should be able to click message supplier button in Retail Account Return Details Page
    run keyword and continue on failure    User should be able to click cancel on message pop in Retail Account Return Details Page
    run keyword and continue on failure    User should be able to click message supplier button in Retail Account Return Details Page
    run keyword and continue on failure    User should be able to view message supplier pop up in Retail Account Return Details Page
    run keyword and continue on failure    User should be able to input text on message pop up text field in Retail Account Return Details Page
    run keyword and continue on failure    User should be able to upload photo on message pop in Retail Account Return Details Page
    run keyword and continue on failure    User should be able to send on message pop in Retail Account Return Details Page
    run keyword and continue on failure    User should be able to click back to order details in Retail Account Return Details Page
    run keyword and continue on failure    User should be able to click Back to Return Request in Retail Account Return Details Page

TC-115 - User should be able to view and message order with In Progress Status in Retail Account Return Page
    [Tags]    Return Page
    run keyword and continue on failure    User should be able to view order with In Progress Status in Retail Account Return Page
    run keyword and continue on failure    User should be able to click order with In Progress Status in Retail Account Return Page
    run keyword and continue on failure    User should be able to click message supplier button in Retail Account Return Details Page
    run keyword and continue on failure    User should be able to click cancel on message pop in Retail Account Return Details Page
    run keyword and continue on failure    User should be able to click message supplier button in Retail Account Return Details Page
    run keyword and continue on failure    User should be able to view message supplier pop up in Retail Account Return Details Page
    run keyword and continue on failure    User should be able to input text on message pop up text field in Retail Account Return Details Page
    run keyword and continue on failure    User should be able to upload photo on message pop in Retail Account Return Details Page
    run keyword and continue on failure    User should be able to send on message pop in Retail Account Return Details Page
    run keyword and continue on failure    User should be able to click back to order details in Retail Account Return Details Page
    run keyword and continue on failure    User should be able to click Back to Return Request in Retail Account Return Details Page

TC-116 - User should be able to view account saved carts page
    [Tags]    Saved Carts Page
    run keyword and continue on failure    User should be able to access Account page using double header in Retail Home page
    run keyword and continue on failure    User should be able to view account saved carts page
    run keyword and continue on failure    reload page
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    User should be able to view Saved Carts Panel
    run keyword and continue on failure    User should be able to view Saved Carts List in Retail Account Saved Carts Page

TC-117 - User should be able to save Cart
    [Tags]    Saved Carts Page
    run keyword and continue on failure    User should be able to view All Parts Page
    run keyword and continue on failure    User should be able to add to cart random item in Retail Product Page
    run keyword and continue on failure    User should be able to view shopping cart pop up modal
    run keyword and continue on failure    User should be able to click view cart button from shopping cart pop up modal
    run keyword and continue on failure    User should be able to view shopping cart in Retail Shopping Cart Page
    run keyword and continue on failure    User should be able to click save cart button in Retail Shopping Cart Page
    run keyword and continue on failure    User should be able to edit Name for Edit Pop Up in Retail Account Saved Carts Details Page
    run keyword and continue on failure    User should be able to edit Description for Edit Pop Up in Retail Account Saved Carts Details Page
    run keyword and continue on failure    User shoulld be albe to click Update for Edit Pop Up in Retail Account Saved Carts Details Page

TC-118 - User should be able to select one Saved Carts in Retail Account Saved Carts Page
    [Tags]    Saved Carts Page
    run keyword and continue on failure    User should be able to select one Saved Carts in Retail Account Saved Carts Page
    run keyword and continue on failure    User should be able to view Saved Carts Details in Retail Account Saved Carts Page
    run keyword and continue on failure    User should be able to click Edit in Retail Account Saved Carts Details Page
    run keyword and continue on failure    User shoulld be albe to click Cancel for Edit Pop Up in Retail Account Saved Carts Details Page
    run keyword and continue on failure    User should be able to click Edit in Retail Account Saved Carts Details Page
    run keyword and continue on failure    User should be able to view Edit Pop Up in Retail Account Saved Carts Details Page
    run keyword and continue on failure    User should be able to edit Name for Edit Pop Up in Retail Account Saved Carts Details Page
    run keyword and continue on failure    User should be able to edit Description for Edit Pop Up in Retail Account Saved Carts Details Page
    run keyword and continue on failure    User shoulld be albe to click Update for Edit Pop Up in Retail Account Saved Carts Details Page

TC-119 - User should be albe to click Restore in Retail Account Saved Carts Details Page
    [Tags]    Saved Carts Page
#    run keyword and continue on failure    reload page
    run keyword and continue on failure    User should be albe to click Restore in Retail Account Saved Carts Details Page
    run keyword and continue on failure    Browse Back Button

TC-120 - User should be able to click Delete in Retail Account Saved Carts Details Page
    [Tags]    Saved Carts Page
    run keyword and continue on failure    User should be able to click Delete in Retail Account Saved Carts Details Page
    run keyword and continue on failure    User should be able to click No for Delete Pop Up in Retail Account Saved Carts Details Page
    run keyword and continue on failure    User should be albe to click Back to Saved Carts Button in Retail Account Saved Carts Details Page

TC-121 - User should be able to click Delete in Retail Account Saved Carts Page
    [Tags]    Saved Carts Page
    run keyword and continue on failure    User should be able to click Delete in Retail Account Saved Carts Page
    run keyword and continue on failure    User should be able to click No for Delete Pop Up in Retail Account Saved Carts Page

TC-122 - User should be able to select vehicle using Rego in Retail Account Vehicle Listing Page
    [Tags]    Vehicle Listing Page
    run keyword and continue on failure    User should be able to click Select Your Vehicle
    run keyword and continue on failure    User should be able to view add vehicle in Retail Select Vehicle
    run keyword and continue on failure    User should be able to click add new vehicle in Retail Select Vehicle
    run keyword and continue on failure    User should be able to view add vehicle in Retail Select Vehicle
    run keyword and continue on failure    User should be albe to search invalid rego vehicle in Retail Select Vehicle
    run keyword and continue on failure    User should be albe to click search again on no search result modal in Retail Select Vehicle
    run keyword and continue on failure    User should be able to select state in Retail Select Vehicle
    run keyword and continue on failure    User should be able to input rego in Retail Select Vehicle
    run keyword and continue on failure    User should be albe to click search button in Retail Select Vehicle
    run keyword and continue on failure    User should be able to click select this vehicle in Retail Select Vehicle
    run keyword and continue on failure    TC Sleep

TC-123 - User should be able to add new vehicle using Manual Search in Retail Account Vehicle Listing Page
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
    run keyword and continue on failure    User should be able to click select & save vehicle in Retail Select Vehicle
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    reload page
    run keyword and continue on failure    TC Sleep

TC-124 - User should be able to view account vehicle listing page
    [Tags]    Vehicle Listing Page
    run keyword and continue on failure    User should be able to access Account page using double header in Retail Home page
    run keyword and continue on failure    User should be able to view account vehicle listing page
    run keyword and continue on failure    User should be able to view vehicle listing Panel

TC-125 - User should be able to click shop this vehicle in Retail Account Vehicle Listing Page
    [Tags]    Vehicle Listing Page
    run keyword and continue on failure    User should be able to click shop this vehicle in Retail Account Vehicle Listing Page
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    Browse Back Button

#TC-121 - User should be able to click add new vehicle in Retail Account Vehicle Listing Page
#    [Tags]    Vehicle Listing Page
#    run keyword and continue on failure    User should be able to click add new vehicle in Retail Account Vehicle Listing Page
#    run keyword and continue on failure    User should be able to click Select Your Vehicle

TC-126 - User should be able to click delete in Retail Account Vehicle Listing Page
    [Tags]    Vehicle Listing Page
    run keyword and continue on failure    User should be able to click delete in Retail Account Vehicle Listing Page
    run keyword and continue on failure    User should be able to click no on confirm deletion in Retail Account Vehicle Listing Page
    run keyword and continue on failure    User should be able to click delete in Retail Account Vehicle Listing Page
    run keyword and continue on failure    User should be able to click yes on confirm deletion in Retail Account Vehicle Listing Page
    run keyword and continue on failure    reload page

TC-127 - User should be able to view message page
    [Tags]    Message Page
    run keyword and continue on failure    User should be able to access Account page using double header in Retail Home page
    run keyword and continue on failure    User should be able to view message page

TC-128 - User should be able to filter message in message page
    [Tags]    Message Page
    run keyword and continue on failure    User should be able to click filter messages in Retail Account Messages Page
    run keyword and continue on failure    User should be able to select General Enquiry filter in Retail Account Messages Page
    run keyword and continue on failure    User should be able to click filter messages in Retail Account Messages Page
    run keyword and continue on failure    User should be able to select Return Enquiry filter in Retail Account Messages Page
    run keyword and continue on failure    User should be able to click filter messages in Retail Account Messages Page
    run keyword and continue on failure    User should be able to select Order Enquiry filter in Retail Account Messages Page
    run keyword and continue on failure    User should be able to click filter messages in Retail Account Messages Page
    run keyword and continue on failure    User should be able to select Product Enquiry filter in Retail Account Messages Page
    run keyword and continue on failure    User should be able to click filter messages in Retail Account Messages Page
    run keyword and continue on failure    User should be able to select All filter in Retail Account Messages Page

TC-129 - User should be able to apply date filter in Retail Account Messages Page
    [Tags]    Message Page
    run keyword and continue on failure    User should be able to click Date Filter in Retail Account Messages Page
    run keyword and continue on failure    User should be able to view Date Filter Elements in Retail Account Messages Page
    run keyword and continue on failure    User should be able to click Previous Month Button in Retail Account Messages Page
    run keyword and continue on failure    User should be able to click Next Month Button in Retail Account Messages Page
    run keyword and continue on failure    User should be able to click Month Drop Down Filter in Retail Account Messages Page
    run keyword and continue on failure    User should be able to select month from drop down in Retail Account Messages Page
    run keyword and continue on failure    User should be able to click Year Drop Down Filter in Retail Account Messages Page
    run keyword and continue on failure    User should be able to select year from drop down in Retail Account Messages Page
    run keyword and continue on failure    User should be able to select From Date in Retail Account Messages Page
    run keyword and continue on failure    User should be able to select To Date in Retail Account Messages Page
    run keyword and continue on failure    User should be able to click Date Filter Submit Button in Retail Account Messages Page


TC-130 - User should be able to click Date Filter Clear Button in Retail Account Messages Page
    [Tags]    Message Page
    run keyword and continue on failure    User should be able to click Date Filter in Retail Account Messages Page
    run keyword and continue on failure    User should be able to click Date Filter Clear Button in Retail Account Messages Page
    run keyword and continue on failure    User should be able to click Search Box in Retail Account Messages Page

TC-131 - User should be able to search message in Retail Account Messages Page
    [Tags]    Message Page
    run keyword and continue on failure    User should be able to click Search Box in Retail Account Messages Page
    run keyword and continue on failure    User should be able to Input Text in Search Box in Retail Account Messages Page
    run keyword and continue on failure    User should be able to click clear button from Search Box in Retail Account Messages Page

TC-132 - User should be able to view and message read General Enquiry in Retail Account Message Page
    [Tags]    Message Page
    run keyword and continue on failure    User should be able to view read General Enquiry in Retail Account Message Page
    run keyword and continue on failure    User should be able to click read General Enquiry in Retail Account Message Page
    run keyword and continue on failure    User should be able to Input Text on Message in Retail Account Messages Details Page
    run keyword and continue on failure    User should be able to upload image in Retail Account Messages Details Page
    run keyword and continue on failure    User should be able to click send in Retail Account Messages Details Page
    run keyword and continue on failure    User should be able to click Back to All Message in Retail Account Messages Details Page
    run keyword and continue on failure    User should be able to view message page

TC-133 - User should be able to view and message read Order Enquiry in Retail Account Message Page
    [Tags]    Message Page
    run keyword and continue on failure    User should be able to view read Order Enquiry in Retail Account Message Page
    run keyword and continue on failure    User should be able to click read Order Enquiry in Retail Account Message Page
    run keyword and continue on failure    User should be able to Input Text on Message in Retail Account Messages Details Page
    run keyword and continue on failure    User should be able to upload image in Retail Account Messages Details Page
    run keyword and continue on failure    User should be able to click send in Retail Account Messages Details Page
    run keyword and continue on failure    User should be able to click Back to All Message in Retail Account Messages Details Page
    run keyword and continue on failure    User should be able to view message page

TC-134 - User should be able to view and message read Return Enquiry in Retail Account Message Page
    [Tags]    Message Page
    run keyword and continue on failure    User should be able to view read Return Enquiry in Retail Account Message Page
    run keyword and continue on failure    User should be able to click read Return Enquiry in Retail Account Message Page
    run keyword and continue on failure    User should be able to Input Text on Message in Retail Account Messages Details Page
    run keyword and continue on failure    User should be able to upload image in Retail Account Messages Details Page
    run keyword and continue on failure    User should be able to click send in Retail Account Messages Details Page
    run keyword and continue on failure    User should be able to click Back to All Message in Retail Account Messages Details Page
    run keyword and continue on failure    User should be able to view message page

TC-135 - User should be able to view and message read Order Enquiry in Retail Account Message Page
    [Tags]    Message Page
    run keyword and continue on failure    User should be able to view read Order Enquiry in Retail Account Message Page
    run keyword and continue on failure    User should be able to click read Order Enquiry in Retail Account Message Page
    run keyword and continue on failure    User should be able to Input Text on Message in Retail Account Messages Details Page
    run keyword and continue on failure    User should be able to upload image in Retail Account Messages Details Page
    run keyword and continue on failure    User should be able to click send in Retail Account Messages Details Page
    run keyword and continue on failure    User should be able to click Back to All Message in Retail Account Messages Details Page
    run keyword and continue on failure    User should be able to view message page

TC-136 - User should be able to view and message read Product Enquiry in Retail Account Message Page
    [Tags]    Message Page
    run keyword and continue on failure    User should be able to view read Product Enquiry in Retail Account Message Page
    run keyword and continue on failure    User should be able to click read Product Enquiry in Retail Account Message Page
    run keyword and continue on failure    User should be able to Input Text on Message in Retail Account Messages Details Page
    run keyword and continue on failure    User should be able to upload image in Retail Account Messages Details Page
    run keyword and continue on failure    User should be able to click send in Retail Account Messages Details Page
    run keyword and continue on failure    User should be able to click Back to All Message in Retail Account Messages Details Page
    run keyword and continue on failure    User should be able to view message page

TC-137 - User should be able to view and message unread General Enquiry in Retail Account Message Page
    [Tags]    Message Page
    run keyword and continue on failure    User should be able to view unread General Enquiry in Retail Account Message Page
    run keyword and continue on failure    User should be able to click unread General Enquiry in Retail Account Message Page
    run keyword and continue on failure    User should be able to Input Text on Message in Retail Account Messages Details Page
    run keyword and continue on failure    User should be able to upload image in Retail Account Messages Details Page
    run keyword and continue on failure    User should be able to click send in Retail Account Messages Details Page
    run keyword and continue on failure    User should be able to click Back to All Message in Retail Account Messages Details Page
    run keyword and continue on failure    User should be able to view message page

TC-138 - User should be able to view and message unread Return Enquiry in Retail Account Message Page
    [Tags]    Message Page
    run keyword and continue on failure    User should be able to view unread Return Enquiry in Retail Account Message Page
    run keyword and continue on failure    User should be able to click unread Return Enquiry in Retail Account Message Page
    run keyword and continue on failure    User should be able to Input Text on Message in Retail Account Messages Details Page
    run keyword and continue on failure    User should be able to upload image in Retail Account Messages Details Page
    run keyword and continue on failure    User should be able to click send in Retail Account Messages Details Page
    run keyword and continue on failure    User should be able to click Back to All Message in Retail Account Messages Details Page
    run keyword and continue on failure    User should be able to view message page

TC-139 - User should be able to view and message unread Order Enquiry in Retail Account Message Page
    [Tags]    Message Page
    run keyword and continue on failure    User should be able to view unread Order Enquiry in Retail Account Message Page
    run keyword and continue on failure    User should be able to click unread Order Enquiry in Retail Account Message Page
    run keyword and continue on failure    User should be able to Input Text on Message in Retail Account Messages Details Page
    run keyword and continue on failure    User should be able to upload image in Retail Account Messages Details Page
    run keyword and continue on failure    User should be able to click send in Retail Account Messages Details Page
    run keyword and continue on failure    User should be able to click Back to All Message in Retail Account Messages Details Page
    run keyword and continue on failure    User should be able to view message page

TC-140 - User should be able to view and message unread Product Enquiry in Retail Account Message Page
    [Tags]    Message Page
    run keyword and continue on failure    User should be able to view unread Product Enquiry in Retail Account Message Page
    run keyword and continue on failure    User should be able to click unread Product Enquiry in Retail Account Message Page
    run keyword and continue on failure    User should be able to Input Text on Message in Retail Account Messages Details Page
    run keyword and continue on failure    User should be able to upload image in Retail Account Messages Details Page
    run keyword and continue on failure    User should be able to click send in Retail Account Messages Details Page
    run keyword and continue on failure    User should be able to click Back to All Message in Retail Account Messages Details Page
    run keyword and continue on failure    User should be able to view message page

TC-141 - User should be able to view Account Details page
    [Tags]    Account Details Page
    run keyword and continue on failure    User should be able to access Account page using double header in Retail Home page
    run keyword and continue on failure    User should be able to view account details page

TC-142 - User should be able to edit account details in Retail Account Details Page
    [Tags]    Account Details Page
    run keyword and continue on failure    User should be able to edit First name in Retail Account Details Page
    run keyword and continue on failure    User should be able to edit Last name in Retail Account Details Page
    run keyword and continue on failure    User should be able to edit Phone Number in Retail Account Details Page
    run keyword and continue on failure    User should be able to edit Landline Number in Retail Account Details Page
    run keyword and continue on failure    User should be able to click Update in Retail Account Details Page
    run keyword and continue on failure    User should be able to view update confirmation modal in Retail Account Details Page
    run keyword and continue on failure    User should be able to click No on update confirmation modal in Retail Account Details Page

TC-143 - User should be able to view change password page
    [Tags]    Change Password Page
    run keyword and continue on failure    User should be able to access Account page using double header in Retail Home page
    run keyword and continue on failure    User should be able to view change password page

TC-144 - User should be able to edit password in Retail Account Details Page
    [Tags]    Change Password Page
    run keyword and continue on failure    User should be ablle to edit current password in Retail Account Change Pass Page
    run keyword and continue on failure    User should be ablle to edit new password in Retail Account Change Pass Page
    run keyword and continue on failure    User should be ablle to edit confirm password in Retail Account Change Pass Page
    run keyword and continue on failure    User should be able to view new pass by clicking eye button in Retail Account Change Pass Page
    run keyword and continue on failure    User should be able to view confirm pass by clicking eye button in Retail Account Change Pass Page
    run keyword and continue on failure    User should be able to hide new pass by clicking eye button in Retail Account Change Pass Page
    run keyword and continue on failure    User should be able to hide confirm pass by clicking eye button in Retail Account Change Pass Page
    run keyword and continue on failure    User should be able to click Update button in Retail Account Change Pass Page
    run keyword and continue on failure    User should be able to view update confirmation modal in Retail Account Change Pass Page
    run keyword and continue on failure    User should be able to click No on update confirmation modal in Retail Account Change Pass Page

TC-145 - User should be able to view password error messages in Retail Account Details Page
    [Tags]    Change Password Page
    run keyword and continue on failure    User should be able to view current pass required error in Retail Account Change Pass Page
    run keyword and continue on failure    User should be able to view new pass required error in Retail Account Change Pass Page
    run keyword and continue on failure    User should be able to view confirm pass required error in Retail Account Change Pass Page
    run keyword and continue on failure    User should be able to view new pass not match error in Retail Account Change Pass Page
    run keyword and continue on failure    User should be able to view confirm pass not match error in Retail Account Change Pass Page

TC-146 - User should be able to view company details page
    [Tags]    Company Details Page
    run keyword and continue on failure    User should be able to access Account page using double header in Retail Home page
    run keyword and continue on failure    User should be able to view company details page
#
#TC-143 - User should be able to edit company details page
#    [Tags]    Company Details Page
##    run keyword and continue on failure    User should be able to input valid Account number in Retail Account Company Details Page
##    run keyword and continue on failure    User should be able to input valid Company name in Retail Account Company Details Page
#    run keyword and continue on failure    User should be able to input valid Trading Name in Retail Account Company Details Page
#    run keyword and continue on failure    User should be able to input valid Postal Address Line 1 in Retail Account Company Details Page
#    run keyword and continue on failure    User should be able to input valid Postal Address Line 2 in Retail Account Company Details Page
#    run keyword and continue on failure    User should be able to input valid Postal Suburb in Retail Account Company Details Page
#    run keyword and continue on failure    User should be able to input valid Postal Code in Retail Account Company Details Page
#    run keyword and continue on failure    User should be able to click Postal Address State Drop Down in Retail Account Company Details Page
#    run keyword and continue on failure    User should be able to select Postal Address State in Retail Account Company Details Page
#    run keyword and continue on failure    User should be able to check/uncheck Del Add Same As Postal Add Checkbox in Retail Account Company Details Page
#    run keyword and continue on failure    User should be able to check/uncheck Del Add Same As Postal Add Checkbox in Retail Account Company Details Page
#    run keyword and continue on failure    User should be able to input valid Delivery Address Line 1 in Retail Account Company Details Page
#    run keyword and continue on failure    User should be able to input valid Delivery Address Line 2 in Retail Account Company Details Page
#    run keyword and continue on failure    User should be able to input valid Delivery Suburb in Retail Account Company Details Page
#    run keyword and continue on failure    User should be able to input valid Delivery Code in Retail Account Company Details Page
#    run keyword and continue on failure    User should be able to click Delivery Address State Drop Down in Retail Account Company Details Page
#    run keyword and continue on failure    User should be able to select Delivery Address State in Retail Account Company Details Page
##    run keyword and continue on failure    User should be able to input valid Email Address in Retail Account Company Details Page
#    run keyword and continue on failure    User should be able to input valid Company Phone Number in Retail Account Company Details Page
#    run keyword and continue on failure    User should be able to input valid First Name in Retail Account Company Details Page
#    run keyword and continue on failure    User should be able to input valid Last Name in Retail Account Company Details Page
#    run keyword and continue on failure    User should be able to click opening hours in Retail Account Company Details Page
#    run keyword and continue on failure    User should be able to select opening hours value in Retail Account Company Details Page
#    run keyword and continue on failure    User should be able to click closing hours in Retail Account Company Details Page
#    run keyword and continue on failure    User should be able to select closing hours value in Retail Account Company Details Page
##    run keyword and continue on failure    User should be able to click save button in Retail Account Company Details Page
##    run keyword and continue on failure    User should be able to click no on update cofirmation modal in Retail Account Company Details Page



TC-147 - User should be able to logout
    [Tags]    Logout
    run keyword and continue on failure    User should be able to logout using double header

Test Teardown
    Run Keywords    Close Browser
    run keyword    Save Log DIR