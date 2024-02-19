*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary
Library    Process
#Library  FakerLibrary

Resource  ../../../../../Resource/testdata/Retail/HK_Config/S2/HK_S2_Bronze_Config.robot
Resource  ../../../../../Resource/testdata/Retail/Retail_Variable.robot
Resource  ../../../../../Resource/testdata/Retail/Retail_Resource.robot

*** Test Cases ***
Test Setup  Run Keywords   Open Chrome Browser HK
Screen Shot DIR  Run Keywords    Retail Screent Shot DIR HK

TC-001 - Verify Login Page
    [Tags]    TC001    Login Page
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    User should be able to click Translate to English Button
    run keyword and continue on failure    Verify Login Page
    run keyword and continue on failure    Verify Login Page Elements

TC-002 - Input Invalid Username
    [Tags]    Login Page
    run keyword and continue on failure    Input Invalid Username

TC-003 - Input Invalid Password
    [Tags]    Login Page
    run keyword and continue on failure    Input Invalid Password

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

TC-012 - User should be able to view HK Registration Form
    [Tags]    Login Page    Registration
    run keyword and continue on failure    User should be able to view HK Registration Form

TC-013 - User should be able to input details in Registration Form Page
    [Tags]    Login Page    Registration
#    run keyword and continue on failure    User should be able to click Preferred Supplier Dropdown for HK Registration Form
#    run keyword and continue on failure    User should be able to select 1 Preferred Supplier from Dropdown for HK Registration Form
    run keyword and continue on failure    User should be able to input Company Name
    run keyword and continue on failure    User should be able to click Postal Address Dropdown for HK Registration Form
    run keyword and continue on failure    User should be able to input text in Postal Address for HK Registration Form
    run keyword and continue on failure    User should be able to select Random Postal Address from suggestions for HK Registration Form
    run keyword and continue on failure    User should be able to input Postal Address Line 2
    run keyword and continue on failure    User should be able to click Area Dropdown in Postal Address for HK Registration Form
    run keyword and continue on failure    User should be able to select Random Postal Address Area for HK Registration Form
    run keyword and continue on failure    User should be able to click District Dropdown in Postal Address for HK Registration Form
    run keyword and continue on failure    User should be able to select Random Postal Address District for HK Registration Form
    run keyword and continue on failure    User should be able to click Delivery Address Dropdown for HK Registration Form
    run keyword and continue on failure    User should be able to input text in Deliver Address for HK Registration Form
    run keyword and continue on failure    User should be able to select Random Delivery Address from suggestions for HK Registration Form
    run keyword and continue on failure    User should be able to input Delivery Address Line 2
    run keyword and continue on failure    User should be able to click Area Dropdown in Delivery Address for HK Registration Form
    run keyword and continue on failure    User should be able to select Random Delivery Address Area for HK Registration Form
    run keyword and continue on failure    User should be able to click District Dropdown in Delivery Address for HK Registration Form
    run keyword and continue on failure    User should be able to select Random Delivery Address District for HK Registration Form
    run keyword and continue on failure    User should be able to click Opening Hours
    run keyword and continue on failure    User should be able to select Opening Hours
    run keyword and continue on failure    User should be able to click Closing Hours
    run keyword and continue on failure    User should be able to select Closing Hours
    run keyword and continue on failure    User should be able to input Contact First Name
    run keyword and continue on failure    User should be able to input Contact Last Name
    run keyword and continue on failure    User should be able to input Email Address
    run keyword and continue on failure    User should be able to input Company Phone Number for HK Registration Form
    run keyword and continue on failure    User should be able to input Landline Number for HK Registration Form
    run keyword and continue on failure    User should be able to click Back to Login Button

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

#TC-018 - User should be able to view filters & oil menus in Retail Home Page
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to view filters & oil menus in Retail Home Page
#
#TC-019 - User should be able to view belts & timing parts menus in Retail Home Page
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to view belts & timing parts menus in Retail Home Page
#
#TC-020 - User should be able to view cooling menus in Retail Home Page
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to view cooling menus in Retail Home Page
#
#TC-021 - User should be able to view brakes menus in Retail Home Page
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to view brakes menus in Retail Home Page
#
#TC-022 - User should be able to view suspension menus in Retail Home Page
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to view suspension menus in Retail Home Page
#
#TC-023 - User should be able to view electrical menus in Retail Home Page
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to view electrical menus in Retail Home Page
#
#TC-024 - User should be able to view engine parts menus in Retail Home Page
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to view engine parts menus in Retail Home Page

TC-024 - User should be able to view body parts menus in HK Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to view body parts menus in HK Retail Home Page

TC-024 - User should be able to view Chemicals menus in HK Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to view Chemicals menus in HK Retail Home Page

TC-024 - User should be able to view Maintenance Item menus in HK Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to view Maintenance Item menus in HK Retail Home Page

TC-024 - User should be able to view Repair Parts menus in HK Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to view Repair Parts menus in HK Retail Home Page

