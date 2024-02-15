*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary
Library    Process

Resource  ../../../../../Resource/testdata/Retail/HK_Config/HK_S2_Config.robot
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
    run keyword and continue on failure    Verify Login Page Elements

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

TC-060 - User should be able to view account orders page
    [Tags]    Order Page
    run keyword and continue on failure    User should be able to access account from top navigaton
    run keyword and continue on failure    User should be able to view account orders page

TC-066 - User should be able to view order Retail Account Orders Page
    [Tags]    Order Page
    run keyword and continue on failure    User should be able to view order with Submitted Status in Retail Account Orders Page
    run keyword and continue on failure    User should be able to click order with Submitted Status in Retail Account Orders Page
    run keyword and continue on failure    User should be able to click Back to Customer Orders in Retail Account Order Details Page

TC-067 - User should be able to view account return request page
    [Tags]    Return Page
    run keyword and continue on failure    User should be able to access account from top navigaton
    run keyword and continue on failure    User should be able to view account return request page
    run keyword and continue on failure    User should be able to view Return Request Panel

##TC-077 - User should be able to view and message order with Accepted Status in Retail Account Return Page
##    [Tags]    Return Page
##    run keyword and continue on failure    User should be able to view order with Accepted Status in Retail Account Return Page
##    run keyword and continue on failure    User should be able to click order with Accepted Status in Retail Account Return Page
##    run keyword and continue on failure    User should be able to click Back to Return Request in Retail Account Return Details Page

TC-078 - User should be able to view account saved carts page
    [Tags]    Saved Carts Page
    run keyword and continue on failure    User should be able to access account from top navigaton
    run keyword and continue on failure    User should be able to view account saved carts page
    run keyword and continue on failure    User should be able to view Saved Carts Panel

TC-083 - User should be able to view account vehicle listing page
    [Tags]    Vehicle Listing Page
    run keyword and continue on failure    User should be able to access account from top navigaton
    run keyword and continue on failure    User should be able to view account vehicle listing page
    run keyword and continue on failure    User should be able to view HK vehicle listing Panel

TC-084 - User should be able to view message page
    [Tags]    Message Page
    run keyword and continue on failure    User should be able to access account from top navigaton
    run keyword and continue on failure    User should be able to view message page

TC-091 - User should be able to view Account Details page
    [Tags]    Account Details Page
    run keyword and continue on failure    User should be able to access account from top navigaton
    run keyword and continue on failure    User should be able to view account details page

TC-093 - User should be able to view change password page
    [Tags]    Change Password Page
    run keyword and continue on failure    User should be able to access account from top navigaton
    run keyword and continue on failure    User should be able to view change password page

TC-096 - User should be able to view company details page
    [Tags]    Company Details Page
    run keyword and continue on failure    User should be able to access account from top navigaton
    run keyword and continue on failure    User should be able to view HK company details page

TC-041 - User should be able to view All Products Page in HK Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to view All products
    run keyword and continue on failure    TC Sleep

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
    run keyword and continue on failure    TC Sleep
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
    run keyword and continue on failure    User should be able to edit shipping address on change shipping in HK Retail Checkout Page
    run keyword and continue on failure    User should be able to select Random Address from suggestions in HK Retail Checkout Page
    run keyword and continue on failure    User should be able to click Area Dropdown on change shipping in HK Retail Checkout Page
    run keyword and continue on failure    User should be able to select Random Area on change shipping in HK Retail Checkout Page
    run keyword and continue on failure    User should be able to click District Dropdown on change shipping in HK Retail Checkout Page
    run keyword and continue on failure    User should be able to select Random District on change shipping in HK Retail Checkout Page
    run keyword and continue on failure    User should be able to click Save Button on change shipping in HK Retail Checkout Page

TC-053 - User should be albe to Compare Shipping Fee in HK Retail Checkout Page
    [Tags]    Checkout Page
    run keyword and continue on failure    User should be albe to Compare Shipping Fee in HK Retail Checkout Page

TC-053 - User should be able to Go to Home Page in HK Retail
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to Go to Home page
    run keyword and continue on failure    TC Sleep


TC-053 - User should be able to Search Vehicle in the home page
    [Tags]    Vehicle Search
    run keyword and continue on failure    User should be albe to View Search Vehicle in HK Retail Home Page
    run keyword and continue on failure    User should be able to click model on manual search in Retail Select Vehicle
    run keyword and continue on failure    User should be able to select model on manual search in Retail Select Vehicle
    run keyword and continue on failure    User should be able to click year on manual search in Retail Select Vehicle
    run keyword and continue on failure    User should be able to select year on manual search in Retail Select Vehicle
    run keyword and continue on failure    User should be able to click series on manual search in Retail Select Vehicle
    run keyword and continue on failure    User should be able to select series on manual search in Retail Select Vehicle
    run keyword and continue on failure    User should be able to click Model ID on manual search in HK Retail Select Vehicle
    run keyword and continue on failure    User should be able to select Model ID on manual search in HK Retail Select Vehicle
    run keyword and continue on failure    User shoud be albe to click search this vehicle on manual seearh in Retail Select Vehicle
    run keyword and continue on failure    User should be able to click shop this vehicle in Pop up Vehicle Search in HK Retail Home Page
    run keyword and continue on failure    TC Sleep