TC-024 - User should be able to view Toyota Hybrid menus in HK Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to view Toyota Hybrid menus in HK Retail Home Page

TC-025 - User should be able to select 1 filter from selected category in HK Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to select 1 filter from selected category in HK Retail Home Page

TC-026 - User should be able to click 1 sub filter from selected category in Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to click 1 sub filter from selected category in Retail Home Page
    run keyword and continue on failure    Browse Back Button

#TC-026 - User should be able to click shop by category parts & service in HK Retail Home Page
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to click shop by category parts & service in HK Retail Home Page
#    run keyword and continue on failure    User should be able to Go to Home page
#
#TC-027 - User should be able to click shop by category paint & panel in HK Retail Home Page
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to click shop by category paint & panel in HK Retail Home Page
#    run keyword and continue on failure    User should be able to Go to Home page
#
#TC-028 - User should be able to click shop by category batteries & electrical in HK Retail Home Page
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to click shop by category batteries & electrical in HK Retail Home Page
#    run keyword and continue on failure    User should be able to Go to Home page
#
#TC-029 - User should be able to click shop by category car care & accessories in HK Retail Home Page
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to click shop by category car care & accessories in HK Retail Home Page
#    run keyword and continue on failure    User should be able to Go to Home page
#
#TC-030 - User should be able to click shop by category performance in HK Retail Home Page
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to click shop by category performance in HK Retail Home Page
#    run keyword and continue on failure    User should be able to Go to Home page
#
#TC-031 - User should be able to click shop by category oils & fluids in HK Retail Home Page
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to click shop by category oils & fluids in HK Retail Home Page
#    run keyword and continue on failure    User should be able to Go to Home page
#
#TC-032 - User should be able to click shop by category in car tech in HK Retail Home Page
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to click shop by category in car tech in HK Retail Home Page
#    run keyword and continue on failure    User should be able to Go to Home page
#
#TC-033 - User should be able to click shop by category other in HK Retail Home Page
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to click shop by category other in HK Retail Home Page
#    run keyword and continue on failure    User should be able to Go to Home page
#    run keyword and continue on failure    User should be able to view All products

#TC-027 - User should be able to click shop by category accessories & audio in Retail Home Page
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to click shop by category accessories & audio in Retail Home Page
#    run keyword and continue on failure    User should be able to Go to Home page
#
#TC-028 - User should be able to click shop by category aircon & heating in Retail Home Page
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to click shop by category aircon & heating in Retail Home Page
#    run keyword and continue on failure    User should be able to Go to Home page
#
#TC-029 - User should be able to click shop by category belts & timing parts in Retail Home Page
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to click shop by category belts & timing parts in Retail Home Page
#    run keyword and continue on failure    User should be able to Go to Home page
#
#TC-030 - User should be able to click shop by category body parts in Retail Home Page
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to click shop by category body parts in Retail Home Page
#    run keyword and continue on failure    User should be able to Go to Home page
#
#TC-031 - User should be able to click shop by category brakes in Retail Home Page
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to click shop by category brakes in Retail Home Page
#    run keyword and continue on failure    User should be able to Go to Home page
#
#TC-032 - User should be able to click shop by category clutch & transmissions in Retail Home Page
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to click shop by category clutch & transmissions in Retail Home Page
#    run keyword and continue on failure    User should be able to Go to Home page
#
#TC-033 - User should be able to click shop by category cooling in Retail Home Page
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to click shop by category cooling in Retail Home Page
#    run keyword and continue on failure    User should be able to Go to Home page
#
#TC-034 - User should be able to click shop by category electrical in Retail Home Page
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to click shop by category electrical in Retail Home Page
#    run keyword and continue on failure    User should be able to Go to Home page
#
#TC-035 - User should be able to click shop by category engine parts in Retail Home Page
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to click shop by category engine parts in Retail Home Page
#    run keyword and continue on failure    User should be able to Go to Home page
#
#TC-036 - User should be able to click shop by category exhaust & emission in Retail Home Page
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to click shop by category exhaust & emission in Retail Home Page
#    run keyword and continue on failure    User should be able to Go to Home page
#
#TC-037 - User should be able to click shop by category filters & oil in Retail Home Page
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to click shop by category filters & oil in Retail Home Page
#    run keyword and continue on failure    User should be able to Go to Home page
#
#TC-038 - User should be able to click shop by category fuel system in Retail Home Page
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to click shop by category fuel system in Retail Home Page
#    run keyword and continue on failure    User should be able to Go to Home page

TC-038 - User should be able to click shop by category Body Parts in HK Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to click shop by category Body Parts in HK Retail Home Page
    run keyword and continue on failure    User should be able to Go to Home page

TC-038 - User should be able to click shop by category Chemicals in HK Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to click shop by category Chemicals in HK Retail Home Page
    run keyword and continue on failure    User should be able to Go to Home page

TC-038 - User should be able to click shop by category Maintenance in HK Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to click shop by category Maintenance in HK Retail Home Page
    run keyword and continue on failure    User should be able to Go to Home page

TC-038 - User should be able to click shop by category Repair Parts in HK Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to click shop by category Repair Parts in HK Retail Home Page
    run keyword and continue on failure    User should be able to Go to Home page

TC-038 - User should be able to click shop by category Toyota Hybrid in HK Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to click shop by category Toyota Hybrid in HK Retail Home Page
    run keyword and continue on failure    User should be able to Go to Home page

TC-039 - User should be able to input text on search bar
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to input text on search bar

TC-040 - User should be able to click searched text
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to click searched text

TC-041 - User should be able to view All Products Page in HK Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to view All products
    run keyword and continue on failure    TC Sleep

TC-042 - User should be able to side filter product
    [Tags]    All Products Page
    run keyword and continue on failure    User should be able to breakdown L1 product filter in Retail All Products Page
    run keyword and continue on failure    User should be able to breakdown L2 product filter in Retail All Products Page
    run keyword and continue on failure    User should be able to breakdown L3 product filter in Retail All Products Page
#    run keyword and continue on failure    User should be albe to check/uncheck 1 product sub category in Retail All Products Page

TC-043 - User should be able to filter product
    [Tags]    All Products Page
    run keyword and continue on failure    User should be able to view All products
    run keyword and continue on failure    User should be able to filter product name from A to Z

TC-044 - User should be able to view product Out of Stock
    [Tags]    All Products Page
    run keyword and continue on failure    User should be able to view product Out of Stock in HK Retail Products Page
#    run keyword and continue on failure    User should be albe to click enquire now button for out of stock in HK Retail Product Page
#    run keyword and continue on failure    User should be able to message out of stock product in Retail Product Page
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
    run keyword and continue on failure    User should be able to add to cart random item in Retail Product Page
    run keyword and continue on failure    User should be able to add to cart random item in Retail Product Page

TC-048 - User should be able to view shopping cart pop up modal
    [Tags]    Shopping Cart Page
    run keyword and continue on failure    User should be able to view shopping cart pop up modal
    run keyword and continue on failure    User should be able to delete item from shopping cart pop up modal
    run keyword and continue on failure    User should be able to click view cart button from shopping cart pop up modal

TC-049 - User should be able to view shopping cart in Retail Shopping Cart Page
    [Tags]    Shopping Cart Page
    run keyword and continue on failure    User should be able to view shopping cart in HK Retail Shopping Cart Page

TC-046 - User should be able to click save cart button in Retail Shopping Cart Page
    [Tags]    Shopping Cart Page
    run keyword and continue on failure    User should be able to click save cart button in Retail Shopping Cart Page
    run keyword and continue on failure    User should be able to edit Name for Edit Pop Up in Retail Account Saved Carts Details Page
    run keyword and continue on failure    User should be able to edit Description for Edit Pop Up in Retail Account Saved Carts Details Page
    run keyword and continue on failure    User shoulld be albe to click Update for Edit Pop Up in Retail Account Saved Carts Details Page
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    User should be able to click Restore in Retail Account Saved Carts Page

TC-050 - User should be able to edit shopping cart items in Retail Shopping Cart Page
    [Tags]    Shopping Cart Page
    run keyword and continue on failure    User should be able to view 1 cart item in Retail Shopping Cart Page
    run keyword and continue on failure    User should be able to click 1 product cart item in Retail Shopping Cart Page
    run keyword and continue on failure    Browse Back Button
    run keyword and continue on failure    User should be able to click add item qty in Retail Shopping Cart Page
    run keyword and continue on failure    User should be able to click remove item qty in Retail Shopping Cart Page
    run keyword and continue on failure    User should be able to input item qty in Retail Shopping Cart Page

##TC-048 - User should be able to delete shopping cart items in Retail Shopping Cart Page
##    [Tags]    Shopping Cart Page
##    run keyword and continue on failure    User should be able to click delete cart item button in Retail Shopping Cart Page

TC-051 - User should be able to click continue shopping button in Retail Shopping Cart Page
    [Tags]    Shopping Cart Page
    run keyword and continue on failure    User should be able to click continue shopping button in Retail Shopping Cart Page
    run keyword and continue on failure    Browse Back Button

TC-052 - User should be able to click checkout button in Retail Shopping Cart Page
    [Tags]    Shopping Cart Page
    run keyword and continue on failure    User should be able to click checkout button in Retail Shopping Cart Page
    run keyword and continue on failure    TC Sleep

TC-053 - User should be able to view checkout in Retail Checkout Page
    [Tags]    Checkout Page
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    User should be able to view checkout in HK Retail Checkout Page

TC-054 - User should be able to view payment method in HK Retail Checkout Page
    [Tags]    Checkout Page
    run keyword and continue on failure    User should be able to view payment method in HK Retail Checkout Page
    run keyword and continue on failure    Select Credit Card Frame