TC-053 - User should be able to Go to Home Page in HK Retail
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to Go to Home page
    run keyword and continue on failure    TC Sleep

TC-053 - User should be able to search by VIN1 to HK Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be albe to View Search VIN in HK Retail Home Page
    run keyword and continue on failure    User should be albe to Input Search VIN1 in HK Retail Home Page
    run keyword and continue on failure    User should be albe to Click Search VIN in HK Retail Home Page
    run keyword and continue on failure    User should be able to click shop this vehicle in Pop up Vehicle Search in HK Retail Home Page
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    User should be able to view All Parts Page
    run keyword and continue on failure    User should be able to Go to Home page
    run keyword and continue on failure    TC Sleep

TC-053 - User should be able to search by VIN2 to HK Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be albe to View Search VIN in HK Retail Home Page
    run keyword and continue on failure    User should be albe to Input Search VIN2 in HK Retail Home Page
    run keyword and continue on failure    User should be albe to Click Search VIN in HK Retail Home Page
    run keyword and continue on failure    User should be able to click shop this vehicle in Pop up Vehicle Search in HK Retail Home Page
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    User should be able to view All Parts Page
    run keyword and continue on failure    User should be able to Go to Home page
    run keyword and continue on failure    TC Sleep

TC-053 - User should be able to search by VIN3 to HK Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be albe to View Search VIN in HK Retail Home Page
    run keyword and continue on failure    User should be albe to Input Search VIN3 in HK Retail Home Page
    run keyword and continue on failure    User should be albe to Click Search VIN in HK Retail Home Page
    run keyword and continue on failure    User should be able to click shop this vehicle in Pop up Vehicle Search in HK Retail Home Page
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    User should be able to view All Parts Page
    run keyword and continue on failure    User should be able to Go to Home page
    run keyword and continue on failure    TC Sleep

TC-053 - User should be able to search by VIN4 to HK Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be albe to View Search VIN in HK Retail Home Page
    run keyword and continue on failure    User should be albe to Input Search VIN4 in HK Retail Home Page
    run keyword and continue on failure    User should be albe to Click Search VIN in HK Retail Home Page
    run keyword and continue on failure    User should be able to click shop this vehicle in Pop up Vehicle Search in HK Retail Home Page
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    User should be able to view All Parts Page
    run keyword and continue on failure    User should be able to Go to Home page
    run keyword and continue on failure    TC Sleep

TC-053 - User should be able to search by VIN5 to HK Retail Home Page
    [Tags]    Home Page
    run keyword and continue on failure    User should be albe to View Search VIN in HK Retail Home Page
    run keyword and continue on failure    User should be albe to Input Search VIN5 in HK Retail Home Page
    run keyword and continue on failure    User should be albe to Click Search VIN in HK Retail Home Page
    run keyword and continue on failure    User should be able to click shop this vehicle in Pop up Vehicle Search in HK Retail Home Page
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    User should be able to view All Parts Page
    run keyword and continue on failure    User should be able to Go to Home page
    run keyword and continue on failure    TC Sleep















#TC-054 - User should be able to view payment method in HK Retail Checkout Page
#    [Tags]    Checkout Page
#    run keyword and continue on failure    User should be able to view payment method in HK Retail Checkout Page
#    run keyword and continue on failure    Select Credit Card Frame
#
#TC-055 - User should be able to input card details
#    [Tags]    Checkout Page
#    run keyword and continue on failure    User should be able to input jcb card number
#    run keyword and continue on failure    User should be albe to input Exp Date
#    run keyword and continue on failure    User should be albe to input CVV
#    run keyword and continue on failure    User should be albe to input Card Holders Name
#    run keyword and continue on failure    User should be albe to input Email

#TC-056 - User should be able to click continue payment
#    [Tags]    Checkout Page
#    run keyword and continue on failure    User should be able to click continue payment button
#    run keyword and continue on failure    User should be able to view 2C2P Modal
#
#TC-057 - User should be able to input otp
#    [Tags]    Checkout Page
#    run keyword and continue on failure    User should be able to Input OTP

#TC-058 - User should be able to click Submit button on 2C2P
#    [Tags]    Checkout Page
#    run keyword and continue on failure    User should be able to click Submit button on 2C2P
#    run keyword and continue on failure    TC Sleep

##TC-057 - User should be able to view confirmation
##    [Tags]    Checkout Page
##    run keyword and continue on failure    User should be able to view 2C2P Confirmation

#TC-059 - User should be able to view place order in HK Retail Place Order Page
#    [Tags]    Checkout Page
#    run keyword and continue on failure    Unselect Credit Card Frame
#    run keyword and continue on failure    TC Sleep
#    run keyword and continue on failure    User should be able to view place order in HK Retail Place Order Page
#    run keyword and continue on failure    User should be able to click back to home button in Retail Place Order Page






#TC-000000 - TC Sleep
#    [Tags]    TC-000000   TC Sleep
#    run keyword and continue on failure    TC Sleep

#TC-000000 - Browse Back Button
#    [Tags]    TC-000000   Browser Back
#    run keyword and continue on failure    Browse Back Button

#
#TC-000000 - User should be able to logout
#    [Tags]    TC009    Logout
#    run keyword and continue on failure    User should be able to logout

#Test Teardown
#    Run Keywords  Close Browser
#    run keyword    Save Log DIR