TC-055 - User should be able to input card details
    [Tags]    Checkout Page
    run keyword and continue on failure    User should be able to input jcb card number
    run keyword and continue on failure    User should be albe to input Exp Date
    run keyword and continue on failure    User should be albe to input CVV
    run keyword and continue on failure    User should be albe to input Card Holders Name
    run keyword and continue on failure    User should be albe to input Email

TC-056 - User should be able to click continue payment
    [Tags]    Checkout Page
    run keyword and continue on failure    User should be able to click continue payment button
    run keyword and continue on failure    User should be able to view 2C2P Modal

TC-057 - User should be able to input otp
    [Tags]    Checkout Page
    run keyword and continue on failure    User should be able to Input OTP

TC-058 - User should be able to click Submit button on 2C2P
    [Tags]    Checkout Page
    run keyword and continue on failure    User should be able to click Submit button on 2C2P
    run keyword and continue on failure    TC Sleep

#TC-057 - User should be able to view confirmation
#    [Tags]    Checkout Page
#    run keyword and continue on failure    User should be able to view 2C2P Confirmation

TC-059 - User should be able to view place order in HK Retail Place Order Page
    [Tags]    Checkout Page
    run keyword and continue on failure    Unselect Credit Card Frame
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    User should be able to view place order in HK Retail Place Order Page
    run keyword and continue on failure    User should be able to click back to home button in Retail Place Order Page

TC-060 - User should be able to view account orders page
    [Tags]    Order Page
    run keyword and continue on failure    User should be able to access account from top navigaton
    run keyword and continue on failure    User should be able to view account orders page

TC-061 - User should be able to apply filter status in Retail Account Orders Page
    [Tags]    Order Page
    run keyword and continue on failure    User should be able to click filter status in Account Order Page
    run keyword and continue on failure    User should be able to check all filter status in HK Account Order Page
    run keyword and continue on failure    User should be able to filter status by Order with Returns in Account Order Page
    run keyword and continue on failure    User should be able to click filter status in Account Order Page
    run keyword and continue on failure    User should be able to filter status by Processing in HK Account Order Page
    run keyword and continue on failure    User should be able to click filter status in Account Order Page
    run keyword and continue on failure    User should be able to filter status by Delivered in HK Account Order Page
    run keyword and continue on failure    User should be able to click filter status in Account Order Page
    run keyword and continue on failure    User should be able to filter status by Dispatched in Account Order Page
    run keyword and continue on failure    User should be able to click filter status in Account Order Page
    run keyword and continue on failure    User should be able to filter status by Received in Account Order Page
    run keyword and continue on failure    User should be able to click filter status in Account Order Page
    run keyword and continue on failure    User should be able to filter status by ALL in Account Order Page

TC-062 - User should be able to apply date filter in Retail Account Orders Page
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

TC-063 - User should be able to click Date Filter Clear Button in Account Order Page
    [Tags]    Order Page
    run keyword and continue on failure    User should be able to click Date Filter in Account Order Page
    run keyword and continue on failure    User should be able to click Date Filter Clear Button in Account Order Page
    run keyword and continue on failure    User should be able to click Search Box in Account Order Page

TC-064 - User should be able to Search in Account Order Page
    [Tags]    Order Page
    run keyword and continue on failure    User should be able to click Search Box in Account Order Page
    run keyword and continue on failure    User should be able to Input Text in Search Box in Account Order Page
    run keyword and continue on failure    User should be able to click clear button from Search Box in Account Order Page

TC-065 - User should be able to arrange filter in Retail Account Orders Page
    [Tags]    Order Page
    run keyword and continue on failure    User should be able to click Arrage Filter in Account Order Page
    run keyword and continue on failure    User should be able to Filter by Order Number in Account Order Page
    run keyword and continue on failure    User should be able to click Arrage Filter in Account Order Page
    run keyword and continue on failure    User should be able to Filter by Old to New in Account Order Page
    run keyword and continue on failure    User should be able to click Arrage Filter in Account Order Page
    run keyword and continue on failure    User should be able to Filter by New to Old in Account Order Page

##TC-065 - User should be able to view and message order with Recieved Status in Retail Account Orders Page
##    [Tags]    Order Page
##    run keyword and continue on failure    User should be able to view order with Recieved Status in Retail Account Orders Page
##    run keyword and continue on failure    User should be able to click order with Recieved Status in Retail Account Orders Page
##    run keyword and continue on failure    User should be able to click message supplier button in Retail Account Order Details Page
##    run keyword and continue on failure    User should be able to click cancel on message pop in Retail Account Order Details Page
##    run keyword and continue on failure    User should be able to click message supplier button in Retail Account Order Details Page
##    run keyword and continue on failure    User should be able to view message supplier pop up in Retail Account Order Details Page
##    run keyword and continue on failure    User should be able to input text on message pop up text field in Retail Account Order Details Page
##    run keyword and continue on failure    User should be able to upload photo on message pop in Retail Account Order Details Page
##    run keyword and continue on failure    User should be able to send on message pop in Retail Account Order Details Page
##    run keyword and continue on failure    User should be able to click back to order details in Retail Account Order Details Page
##    run keyword and continue on failure    User should be able to click Back to Customer Orders in Retail Account Order Details Page
#
TC-066 - User should be able to view and message order with Submitted Status in Retail Account Orders Page
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

#TC-067 - User should be able to view and message order with Dispatched Status in Retail Account Orders Page
#    [Tags]    Order Page
#    run keyword and continue on failure    User should be able to view order with Dispatched Status in Retail Account Orders Page
#    run keyword and continue on failure    User should be able to click order with Dispatched Status in Retail Account Orders Page
#    run keyword and continue on failure    User should be able to click message supplier button in Retail Account Order Details Page
#    run keyword and continue on failure    User should be able to click cancel on message pop in Retail Account Order Details Page
#    run keyword and continue on failure    User should be able to click message supplier button in Retail Account Order Details Page
#    run keyword and continue on failure    User should be able to view message supplier pop up in Retail Account Order Details Page
#    run keyword and continue on failure    User should be able to input text on message pop up text field in Retail Account Order Details Page
#    run keyword and continue on failure    User should be able to upload photo on message pop in Retail Account Order Details Page
#    run keyword and continue on failure    User should be able to send on message pop in Retail Account Order Details Page
#    run keyword and continue on failure    User should be able to click back to order details in Retail Account Order Details Page
#    run keyword and continue on failure    User should be able to click Back to Customer Orders in Retail Account Order Details Page
#
##TC-068 - User should be able to view and message order with Partially Dispatched Status in Retail Account Orders Page
##    [Tags]    Order Page
##    run keyword and continue on failure    User should be able to view order with Partially Dispatched Status in Retail Account Orders Page
##    run keyword and continue on failure    User should be able to click order with Partially Dispatched Status in Retail Account Orders Page
##    run keyword and continue on failure    User should be able to click message supplier button in Retail Account Order Details Page
##    run keyword and continue on failure    User should be able to click cancel on message pop in Retail Account Order Details Page
##    run keyword and continue on failure    User should be able to click message supplier button in Retail Account Order Details Page
##    run keyword and continue on failure    User should be able to view message supplier pop up in Retail Account Order Details Page
##    run keyword and continue on failure    User should be able to input text on message pop up text field in Retail Account Order Details Page
##    run keyword and continue on failure    User should be able to upload photo on message pop in Retail Account Order Details Page
##    run keyword and continue on failure    User should be able to send on message pop in Retail Account Order Details Page
##    run keyword and continue on failure    User should be able to click back to order details in Retail Account Order Details Page
##    run keyword and continue on failure    User should be able to click Back to Customer Orders in Retail Account Order Details Page

#TC-069 - User should be able to view and message order with Orders with Returns Status in Retail Account Orders Page
#    [Tags]    Order Page
#    run keyword and continue on failure    User should be able to view order with Orders with Returns Status in Retail Account Orders Page
#    run keyword and continue on failure    User should be able to click order with Orders with Returns Status in Retail Account Orders Page
#    run keyword and continue on failure    User should be able to click message supplier button in Retail Account Order Details Page
#    run keyword and continue on failure    User should be able to click cancel on message pop in Retail Account Order Details Page
#    run keyword and continue on failure    User should be able to click message supplier button in Retail Account Order Details Page
#    run keyword and continue on failure    User should be able to view message supplier pop up in Retail Account Order Details Page
#    run keyword and continue on failure    User should be able to input text on message pop up text field in Retail Account Order Details Page
#    run keyword and continue on failure    User should be able to upload photo on message pop in Retail Account Order Details Page
#    run keyword and continue on failure    User should be able to send on message pop in Retail Account Order Details Page
#    run keyword and continue on failure    User should be able to click back to order details in Retail Account Order Details Page
#    run keyword and continue on failure    User should be able to click Back to Customer Orders in Retail Account Order Details Page

TC-067 - User should be able to view account return request page
    [Tags]    Return Page
    run keyword and continue on failure    User should be able to access account from top navigaton
    run keyword and continue on failure    User should be able to view account return request page
    run keyword and continue on failure    User should be able to view Return Request Panel

TC-068 - User should be able to click filter by status in Account Retrun Page
    [Tags]    Return Page
    run keyword and continue on failure    User should be able to click filter by status in Account Retrun Page
    run keyword and continue on failure    User should be able to click filter by status in Account Retrun Page

TC-069 - User should be able to apply filter status in Account Retrun Page
    [Tags]    Return Page
    run keyword and continue on failure    User should be able to click filter by status in Account Retrun Page
    run keyword and continue on failure    User should be able to filter status by In Progress in Account Return Page
    run keyword and continue on failure    User should be able to click filter by status in Account Retrun Page
    run keyword and continue on failure    User should be able to filter status by Declined in Account Return Page
    run keyword and continue on failure    User should be able to click filter by status in Account Retrun Page
    run keyword and continue on failure    User should be able to filter status by Accepted in Account Return Page
    run keyword and continue on failure    User should be able to click filter by status in Account Retrun Page
    run keyword and continue on failure    User should be able to filter status by ALL in Account Return Page

TC-070 - User should be able to apply date filter in Account Retrun Page
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

TC-071 - User should be able to click Date Filter Clear Button in Account Return Page
    [Tags]    Return Page
    run keyword and continue on failure    User should be able to click Date Filter in Return Page
    run keyword and continue on failure    User should be able to click Date Filter Clear Button in Account Return Page
    run keyword and continue on failure    User should be able to click Search Box in Account Return Page

TC-072 - User should be able to Search in Account Return Page
    [Tags]    Return Page
    run keyword and continue on failure    User should be able to click Search Box in Account Return Page
    run keyword and continue on failure    User should be able to Input Text in Search Box in Account Return Page
    run keyword and continue on failure    User should be able to click clear button from Search Box in Account Return Page

TC-073 - User should be able to arrange filter in Account Return Page
    [Tags]    Return Page
    run keyword and continue on failure    User should be able to click Arrage Filter in Account Return Page
    run keyword and continue on failure    User should be able to Filter by Old to New in Account Return Page
    run keyword and continue on failure    User should be able to click Arrage Filter in Account Return Page
    run keyword and continue on failure    User should be able to Filter by New to Old in Account Return Page

##TC-077 - User should be able to view and message order with Accepted Status in Retail Account Return Page
##    [Tags]    Return Page
##    run keyword and continue on failure    User should be able to view order with Accepted Status in Retail Account Return Page
##    run keyword and continue on failure    User should be able to click order with Accepted Status in Retail Account Return Page
##    run keyword and continue on failure    User should be able to click message supplier button in Retail Account Return Details Page
##    run keyword and continue on failure    User should be able to click cancel on message pop in Retail Account Return Details Page
##    run keyword and continue on failure    User should be able to click message supplier button in Retail Account Return Details Page
##    run keyword and continue on failure    User should be able to view message supplier pop up in Retail Account Return Details Page
##    run keyword and continue on failure    User should be able to input text on message pop up text field in Retail Account Return Details Page
##    run keyword and continue on failure    User should be able to upload photo on message pop in Retail Account Return Details Page
##    run keyword and continue on failure    User should be able to send on message pop in Retail Account Return Details Page
##    run keyword and continue on failure    User should be able to click back to order details in Retail Account Return Details Page
##    run keyword and continue on failure    User should be able to click Back to Return Request in Retail Account Return Details Page

TC-078 - User should be able to view account saved carts page
    [Tags]    Saved Carts Page
    run keyword and continue on failure    User should be able to access account from top navigaton
    run keyword and continue on failure    User should be able to view account saved carts page
    run keyword and continue on failure    User should be able to view Saved Carts Panel
    run keyword and continue on failure    User should be able to view Saved Carts List in Retail Account Saved Carts Page

TC-079 - User should be able to select one Saved Carts in Retail Account Saved Carts Page
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

TC-080 - User should be albe to click Restore in Retail Account Saved Carts Details Page
    [Tags]    Saved Carts Page
    run keyword and continue on failure    User should be albe to click Restore in Retail Account Saved Carts Details Page
    run keyword and continue on failure    Browse Back Button

TC-081 - User should be able to click Delete in Retail Account Saved Carts Details Page
    [Tags]    Saved Carts Page
    run keyword and continue on failure    User should be able to click Delete in Retail Account Saved Carts Details Page
    run keyword and continue on failure    User should be able to click No for Delete Pop Up in Retail Account Saved Carts Details Page
    run keyword and continue on failure    User should be albe to click Back to Saved Carts Button in Retail Account Saved Carts Details Page

TC-082 - User should be able to click Delete in Retail Account Saved Carts Page
    [Tags]    Saved Carts Page
    run keyword and continue on failure    User should be able to click Delete in Retail Account Saved Carts Page
    run keyword and continue on failure    User should be able to click No for Delete Pop Up in Retail Account Saved Carts Page

TC-083 - User should be able to view account vehicle listing page
    [Tags]    Vehicle Listing Page
    run keyword and continue on failure    User should be able to access account from top navigaton
    run keyword and continue on failure    User should be able to view account vehicle listing page
    run keyword and continue on failure    User should be able to view HK vehicle listing Panel

TC-083 - User should be able to add new vehicle in Retail Account Vehicle Listing Page
    [Tags]    Vehicle Listing Page
    run keyword and continue on failure    User should be able to click add new vehicle in Retail Account Vehicle Listing Page
    run keyword and continue on failure    User should be able to view add vehicle in HK Retail Select Vehicle
#    run keyword and continue on failure    User should be able to click add new vehicle in HK Retail Select Vehicle
#    run keyword and continue on failure    User should be able to view add vehicle in HK Retail Select Vehicle
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

TC-009 - User should be able to click shop this vehicle in Retail Account Vehicle Listing Page
    [Tags]    Vehicle Listing Page
    run keyword and continue on failure    User should be able to access account from top navigaton
    run keyword and continue on failure    User should be able to view account vehicle listing page
    run keyword and continue on failure    User should be able to click shop this vehicle in HK Retail Account Vehicle Listing Page
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    reload page
    run keyword and continue on failure    TC Sleep

TC-010 - User should be able to click delete in Retail Account Vehicle Listing Page
    [Tags]    Vehicle Listing Page
    run keyword and continue on failure    User should be able to access account from top navigaton
    run keyword and continue on failure    User should be able to view account vehicle listing page
    run keyword and continue on failure    User should be able to click delete in HK Retail Account Vehicle Listing Page
    run keyword and continue on failure    User should be able to click no on confirm deletion in Retail Account Vehicle Listing Page
    run keyword and continue on failure    User should be able to click delete in HK Retail Account Vehicle Listing Page
    run keyword and continue on failure    User should be able to click yes on confirm deletion in Retail Account Vehicle Listing Page

TC-084 - User should be able to view message page
    [Tags]    Message Page
    run keyword and continue on failure    User should be able to access account from top navigaton
    run keyword and continue on failure    User should be able to view message page

TC-085 - User should be able to filter message in message page
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

TC-086 - User should be able to apply date filter in Retail Account Messages Page
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

TC-087 - User should be able to click Date Filter Clear Button in Retail Account Messages Page
    [Tags]    Message Page
    run keyword and continue on failure    User should be able to click Date Filter in Retail Account Messages Page
    run keyword and continue on failure    User should be able to click Date Filter Clear Button in Retail Account Messages Page
    run keyword and continue on failure    User should be able to click Search Box in Retail Account Messages Page

TC-088 - User should be able to search message in Retail Account Messages Page
    [Tags]    Message Page
    run keyword and continue on failure    User should be able to click Search Box in Retail Account Messages Page
    run keyword and continue on failure    User should be able to Input Text in Search Box in Retail Account Messages Page
    run keyword and continue on failure    User should be able to click clear button from Search Box in Retail Account Messages Page

TC-089 - User should be able to view and message read Order Enquiry in Retail Account Message Page
    [Tags]    Message Page
    run keyword and continue on failure    User should be able to view read Order Enquiry in Retail Account Message Page
    run keyword and continue on failure    User should be able to click read Order Enquiry in Retail Account Message Page
    run keyword and continue on failure    User should be able to Input Text on Message in Retail Account Messages Details Page
    run keyword and continue on failure    User should be able to upload image in Retail Account Messages Details Page
    run keyword and continue on failure    User should be able to click send in Retail Account Messages Details Page
    run keyword and continue on failure    User should be able to click Back to All Message in Retail Account Messages Details Page

TC-090 - User should be able to view and message read Product Enquiry in Retail Account Message Page
    [Tags]    Message Page
    run keyword and continue on failure    User should be able to view read Product Enquiry in Retail Account Message Page
    run keyword and continue on failure    User should be able to click read Product Enquiry in Retail Account Message Page
    run keyword and continue on failure    User should be able to Input Text on Message in Retail Account Messages Details Page
    run keyword and continue on failure    User should be able to upload image in Retail Account Messages Details Page
    run keyword and continue on failure    User should be able to click send in Retail Account Messages Details Page
    run keyword and continue on failure    User should be able to click Back to All Message in Retail Account Messages Details Page

TC-091 - User should be able to view Account Details page
    [Tags]    Account Details Page
    run keyword and continue on failure    User should be able to access account from top navigaton
    run keyword and continue on failure    User should be able to view account details page

TC-092 - User should be able to edit account details in Retail Account Details Page
    [Tags]    Account Details Page
    run keyword and continue on failure    User should be able to edit First name in Retail Account Details Page
    run keyword and continue on failure    User should be able to edit Last name in Retail Account Details Page
    run keyword and continue on failure    User should be able to edit Phone Number in HK Retail Account Details Page
    run keyword and continue on failure    User should be able to edit Landline Number in HK Retail Account Details Page
    run keyword and continue on failure    User should be able to click Update in Retail Account Details Page
    run keyword and continue on failure    User should be able to view update confirmation modal in Retail Account Details Page
    run keyword and continue on failure    User should be able to click No on update confirmation modal in Retail Account Details Page

TC-093 - User should be able to view change password page
    [Tags]    Change Password Page
    run keyword and continue on failure    User should be able to access account from top navigaton
    run keyword and continue on failure    User should be able to view change password page

TC-094 - User should be able to edit password in Retail Account Details Page
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

TC-095 - User should be able to view password error messages in Retail Account Details Page
    [Tags]    Change Password Page
    run keyword and continue on failure    User should be able to view current pass required error in Retail Account Change Pass Page
    run keyword and continue on failure    User should be able to view new pass required error in Retail Account Change Pass Page
    run keyword and continue on failure    User should be able to view confirm pass required error in Retail Account Change Pass Page
    run keyword and continue on failure    User should be able to view new pass not match error in Retail Account Change Pass Page
    run keyword and continue on failure    User should be able to view confirm pass not match error in Retail Account Change Pass Page

TC-096 - User should be able to view company details page
    [Tags]    Company Details Page
    run keyword and continue on failure    User should be able to access account from top navigaton
    run keyword and continue on failure    User should be able to view HK company details page

TC-097 - User should be able to edit company details page
    [Tags]    Company Details Page
    run keyword and continue on failure    User should be able to input valid Company name in Retail Account Company Details Page
    run keyword and continue on failure    User should be able to click Postal Address Dropdown for HK Retail Account Company Details Page
    run keyword and continue on failure    User should be able to input text in Postal Address for HK Retail Account Company Details Page
    run keyword and continue on failure    User should be able to select Random Postal Address from suggestions for HK Retail Account Company Details Page
    run keyword and continue on failure    User should be able to input valid Postal Address Line 2 in Retail Account Company Details Page
    run keyword and continue on failure    User should be able to click Area Dropdown in Postal Address for HK Retail Account Company Details Page
    run keyword and continue on failure    User should be able to select Random Postal Address Area for HK Retail Account Company Details Page
    run keyword and continue on failure    User should be able to click District Dropdown in Postal Address for HK Retail Account Company Details Page
    run keyword and continue on failure    User should be able to select Random Postal Address District for HK Retail Account Company Details Page
#    run keyword and continue on failure    User should be able to check/uncheck Del Add Same As Postal Add Checkbox in Retail Account Company Details Page
    run keyword and continue on failure    User should be able to click Delivery Address Dropdown for HK Retail Account Company Details Page
    run keyword and continue on failure    User should be able to input text in Deliver Address for HK Retail Account Company Details Page
    run keyword and continue on failure    User should be able to select Random Delivery Address from suggestions for HK Retail Account Company Details Page
    run keyword and continue on failure    User should be able to input valid Delivery Address Line 2 in Retail Account Company Details Page
    run keyword and continue on failure    User should be able to click Area Dropdown in Delivery Address for HK Retail Account Company Details Page
    run keyword and continue on failure    User should be able to select Random Delivery Address Area for HK Retail Account Company Details Page
    run keyword and continue on failure    User should be able to click District Dropdown in Delivery Address for HK Retail Account Company Details Page
    run keyword and continue on failure    User should be able to select Random Delivery Address District for HK Retail Account Company Details Page
    run keyword and continue on failure    User should be able to click opening hours in Retail Account Company Details Page
    run keyword and continue on failure    User should be able to select opening hours value in Retail Account Company Details Page
    run keyword and continue on failure    User should be able to click closing hours in Retail Account Company Details Page
    run keyword and continue on failure    User should be able to select closing hours value in Retail Account Company Details Page
    run keyword and continue on failure    User should be able to input valid First Name in Retail Account Company Details Page
    run keyword and continue on failure    User should be able to input valid Last Name in Retail Account Company Details Page
    run keyword and continue on failure    User should be able to input Company Phone Number for HK Retail Account Company Details Page
    run keyword and continue on failure    User should be able to input Landline Number for HK Retail Account Company Details Page
    run keyword and continue on failure    User should be able to click save button in Retail Account Company Details Page
    run keyword and continue on failure    User should be able to click no on update cofirmation modal in Retail Account Company Details Page

TC-098 - User should be able to view staff page
    [Tags]    Staff Page
    run keyword and continue on failure    User should be able to access account from top navigaton
    run keyword and continue on failure    User should be able to view staff page

TC-099 - User should be able to add new staff in Retail Account Staff Page
    [Tags]    Staff Page
    run keyword and continue on failure    User should be able to click add new staff in Retail Account Staff Page
    run keyword and continue on failure    User should be able to add new staff details in HK Retail Account Staff Page
    run keyword and continue on failure    User should be able to click active checkbox at add new staff in Retail Account Staff Page
    run keyword and continue on failure    User should be able to click active checkbox at add new staff in Retail Account Staff Page
    run keyword and continue on failure    User should be able to click cancel add new staff in Retail Account Staff Page

TC-100 - User should be able to edit staff button in Retail Account Staff Page
    [Tags]    Staff Page
    run keyword and continue on failure    User should be able to click edit staff button in Retail Account Staff Page
    run keyword and continue on failure    User should be able to edit First Name in Retail Account Staff Page
    run keyword and continue on failure    User should be able to edit Last Name in Retail Account Staff Page
    run keyword and continue on failure    User should be able to edit Phone Number in HK Retail Account Staff Page
    run keyword and continue on failure    User should be able to click active checkbox in Retail Account Staff Page
    run keyword and continue on failure    User should be able to click active checkbox in Retail Account Staff Page
    run keyword and continue on failure    User should ba able to click save in Retail Account Staff Page
    run keyword and continue on failure    User should be able to click no in the confirmation in Retail Account Staff Page
































































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