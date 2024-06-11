*** Settings ***
Documentation    Suite description

Library    SeleniumLibrary
Library    Process
#Library    FakerLibrary


Resource    ../../../../../Resource/testdata/Dealer/AU_Config/S2/AU_S2_Config.robot
Resource    ../../../../../Resource/testdata/Dealer/Dealer_Variable.robot
Resource    ../../../../../Resource/testdata/Dealer/Dealer_Resource.robot


*** Test Cases ***
Test Setup    Run Keywords   Open Chrome Browser
Screen Shot DIR    Run Keywords    Dealer Screen Shot DIR

Login Page - Verify Login Page
    [Tags]    Login Page
    run keyword and continue on failure    Verify Login Page

Login Page - Verify Login Page Elements
    [Tags]    Login Page
    run keyword and continue on failure    Verify Login Page Elements

Login Page - Input Invalid Username
    [Tags]    Login Page
    run keyword and continue on failure    Input Invalid Username

Login Page - Input Invalid Password
    [Tags]    Login Page
    run keyword and continue on failure    Input Invalid Password

Login Page- Login Invalid Email and Pass
    [Tags]    Login Page
    run keyword and continue on failure    Login Invalid Email and Pass

Login Page - User should be able to check/uncheck Remember me
    [Tags]    Login Page
    run keyword and continue on failure    User should be able to check/uncheck Remember me

Forgot Password Page - User should be able to Click Forgot Password
    [Tags]    Login Page    Forgot Password
    run keyword and continue on failure    User should be able to Click Forgot Password

Forgot Password Page - User should be able to view Reset Password Page
    [Tags]    Login Page    Forgot Password
    run keyword and continue on failure    User should be able to view Reset Password Page

Forgot Password Page - User should be able to view email error messsage in Dealer Reset Password Page
    [Tags]    Login Page    Forgot Password
    run keyword and continue on failure    User should be able to view email error messsage in Dealer Reset Password Page

Forgot Password Page - User should be able input valid email in Dealer Reset Password Page
    [Tags]    Login Page    Forgot Password
    run keyword and continue on failure    User should be able input valid email in Dealer Reset Password Page

Forgot Password Page - User should be able to click submit button in Dealer Reset Password Page
    [Tags]    Login Page    Forgot Password
    run keyword and continue on failure    User should be able to click submit button in Dealer Reset Password Page
    run keyword and continue on failure    Browse Back Button

Login Page - Input Valid Username
    [Tags]    Login Page
    run keyword and continue on failure    Input Valid Username

Login Page - Input Valid Password
    [Tags]    Login Page
    run keyword and continue on failure    Input Valid Password

Login Page - User should be able to click Login Button
    [Tags]    Login Page
    run keyword and continue on failure    User should be able to click Login Button

Home Page - Verify Home Page Elements
    [Tags]    Home Page
    run keyword and continue on failure    Verify Home Page Elements

Home Page - User should be able to view top navigation
    [Tags]    Home Page    Top Navigation
    run keyword and continue on failure    User should be able to view top navigation

Home Page - User should be able to click account from top navigation
    [Tags]    Home Page    Top Navigation
    run keyword and continue on failure    User should be able to click account from top navigation

Home Page - User should be able to click orders from top navigation
    [Tags]    Home Page    Top Navigation
    run keyword and continue on failure    User should be able to click orders from top navigation

Home Page - User should be able to click return from top navigation
    [Tags]    Home Page    Top Navigation
    run keyword and continue on failure    User should be able to click return from top navigation

Home Page - User should be able to click new buyer from top navigation
    [Tags]    Home Page    Top Navigation
    run keyword and continue on failure    User should be able to click new buyer from top navigation

Home Page - User should be able to click messages from top navigation
    [Tags]    Home Page    Top Navigation
    run keyword and continue on failure    User should be able to click messages from top navigation

Home Page - User should be able to click orders from left navigation
    [Tags]    Home Page    Left Navigation
    run keyword and continue on failure    User should be able to click orders from left navigation

Home Page - User should be able to click Return from left navigation
    [Tags]    Home Page    Left Navigation
    run keyword and continue on failure    User should be able to click Return from left navigation

TC-Home Page - User should be able to click and expand Customer Management
    [Tags]    Home Page    Left Navigation
    run keyword and continue on failure    User should be able to click and expand Customer Management

Home Page - User should be able to click Customer Manegement - New Reg from left navigation
    [Tags]    Home Page    Left Navigation
    run keyword and continue on failure    User should be able to click Customer Manegement - New Reg from left navigation

Home Page - User should be able to click Customer Manegement - Buyer Rel from left navigation
    [Tags]    Home Page    Left Navigation
    run keyword and continue on failure    User should be able to click Customer Manegement - Buyer Rel from left navigation

Home Page - User should be able to click Messages from left navigation
    [Tags]    Home Page    Left Navigation
    run keyword and continue on failure    User should be able to click Messages from left navigation

Home Page - User should be able to click and expand Profile
    [Tags]    Home Page    Left Navigation
    run keyword and continue on failure    User should be able to click and expand Profile

Home Page - User should be able to click Profile - Account Details from left navigation
    [Tags]    Home Page    Left Navigation
    run keyword and continue on failure    User should be able to click Profile - Account Details from left navigation

Home Page - User should be able to click Profile - Change Pass from left navigation
    [Tags]    Home Page    Left Navigation
    run keyword and continue on failure    User should be able to click Profile - Change Pass from left navigation

Home Page - User should be able to click and expand Company
    [Tags]    Home Page    Left Navigation
    run keyword and continue on failure    User should be able to click and expand Company

Home Page - User should be able to click Company - Company Details from left navigation
    [Tags]    Home Page    Left Navigation
    run keyword and continue on failure    User should be able to click Company - Company Details from left navigation

Home Page - User should be able to click Company - Staff Pass from left navigation
    [Tags]    Home Page    Left Navigation
    run keyword and continue on failure    User should be able to click Company - Staff Pass from left navigation

Home Page - User should be able to click Settings from left navigation
    [Tags]    Home Page    Left Navigation
    run keyword and continue on failure    User should be able to click Settings from left navigation
    run keyword and continue on failure    TC Move to Top

Orders Page - User should be able to view Cutomer Orders Panel
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to click orders from left navigation
    run keyword and continue on failure    User should be able to view Cutomer Orders Panel

Orders Page - User should be able to filter status by Received in Order Page
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to click filter by status in Order Page
    run keyword and continue on failure    User should be able to filter status by Received in Order Page

Orders Page - User should be able to filter status by Submitted in Order Page
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to click filter by status in Order Page
    run keyword and continue on failure    User should be able to filter status by Submitted in Order Page

Orders Page - User should be able to filter status by Dispatched in Order Page
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to click filter by status in Order Page
    run keyword and continue on failure    User should be able to filter status by Dispatched in Order Page

Orders Page - User should be able to filter status by Partially Dispatched in Order Page
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to click filter by status in Order Page
    run keyword and continue on failure    User should be able to filter status by Partially Dispathed in Order Page

Orders Page - User should be able to filter status by Order with Returns in Order Page
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to click filter by status in Order Page
    run keyword and continue on failure    User should be able to filter status by Order with Returns in Order Page

Orders Page - User should be able to filter status by ALL in Order Page
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to click filter by status in Order Page
    run keyword and continue on failure    User should be able to filter status by ALL in Order Page

Orders Page - User should be able to view Date Filter Elements in Order Page
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to click Date Filter in Order Page
    run keyword and continue on failure    User should be able to view Date Filter Elements in Order Page

Orders Page - User should be able to click Previous Month Button in Order Page
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to click Previous Month Button in Order Page

Orders Page - User should be able to click Next Month Button in Order Page
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to click Next Month Button in Order Page

Orders Page - User should be able to select month from drop down in Order Page
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to click Month Drop Down Filter in Order Page
    run keyword and continue on failure    User should be able to select month from drop down in Order Page

Orders Page- User should be able to select year from drop down in Order Page
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to click Year Drop Down Filter in Order Page
    run keyword and continue on failure    User should be able to select year from drop down in Order Page

Orders Page - User should be able to select From Date in Order Page
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to select From Date in Order Page

Orders Page - User should be able to select To Date in Order Page
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to select To Date in Order Page

Orders Page - User should be able to click Date Filter Submit Button in Order Page
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to click Date Filter Submit Button in Order Page

Orders Page - User should be able to click Date Filter Clear Button in Order Page
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to click Date Filter in Order Page
    run keyword and continue on failure    User should be able to click Date Filter Clear Button in Order Page
    run keyword and continue on failure    User should be able to click Search Box in Order Page

Orders Page - User should be able to click Search Box in Order Page
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to click Search Box in Order Page

Orders Page- User should be able to Input Text in Search Box in Order Page
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to Input Text in Search Box in Order Page

Orders Page - User should be able to click clear button from Search Box in Order Page
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to click clear button from Search Box in Order Page

Orders Page - User should be able to Filter by Order Number in Order Page
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to click Arrage Filter in Order Page
    run keyword and continue on failure    User should be able to Filter by Order Number in Order Page

Orders Page - User should be able to Filter by Old to New in Order Page
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to click Arrage Filter in Order Page
    run keyword and continue on failure    User should be able to Filter by Old to New in Order Page

Orders Page - User should be able to Filter by New to Old in Order Page
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to click Arrage Filter in Order Page
    run keyword and continue on failure    User should be able to Filter by New to Old in Order Page

Orders Page - User should be able to view and click order with Recieved Status in Dealer Orders Page
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to view order with Recieved Status in Dealer Orders Page
    run keyword and continue on failure    User should be able to click order with Recieved Status in Dealer Orders Page
    run keyword and continue on failure    User should be able to view order details
    run keyword and continue on failure    User should be able to click Back to Customer Orders in Dealer Order Details Page

Orders Page - User should be able to view and click order with Submitted Status in Dealer Orders Page
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to view order with Submitted Status in Dealer Orders Page
    run keyword and continue on failure    User should be able to click order with Submitted Status in Dealer Orders Page
    run keyword and continue on failure    User should be able to view order details
    run keyword and continue on failure    User should be able to click Back to Customer Orders in Dealer Order Details Page

Orders Page - User should be able to view and click order with Dispatched Status in Dealer Orders Page
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to view order with Dispatched Status in Dealer Orders Page
    run keyword and continue on failure    User should be able to click order with Dispatched Status in Dealer Orders Page
    run keyword and continue on failure    User should be able to view order details
    run keyword and continue on failure    User should be able to click Back to Customer Orders in Dealer Order Details Page

Orders Page - User should be able to view and click order with Partially Dispatched Status in Dealer Orders Page
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to view order with Partially Dispatched Status in Dealer Orders Page
    run keyword and continue on failure    User should be able to click order with Partially Dispatched Status in Dealer Orders Page
    run keyword and continue on failure    User should be able to view order details
    run keyword and continue on failure    User should be able to click Back to Customer Orders in Dealer Order Details Page

Orders Page - User should be able to view and click order with Orders with Returns Status in Dealer Orders Page
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to view order with Orders with Returns Status in Dealer Orders Page
    run keyword and continue on failure    User should be able to click order with Orders with Returns Status in Dealer Orders Page
    run keyword and continue on failure    User should be able to view order details
    run keyword and continue on failure    User should be able to click Back to Customer Orders in Dealer Order Details Page

Return Page - User should be able to view Return Request Panel
    [Tags]    Home Page    Return Page
    run keyword and continue on failure    User should be able to click Return from left navigation
    run keyword and continue on failure    User should be able to view Return Request Panel

Return Page - User should be able to filter status by In Progress in Return Page
    [Tags]    Home Page    Return Page
    run keyword and continue on failure    User should be able to click filter by status in Retrun Page
    run keyword and continue on failure    User should be able to filter status by In Progress in Return Page

Return Page - User should be able to filter status by Declined in Return Page
    [Tags]    Home Page    Return Page
    run keyword and continue on failure    User should be able to click filter by status in Retrun Page
    run keyword and continue on failure    User should be able to filter status by Declined in Return Page

Return Page - User should be able to filter status by Accepted in Return Page
    [Tags]    Home Page    Return Page
    run keyword and continue on failure    User should be able to click filter by status in Retrun Page
    run keyword and continue on failure    User should be able to filter status by Accepted in Return Page

Return Page - User should be able to filter status by ALL in Return Page
    [Tags]    Home Page    Return Page
    run keyword and continue on failure    User should be able to click filter by status in Retrun Page
    run keyword and continue on failure    User should be able to filter status by ALL in Return Page

Return Page - User should be able to view Date Filter Elements in Return Page
    [Tags]    Home Page    Return Page
    run keyword and continue on failure    User should be able to click Date Filter in Return Page
    run keyword and continue on failure    User should be able to view Date Filter Elements in Return Page

Return Page - User should be able to click Previous Month Button in Return Page
    [Tags]    Home Page    Return Page
    run keyword and continue on failure    User should be able to click Previous Month Button in Return Page

Return Page - User should be able to click Next Month Button in Return Page
    [Tags]    Home Page    Return Page
    run keyword and continue on failure    User should be able to click Next Month Button in Return Page

Return Page - User should be able to select month from drop down in Return Page
    [Tags]    Home Page    Return Page
    run keyword and continue on failure    User should be able to click Month Drop Down Filter in Return Page
    run keyword and continue on failure    User should be able to select month from drop down in Return Page

Return Page - User should be able to select year from drop down in Return Page
    [Tags]    Home Page    Return Page
    run keyword and continue on failure    User should be able to click Year Drop Down Filter in Return Page
    run keyword and continue on failure    User should be able to select year from drop down in Return Page

Return Page - User should be able to select From Date in Return Page
    [Tags]    Home Page    Return Page
    run keyword and continue on failure    User should be able to select From Date in Return Page

Return Page - User should be able to select To Date in Return Page
    [Tags]    Home Page    Return Page
    run keyword and continue on failure    User should be able to select To Date in Return Page

Return Page - User should be able to click Date Filter Submit Button in Return Page
    [Tags]    Home Page    Return Page
    run keyword and continue on failure    User should be able to click Date Filter Submit Button in Return Page

Return Page - User should be able to click Date Filter Clear Button in Return Page
    [Tags]    Home Page    Return Page
    run keyword and continue on failure    User should be able to click Date Filter in Return Page
    run keyword and continue on failure    User should be able to click Date Filter Clear Button in Return Page
    run keyword and continue on failure    User should be able to click Search Box in Return Page

Return Page - User should be able to click Search Box in Return Page
    [Tags]    Home Page    Return Page
    run keyword and continue on failure    User should be able to click Search Box in Return Page

Return Page - User should be able to Input Text in Search Box in Return Page
    [Tags]    Home Page    Return Page
    run keyword and continue on failure    User should be able to Input Text in Search Box in Return Page

Return Page - User should be able to click clear button from Search Box in Return Page
    [Tags]    Home Page    Return Page
    run keyword and continue on failure    User should be able to click clear button from Search Box in Return Page

Return Page - User should be able to Filter by Old to New in Return Page
    [Tags]    Home Page    Return Page
    run keyword and continue on failure    User should be able to click Arrage Filter in Return Page
    run keyword and continue on failure    User should be able to Filter by Old to New in Return Page

Return Page - User should be able to Filter by New to Old in Return Page
    [Tags]    Home Page    Return Page
    run keyword and continue on failure    User should be able to click Arrage Filter in Return Page
    run keyword and continue on failure    User should be able to Filter by New to Old in Return Page

Return Page - User should be able to view and click order with Accepted Status in Dealer Return Page
    [Tags]    Home Page    Return Page
    run keyword and continue on failure    User should be able to click filter by status in Retrun Page
    run keyword and continue on failure    User should be able to filter status by Accepted in Return Page
    run keyword and continue on failure    User should be able to view order with Accepted Status in Dealer Return Page
    run keyword and continue on failure    User should be able to click order with Accepted Status in Dealer Return Page
    run keyword and continue on failure    User should be able to view Return details
    run keyword and continue on failure    User should be able to click Back to Return Request in Dealer Return Details Page

Return Page - User should be able to message supplier on order with Accepted Status in Dealer Return Page
    [Tags]    Home Page    Return Page
    run keyword and continue on failure    User should be able to view order with Accepted Status in Dealer Return Page
    run keyword and continue on failure    User should be able to click order with Accepted Status in Dealer Return Page
    run keyword and continue on failure    User should be able to click message supplier button in Dealer Return Details Page
    run keyword and continue on failure    User should be able to click cancel on message pop in Dealer Return Details Page
    run keyword and continue on failure    User should be able to click message supplier button in Dealer Return Details Page
    run keyword and continue on failure    User should be able to view message supplier pop up in Dealer Return Details Page
    run keyword and continue on failure    User should be able to input text on message pop up text field in Dealer Return Details Page
    run keyword and continue on failure    User should be able to upload photo on message pop in Dealer Return Details Page
    run keyword and continue on failure    User should be able to click send on message pop in Dealer Return Details Page
    run keyword and continue on failure    User should be able to click Back to Retrun Request on message pop thank you in Dealer Return Details Page
    run keyword and continue on failure    User should be able to click Back to Return Request in Dealer Return Details Page

Return Page - User should be able to view and click order with Declined Status in Dealer Return Page
    [Tags]    Home Page    Return Page
    run keyword and continue on failure    User should be able to click filter by status in Retrun Page
    run keyword and continue on failure    User should be able to filter status by Declined in Return Page
    run keyword and continue on failure    User should be able to view order with Declined Status in Dealer Return Page
    run keyword and continue on failure    User should be able to click order with Declined Status in Dealer Return Page
    run keyword and continue on failure    User should be able to view Return details
    run keyword and continue on failure    User should be able to click Back to Return Request in Dealer Return Details Page

Return Page - User should be able to message supplier on order with Declined Status in Dealer Return Page
    [Tags]    Home Page    Return Page
    run keyword and continue on failure    User should be able to view order with Declined Status in Dealer Return Page
    run keyword and continue on failure    User should be able to click order with Declined Status in Dealer Return Page
    run keyword and continue on failure    User should be able to click message supplier button in Dealer Return Details Page
    run keyword and continue on failure    User should be able to click cancel on message pop in Dealer Return Details Page
    run keyword and continue on failure    User should be able to click message supplier button in Dealer Return Details Page
    run keyword and continue on failure    User should be able to view message supplier pop up in Dealer Return Details Page
    run keyword and continue on failure    User should be able to input text on message pop up text field in Dealer Return Details Page
    run keyword and continue on failure    User should be able to upload photo on message pop in Dealer Return Details Page
    run keyword and continue on failure    User should be able to click send on message pop in Dealer Return Details Page
    run keyword and continue on failure    User should be able to click Back to Retrun Request on message pop thank you in Dealer Return Details Page
    run keyword and continue on failure    User should be able to click Back to Return Request in Dealer Return Details Page

Return Page - User should be able to view and click order with In Progress Status in Dealer Return Page
    [Tags]    Home Page    Return Page
    run keyword and continue on failure    User should be able to click filter by status in Retrun Page
    run keyword and continue on failure    User should be able to filter status by In Progress in Return Page
    run keyword and continue on failure    User should be able to view order with In Progress Status in Dealer Return Page
    run keyword and continue on failure    User should be able to click order with In Progress Status in Dealer Return Page
    run keyword and continue on failure    User should be able to view Return details
    run keyword and continue on failure    User should be able to click Back to Return Request in Dealer Return Details Page

Return Page - User should be able to message supplier on order with In Progress Status in Dealer Return Page
    [Tags]    Home Page    Return Page
    run keyword and continue on failure    User should be able to view order with In Progress Status in Dealer Return Page
    run keyword and continue on failure    User should be able to click order with In Progress Status in Dealer Return Page
    run keyword and continue on failure    User should be able to click message supplier button in Dealer Return Details Page
    run keyword and continue on failure    User should be able to click cancel on message pop in Dealer Return Details Page
    run keyword and continue on failure    User should be able to click message supplier button in Dealer Return Details Page
    run keyword and continue on failure    User should be able to view message supplier pop up in Dealer Return Details Page
    run keyword and continue on failure    User should be able to input text on message pop up text field in Dealer Return Details Page
    run keyword and continue on failure    User should be able to upload photo on message pop in Dealer Return Details Page
    run keyword and continue on failure    User should be able to click send on message pop in Dealer Return Details Page
    run keyword and continue on failure    User should be able to click Back to Retrun Request on message pop thank you in Dealer Return Details Page
    run keyword and continue on failure    User should be able to click Back to Return Request in Dealer Return Details Page

#TC-087 - User should be able to accept and add message order with In Progress Status in Dealer Return Page
#    [Tags]    Home Page    Return Page
#    run keyword and continue on failure    User should be able to click filter by status in Retrun Page
#    run keyword and continue on failure    User should be able to filter status by In Progress in Return Page
#    run keyword and continue on failure    User should be able to view order with In Progress Status in Dealer Return Page
#    run keyword and continue on failure    User should be able to click order with In Progress Status in Dealer Return Page
#    run keyword and continue on failure    User should be able to click accept button in Dealer Return Details Page
#    run keyword and continue on failure    User should be able to add text on Note for Customer in Dealer Return Details Page
#    run keyword and continue on failure    User should be able to click confirm status button in Dealer Return Details Page
#    run keyword and continue on failure    User should be able to click cancel confirm status in Dealer Return Details Page
#    run keyword and continue on failure    User should be able to click confirm status button in Dealer Return Details Page
#    run keyword and continue on failure    User should be able to click confirm confirm status in Dealer Return Details Page
#    run keyword and continue on failure    User should be able to click Back to Return Request in Dealer Return Details Page
#
#TC-088 - User should be able to decline and add message order with In Progress Status in Dealer Return Page
#    [Tags]    Home Page    Return Page
#    run keyword and continue on failure    User should be able to click filter by status in Retrun Page
#    run keyword and continue on failure    User should be able to filter status by In Progress in Return Page
#    run keyword and continue on failure    User should be able to click filter by status in Retrun Page
#    run keyword and continue on failure    User should be able to filter status by In Progress in Return Page
#    run keyword and continue on failure    User should be able to view order with In Progress Status in Dealer Return Page
#    run keyword and continue on failure    User should be able to click order with In Progress Status in Dealer Return Page
#    run keyword and continue on failure    User should be able to click decline button in Dealer Return Details Page
#    run keyword and continue on failure    User should be able to add text on Note for Customer in Dealer Return Details Page
#    run keyword and continue on failure    User should be able to click confirm status button in Dealer Return Details Page
#    run keyword and continue on failure    User should be able to click cancel confirm status in Dealer Return Details Page
#    run keyword and continue on failure    User should be able to click confirm status button in Dealer Return Details Page
#    run keyword and continue on failure    User should be able to click confirm confirm status in Dealer Return Details Page
#    run keyword and continue on failure    User should be able to click Back to Return Request in Dealer Return Details Page

New Registration Page - User should be able to view New Reg Req Panel
    [Tags]    Home Page    New Reg Req
    run keyword and continue on failure    User should be able to click and expand Customer Management
    run keyword and continue on failure    User should be able to click Customer Manegement - New Reg from left navigation
    run keyword and continue on failure    User should be able to view New Reg Req Panel

New Registration Page - User should be able to filter status by Rejected in Dealer New Registration Request
    [Tags]    Home Page    New Reg Req
    run keyword and continue on failure    User should be able to click Filter by Status in Dealer New Registration Request
    run keyword and continue on failure    User should be able to filter status by Rejected in Dealer New Registration Request

New Registration Page - User should be able to filter status by Approved in Dealer New Registration Request
    [Tags]    Home Page    New Reg Req
    run keyword and continue on failure    User should be able to click Filter by Status in Dealer New Registration Request
    run keyword and continue on failure    User should be able to filter status by Approved in Dealer New Registration Request

New Registration Page - User should be able to filter status by In Progress in Dealer New Registration Request
    [Tags]    Home Page    New Reg Req
    run keyword and continue on failure    User should be able to click Filter by Status in Dealer New Registration Request
    run keyword and continue on failure    User should be able to filter status by In Progress in Dealer New Registration Request

New Registration Page - User should be able to filter status by All in Dealer New Registration Request
    [Tags]    Home Page    New Reg Req
    run keyword and continue on failure    User should be able to click Filter by Status in Dealer New Registration Request
    run keyword and continue on failure    User should be able to filter status by All in Dealer New Registration Request

New Registration Page - User should be able to view and click Registration Request with In Progress Status in Dealer New Registration Request Page
    [Tags]    Home Page    New Reg Req
    run keyword and continue on failure    User should be able to view Registration Request with In Progress Status in Dealer New Registration Request Page
    run keyword and continue on failure    User should be able to click Registration Request with In Progress Status in Dealer New Registration Request Page
    run keyword and continue on failure    User should be able to view New Buyer Details Page
    run keyword and continue on failure    User should be able to click Back to Registraion Request in Dealer Registration Request Details Page

New Registration Page - User should be able to view and click Registration Request with Approved Status in Dealer New Registration Request Page
    [Tags]    Home Page    New Reg Req
    run keyword and continue on failure    User should be able to view Registration Request with Approved Status in Dealer New Registration Request Page
    run keyword and continue on failure    User should be able to click Registration Request with Approved Status in Dealer New Registration Request Page
    run keyword and continue on failure    User should be able to view New Buyer Details Page
    run keyword and continue on failure    User should be able to click Back to Registraion Request in Dealer Registration Request Details Page

New Registration Page - User should be able to view and click Registration Request with Rejected Status in Dealer New Registration Request Page
    [Tags]    Home Page    New Reg Req
    run keyword and continue on failure    User should be able to view Registration Request with Rejected Status in Dealer New Registration Request Page
    run keyword and continue on failure    User should be able to click Registration Request with Rejected Status in Dealer New Registration Request Page
    run keyword and continue on failure    User should be able to view New Buyer Details Page
    run keyword and continue on failure    User should be able to click Back to Registraion Request in Dealer Registration Request Details Page

Buyer Relationship - User should be able to view Buyer Rel Page
    [Tags]    Home Page    Cust Rel
    run keyword and continue on failure    User should be able to click Customer Manegement - Buyer Rel from left navigation
    run keyword and continue on failure    User should be able to view Buyer Rel Page

Buyer Relationship - User should be able to Click No Check/Uncheck Status
    [Tags]    Home Page    Cust Rel
    run keyword and continue on failure    User should be able to Check/Uncheck Status
    run keyword and continue on failure    User should be able to Click No Check/Uncheck Status

Buyer Relationship - User should be able to Click Yes Check/Uncheck Status
    [Tags]    Home Page    Cust Rel
    run keyword and continue on failure    User should be able to Check/Uncheck Status
    run keyword and continue on failure    User should be able to Click Yes Check/Uncheck Status

Messages Page - User should be able to view message page
    [Tags]    Home Page    Messages
    run keyword and continue on failure    User should be able to click Messages from left navigation
    run keyword and continue on failure    User should be able to view message page

Messages Page - User should be able to select General Enquiry filter in Dealer Messages Page
    [Tags]    Home Page    Messages
    run keyword and continue on failure    User should be able to click filter messages in Dealer Messages Page
    run keyword and continue on failure    User should be able to select General Enquiry filter in Dealer Messages Page

Messages Page - User should be able to select Return Enquiry filter in Dealer Messages Page
    [Tags]    Home Page    Messages
    run keyword and continue on failure    User should be able to click filter messages in Dealer Messages Page
    run keyword and continue on failure    User should be able to select Return Enquiry filter in Dealer Messages Page

Messages Page - User should be able to select Order Enquiry filter in Dealer Messages Page
    [Tags]    Home Page    Messages
    run keyword and continue on failure    User should be able to click filter messages in Dealer Messages Page
    run keyword and continue on failure    User should be able to select Order Enquiry filter in Dealer Messages Page

Messages Page - User should be able to select Product Enquiry filter in Dealer Messages Page
    [Tags]    Home Page    Messages
    run keyword and continue on failure    User should be able to click filter messages in Dealer Messages Page
    run keyword and continue on failure    User should be able to select Product Enquiry filter in Dealer Messages Page

Messages Page- User should be able to select All filter in Dealer Messages Page
    [Tags]    Home Page    Messages
    run keyword and continue on failure    User should be able to click filter messages in Dealer Messages Page
    run keyword and continue on failure    User should be able to select All filter in Dealer Messages Page

Messages Page - User should be able to view Date Filter Elements in Dealer Messages Page
    [Tags]    Home Page    Messages
    run keyword and continue on failure    User should be able to click Date Filter in Dealer Messages Page
    run keyword and continue on failure    User should be able to view Date Filter Elements in Dealer Messages Page

Messages Page - User should be able to click Previous Month Button in Dealer Messages Page
    [Tags]    Home Page    Messages
    run keyword and continue on failure    User should be able to click Previous Month Button in Dealer Messages Page

Messages Page - User should be able to click Previous Month Button in Dealer Messages Page
    [Tags]    Home Page    Messages
    run keyword and continue on failure    User should be able to click Next Month Button in Dealer Messages Page

Messages Page - User should be able to select month from drop down in Dealer Messages Page
    [Tags]    Home Page    Messages
    run keyword and continue on failure    User should be able to click Month Drop Down Filter in Dealer Messages Page
    run keyword and continue on failure    User should be able to select month from drop down in Dealer Messages Page

Messages Page - User should be able to select year from drop down in Dealer Messages Page
    [Tags]    Home Page    Messages
    run keyword and continue on failure    User should be able to click Year Drop Down Filter in Dealer Messages Page
    run keyword and continue on failure    User should be able to select year from drop down in Dealer Messages Page

Messages Page - User should be able to select From Date in Dealer Messages Page
    [Tags]    Home Page    Messages
    run keyword and continue on failure    User should be able to select From Date in Dealer Messages Page

Messages Page - User should be able to select To Date in Dealer Messages Page
    [Tags]    Home Page    Messages
    run keyword and continue on failure    User should be able to select To Date in Dealer Messages Page

Messages Page - User should be able to click Date Filter Submit Button in Dealer Messages Page
    [Tags]    Home Page    Messages
    run keyword and continue on failure    User should be able to click Date Filter Submit Button in Dealer Messages Page

Messages Page - User should be able to click Date Filter Clear Button in Dealer Messages Page
    [Tags]    Home Page    Messages
    run keyword and continue on failure    User should be able to click Date Filter in Dealer Messages Page
    run keyword and continue on failure    User should be able to click Date Filter Clear Button in Dealer Messages Page
    run keyword and continue on failure    User should be able to click Search Box in Dealer Messages Page

Messages Page - User should be able to click Search Box in Dealer Messages Page
    [Tags]    Home Page    Messages
    run keyword and continue on failure    User should be able to click Search Box in Dealer Messages Page

Messages Page - User should be able to Input Text in Search Box in Dealer Messages Page
    [Tags]    Home Page    Messages
    run keyword and continue on failure    User should be able to Input Text in Search Box in Dealer Messages Page

Messages Page - User should be able to click clear button from Search Box in Dealer Messages Page
    [Tags]    Home Page    Messages
    run keyword and continue on failure    User should be able to click clear button from Search Box in Dealer Messages Page

Messages Page - User should be able to click and send message on read General Enquiry in Dealer Message Page
    [Tags]    Home Page    Messages
    run keyword and continue on failure    User should be able to click filter messages in Dealer Messages Page
    run keyword and continue on failure    User should be able to select General Enquiry filter in Dealer Messages Page
    run keyword and continue on failure    User should be able to view read General Enquiry in Dealer Message Page
    run keyword and continue on failure    User should be able to click read General Enquiry in Dealer Message Page
    run keyword and continue on failure    User should be able to Input Text on Message in Dealer Messages Details Page
    run keyword and continue on failure    User should be able to click cancel in Dealer Messages Details Page
    run keyword and continue on failure    User should be able to Input Text on Message in Dealer Messages Details Page
    run keyword and continue on failure    User should be able to upload image in Dealer Messages Details Page
    run keyword and continue on failure    User should be able to click send in Dealer Messages Details Page
    run keyword and continue on failure    User should be able to click Back to All Message in Dealer Messages Details Page


Messages Page - User should be able to click and send message on read Order Enquiry in Dealer Message Page
    [Tags]    Home Page    Messages
    run keyword and continue on failure    User should be able to click filter messages in Dealer Messages Page
    run keyword and continue on failure    User should be able to select Order Enquiry filter in Dealer Messages Page
    run keyword and continue on failure    User should be able to view read Order Enquiry in Dealer Message Page
    run keyword and continue on failure    User should be able to click read Order Enquiry in Dealer Message Page
    run keyword and continue on failure    User should be able to Input Text on Message in Dealer Messages Details Page
    run keyword and continue on failure    User should be able to click cancel in Dealer Messages Details Page
    run keyword and continue on failure    User should be able to Input Text on Message in Dealer Messages Details Page
    run keyword and continue on failure    User should be able to upload image in Dealer Messages Details Page
    run keyword and continue on failure    User should be able to click send in Dealer Messages Details Page
    run keyword and continue on failure    User should be able to click Back to All Message in Dealer Messages Details Page

Messages Page - User should be able to click and send message on read Return Enquiry in Dealer Message Page
    [Tags]    Home Page    Messages
    run keyword and continue on failure    User should be able to click filter messages in Dealer Messages Page
    run keyword and continue on failure    User should be able to select Return Enquiry filter in Dealer Messages Page
    run keyword and continue on failure    User should be able to view read Return Enquiry in Dealer Message Page
    run keyword and continue on failure    User should be able to click read Return Enquiry in Dealer Message Page
    run keyword and continue on failure    User should be able to Input Text on Message in Dealer Messages Details Page
    run keyword and continue on failure    User should be able to click cancel in Dealer Messages Details Page
    run keyword and continue on failure    User should be able to Input Text on Message in Dealer Messages Details Page
    run keyword and continue on failure    User should be able to upload image in Dealer Messages Details Page
    run keyword and continue on failure    User should be able to click send in Dealer Messages Details Page
    run keyword and continue on failure    User should be able to click Back to All Message in Dealer Messages Details Page

Messages Page - User should be able to click and send message on read Product Enquiry in Dealer Message Page
    [Tags]    Home Page    Messages
    run keyword and continue on failure    User should be able to click filter messages in Dealer Messages Page
    run keyword and continue on failure    User should be able to select Product Enquiry filter in Dealer Messages Page
    run keyword and continue on failure    User should be able to view read Product Enquiry in Dealer Message Page
    run keyword and continue on failure    User should be able to click read Product Enquiry in Dealer Message Page
    run keyword and continue on failure    User should be able to Input Text on Message in Dealer Messages Details Page
    run keyword and continue on failure    User should be able to click cancel in Dealer Messages Details Page
    run keyword and continue on failure    User should be able to Input Text on Message in Dealer Messages Details Page
    run keyword and continue on failure    User should be able to upload image in Dealer Messages Details Page
    run keyword and continue on failure    User should be able to click send in Dealer Messages Details Page
    run keyword and continue on failure    User should be able to click Back to All Message in Dealer Messages Details Page

Messages Page - User should be able to click and send message on unread General Enquiry in Dealer Message Page
    [Tags]    Home Page    Messages
    run keyword and continue on failure    User should be able to click filter messages in Dealer Messages Page
    run keyword and continue on failure    User should be able to select General Enquiry filter in Dealer Messages Page
    run keyword and continue on failure    User should be able to view unread General Enquiry in Dealer Message Page
    run keyword and continue on failure    User should be able to click unread General Enquiry in Dealer Message Page
    run keyword and continue on failure    User should be able to Input Text on Message in Dealer Messages Details Page
    run keyword and continue on failure    User should be able to click cancel in Dealer Messages Details Page
    run keyword and continue on failure    User should be able to Input Text on Message in Dealer Messages Details Page
    run keyword and continue on failure    User should be able to upload image in Dealer Messages Details Page
    run keyword and continue on failure    User should be able to click send in Dealer Messages Details Page
    run keyword and continue on failure    User should be able to click Back to All Message in Dealer Messages Details Page

Messages Page - User should be able to click and send message on unread Order Enquiry in Dealer Message Page
    [Tags]    Home Page    Messages
    run keyword and continue on failure    User should be able to click filter messages in Dealer Messages Page
    run keyword and continue on failure    User should be able to select Order Enquiry filter in Dealer Messages Page
    run keyword and continue on failure    User should be able to view unread Order Enquiry in Dealer Message Page
    run keyword and continue on failure    User should be able to click unread Order Enquiry in Dealer Message Page
    run keyword and continue on failure    User should be able to Input Text on Message in Dealer Messages Details Page
    run keyword and continue on failure    User should be able to click cancel in Dealer Messages Details Page
    run keyword and continue on failure    User should be able to Input Text on Message in Dealer Messages Details Page
    run keyword and continue on failure    User should be able to upload image in Dealer Messages Details Page
    run keyword and continue on failure    User should be able to click send in Dealer Messages Details Page
    run keyword and continue on failure    User should be able to click Back to All Message in Dealer Messages Details Page

Messages Page - User should be able to click and send message on unread Return Enquiry in Dealer Message Page
    [Tags]    Home Page    Messages
    run keyword and continue on failure    User should be able to click filter messages in Dealer Messages Page
    run keyword and continue on failure    User should be able to select Return Enquiry filter in Dealer Messages Page
    run keyword and continue on failure    User should be able to view unread Return Enquiry in Dealer Message Page
    run keyword and continue on failure    User should be able to click unread Return Enquiry in Dealer Message Page
    run keyword and continue on failure    User should be able to Input Text on Message in Dealer Messages Details Page
    run keyword and continue on failure    User should be able to click cancel in Dealer Messages Details Page
    run keyword and continue on failure    User should be able to Input Text on Message in Dealer Messages Details Page
    run keyword and continue on failure    User should be able to upload image in Dealer Messages Details Page
    run keyword and continue on failure    User should be able to click send in Dealer Messages Details Page
    run keyword and continue on failure    User should be able to click Back to All Message in Dealer Messages Details Page

Messages Page - User should be able to click and send message on unread Product Enquiry in Dealer Message Page
    [Tags]    Home Page    Messages
    run keyword and continue on failure    User should be able to click filter messages in Dealer Messages Page
    run keyword and continue on failure    User should be able to select Product Enquiry filter in Dealer Messages Page
    run keyword and continue on failure    User should be able to view unread Product Enquiry in Dealer Message Page
    run keyword and continue on failure    User should be able to click unread Product Enquiry in Dealer Message Page
    run keyword and continue on failure    User should be able to Input Text on Message in Dealer Messages Details Page
    run keyword and continue on failure    User should be able to click cancel in Dealer Messages Details Page
    run keyword and continue on failure    User should be able to Input Text on Message in Dealer Messages Details Page
    run keyword and continue on failure    User should be able to upload image in Dealer Messages Details Page
    run keyword and continue on failure    User should be able to click send in Dealer Messages Details Page
    run keyword and continue on failure    User should be able to click Back to All Message in Dealer Messages Details Page

Account Details Page - User should be able to view account details page
    [Tags]    Home Page    Acc Details
    run keyword and continue on failure    User should be able to click and expand Profile
    run keyword and continue on failure    User should be able to click Profile - Account Details from left navigation
    run keyword and continue on failure    User should be able to view account details page

Account Details Page - User should be able to edit First name in Dealer Account Details Page
    [Tags]    Home Page    Acc Details
    run keyword and continue on failure    User should be able to edit First name in Dealer Account Details Page

Account Details Page - User should be able to edit Last name in Dealer Account Details Page
    [Tags]    Home Page    Acc Details
    run keyword and continue on failure    User should be able to edit Last name in Dealer Account Details Page

Account Details Page - User should be able to edit Phone Number in Dealer Account Details Page
    [Tags]    Home Page    Acc Details
    run keyword and continue on failure    User should be able to edit Phone Number in Dealer Account Details Page

Account Details Page - User should be able to edit Landline Number in Dealer Account Details Page
    [Tags]    Home Page    Acc Details
    run keyword and continue on failure    User should be able to edit Landline Number in Dealer Account Details Page

Account Details Page - User should be able to click Update in Dealer Account Details Page
    [Tags]    Home Page    Acc Details
    run keyword and continue on failure    User should be able to click Update in Dealer Account Details Page

Account Details Page - User should be able to view update confirmation modal in Dealer Account Details Page
    [Tags]    Home Page    Acc Details
    run keyword and continue on failure    User should be able to view update confirmation modal in Dealer Account Details Page
    run keyword and continue on failure    User should be able to click No on update confirmation modal in Dealer Account Details Page

Account Details Page - User should be able to click Cancel in Dealer Account Details Page
    [Tags]    Home Page    Acc Details
    run keyword and continue on failure    User should be able to click Cancel in Dealer Account Details Page

Account Details Page - User should be able to view invalid phone number error in Dealer Account Details Page
    [Tags]    Home Page    Acc Details
    run keyword and continue on failure    User should be able to view invalid phone number error in Dealer Account Details Page

Account Details Page - User should be able to view invalid landline number error in Dealer Account Details Page
    [Tags]    Home Page    Acc Details
    run keyword and continue on failure    User should be able to view invalid landline number error in Dealer Account Details Page

Change Password Page - User should be able to view change password page
    [Tags]    Home Page    Change Pass
    run keyword and continue on failure    User should be able to click Profile - Change Pass from left navigation
    run keyword and continue on failure    User should be able to view change password page

Change Password Page - User should be ablle to edit current password in Dealer Change Pass Page
    [Tags]    Home Page    Change Pass
    run keyword and continue on failure    User should be ablle to edit current password in Dealer Change Pass Page

Change Password Page- User should be ablle to edit new password in Dealer Change Pass Page
    [Tags]    Home Page    Change Pass
    run keyword and continue on failure    User should be ablle to edit new password in Dealer Change Pass Page
    run keyword and continue on failure    User should be able to view new pass by clicking eye button in Dealer Change Pass Page
    run keyword and continue on failure    User should be able to hide new pass by clicking eye button in Dealer Change Pass Page

Change Password Page - User should be ablle to edit confirm password in Dealer Change Pass Page
    [Tags]    Home Page    Change Pass
    run keyword and continue on failure    User should be ablle to edit confirm password in Dealer Change Pass Page
    run keyword and continue on failure    User should be able to view confirm pass by clicking eye button in Dealer Change Pass Page
    run keyword and continue on failure    User should be able to hide confirm pass by clicking eye button in Dealer Change Pass Page

Change Password Page - User should be able to click Update button in Dealer Change Pass Page
    [Tags]    Home Page    Change Pass
    run keyword and continue on failure    User should be able to click Update button in Dealer Change Pass Page

Change Password Page - User should be able to view update confirmation modal in Dealer Change Pass Page
    [Tags]    Home Page    Change Pass
    run keyword and continue on failure    User should be able to view update confirmation modal in Dealer Change Pass Page
    run keyword and continue on failure    User should be able to click No on update confirmation modal in Dealer Change Pass Page

Change Password Page - User should be able to view current pass required error in Dealer Change Pass Page
    [Tags]    Home Page    Change Pass
    run keyword and continue on failure    User should be able to view current pass required error in Dealer Change Pass Page

Change Password Page - User should be able to view new pass required error in Dealer Change Pass Page
    [Tags]    Home Page    Change Pass
    run keyword and continue on failure    User should be able to view new pass required error in Dealer Change Pass Page

Change Password Page - User should be able to view confirm pass required error in Dealer Change Pass Page
    [Tags]    Home Page    Change Pass
    run keyword and continue on failure    User should be able to view confirm pass required error in Dealer Change Pass Page

Change Password Page - User should be able to view new pass not match error in Dealer Change Pass Page
    [Tags]    Home Page    Change Pass
    run keyword and continue on failure    User should be able to view new pass not match error in Dealer Change Pass Page

Change Password Page - User should be able to view confirm pass not match error in Dealer Change Pass Page
    [Tags]    Home Page    Change Pass
    run keyword and continue on failure    User should be able to view confirm pass not match error in Dealer Change Pass Page

Company Details Page - User should be able to view company details page
    [Tags]    Home Page    Comp Details
    run keyword and continue on failure    User should be able to click and expand Company
    run keyword and continue on failure    User should be able to click Company - Company Details from left navigation
    run keyword and continue on failure    User should be able to view company details page

Company Details Page - User should be able to input and save company details in Dealer Company Details Page
    [Tags]    Home Page    Comp Details
    run keyword and continue on failure    User should be able to input valid Company name in Dealer Company Details Page
    run keyword and continue on failure    User should be able to input valid Trading Name in Dealer Company Details Page
    run keyword and continue on failure    User should be able to input valid Postal Address Line 1 in Dealer Company Details Page
    run keyword and continue on failure    User should be able to input valid Postal Address Line 2 in Dealer Company Details Page
    run keyword and continue on failure    User should be able to input valid Postal Suburb in Dealer Company Details Page
    run keyword and continue on failure    User should be able to input valid Postal Code in Dealer Company Details Page
    run keyword and continue on failure    User should be able to click Postal Address State Drop Down in Dealer Company Details Page
    run keyword and continue on failure    User should be able to select Postal Address State in Dealer Company Details Page
#    run keyword and continue on failure    User should be able to check/uncheck Del Add Same As Postal Add Checkbox in Dealer Company Details Page
#    run keyword and continue on failure    User should be able to check/uncheck Del Add Same As Postal Add Checkbox in Dealer Company Details Page
    run keyword and continue on failure    User should be able to input valid Delivery Address Line 1 in Dealer Company Details Page
    run keyword and continue on failure    User should be able to input valid Delivery Address Line 2 in Dealer Company Details Page
    run keyword and continue on failure    User should be able to input valid Delivery Suburb in Dealer Company Details Page
    run keyword and continue on failure    User should be able to input valid Delivery Code in Dealer Company Details Page
    run keyword and continue on failure    User should be able to click Delivery Address State Drop Down in Dealer Company Details Page
    run keyword and continue on failure    User should be able to select Delivery Address State in Dealer Company Details Page
    run keyword and continue on failure    User should be able to input valid Company Phone Number in Dealer Company Details Page
    run keyword and continue on failure    User should be able to input valid First Name in Dealer Company Details Page
    run keyword and continue on failure    User should be able to input valid Last Name in Dealer Company Details Page
    run keyword and continue on failure    User should be able to click opening hours in Dealer Company Details Page
    run keyword and continue on failure    User should be able to select opening hours value in Dealer Company Details Page
    run keyword and continue on failure    User should be able to click closing hours in Dealer Company Details Page
    run keyword and continue on failure    User should be able to select closing hours value in Dealer Company Details Page
    run keyword and continue on failure    User should be able to click cancel button in Dealer Company Details Page
#    run keyword and continue on failure    User should be able to click save button in Dealer Company Details Page
#    run keyword and continue on failure    User should be able to click no on update cofirmation modal in Dealer Company Details Page
    run keyword and continue on failure    TC Move to Top

##Company Details Page - User should be able to view error messages in Dealer Company Details Page
##    [Tags]    Home Page    Comp Details
##    run keyword and continue on failure    User should be able to view error messages in Dealer Company Details Page

Staff Page - User should be able to view staff page
    [Tags]    Home Page    Staff
#    run keyword and continue on failure    User should be able to click and expand Company
    run keyword and continue on failure    User should be able to click Company - Staff Pass from left navigation
    run keyword and continue on failure    User should be able to view staff page

Staff Page - User should be able to click add new staff in Dealer Staff Page
    [Tags]    Home Page    Staff
    run keyword and continue on failure    User should be able to click add new staff in Dealer Staff Page
    run keyword and continue on failure    User should be able to add new staff details in Dealer Staff Page

Staff Page - User should be able to click active checkbox at add new staff in Dealer Staff Page
    [Tags]    Home Page    Staff
    run keyword and continue on failure    User should be able to click active checkbox at add new staff in Dealer Staff Page

Staff Page - User should be able to click cancel add new staff in Dealer Staff Page
    [Tags]    Home Page    Staff
    run keyword and continue on failure    User should be able to click cancel add new staff in Dealer Staff Page

Staff Page - User should be able to click and edit staff button in Dealer Staff Page
    [Tags]    Home Page    Staff
    run keyword and continue on failure    User should be able to click edit staff button in Dealer Staff Page
    run keyword and continue on failure    User should be able to edit First Name in Dealer Staff Page
    run keyword and continue on failure    User should be able to edit Last Name in Dealer Staff Page
    run keyword and continue on failure    User should be able to edit Phone Number in Dealer Staff Page
    run keyword and continue on failure    User should be able to click active checkbox in Dealer Staff Page
    run keyword and continue on failure    User should ba able to click save in Dealer Staff Page
    run keyword and continue on failure    User should be able to click no in the confirmation in Dealer Staff Page

##Staff Page -  User should be able to view error messages in Dealer Staff Page
##    [Tags]    Home Page    Staff
##    run keyword and continue on failure    User should be able to click edit staff button in Dealer Staff Page
##    run keyword and continue on failure    User should be able to view error messages in Dealer Staff Page
##   run keyword and continue on failure    User should ba able to click cancel in Dealer Staff Page

Settings Page - User should be able to view settings page
    [Tags]    Home Page    Settings
    run keyword and continue on failure    User should be able to click Settings from left navigation
    run keyword and continue on failure    User should be able to view settings page

#Settings Page - User should be able to toggle on/off email notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to toggle on/off email notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to toggle on/off email notification in Dealer Settings Page
#
#Settings Page- User should be able to toggle on/off general message notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to toggle on/off general message notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to toggle on/off general message notification in Dealer Settings Page
#
#Settings Page - User should be able to toggle on/off order message notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to toggle on/off order message notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to toggle on/off order message notification in Dealer Settings Page
#
#Settings Page - User should be able to toggle on/off return message notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to toggle on/off return message notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to toggle on/off return message notification in Dealer Settings Page
#
#Settings Page - User should be able to toggle on/off product message notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to toggle on/off product message notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to toggle on/off product message notification in Dealer Settings Page
#
#Settings Page - User should be able to toggle on/off order creation notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to toggle on/off order creation notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to toggle on/off order creation notification in Dealer Settings Page
#
#Settings Page - User should be able to toggle on/off back order notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to toggle on/off back order notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to toggle on/off back order notification in Dealer Settings Page
#
#Settings Page - User should be able to toggle on/off part number masking in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to toggle on/off part number masking in Dealer Settings Page
#    run keyword and continue on failure    User should be able to toggle on/off part number masking in Dealer Settings Page
#
#Settings Page - User should be able to toggle on/off returns in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to toggle on/off returns in Dealer Settings Page
#    run keyword and continue on failure    User should be able to toggle on/off returns in Dealer Settings Page

##Settings Page - User should be able to toggle on/off dc orders in Dealer Settings Page
##    [Tags]    Home Page    Settings
##    run keyword and continue on failure    User should be able to toggle on/off dc orders in Dealer Settings Page
##    run keyword and continue on failure    User should be able to toggle on/off dc orders in Dealer Settings Page

#Settings Page - User should be able add email on email notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to click + icon on email notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to input valid email on email notification textbox in Dealer Settings Page
#    run keyword and continue on failure    User should be able to click save button on email notification in Dealer Settings Page
#
#Settings Page - User should be able to click edit button on email notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to click edit button on email notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to view error message on email notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to input valid email on email notification textbox in Dealer Settings Page
#    run keyword and continue on failure    User should be able to click save button on email notification in Dealer Settings Page
#
#Settings Page - User should be able to delete user email on email notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to delete user email on email notification in Dealer Settings Page
#    tc sleep
#
#Settings Page - User should be able add email on general message notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to click + icon on general message notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to input valid email on general message notification textbox in Dealer Settings Page
#    run keyword and continue on failure    User should be able to click save button on general message notification in Dealer Settings Page
#
#Settings Page- User should be able to click edit button on general message notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to click edit button on general message notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to view error message on general message notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to input valid email on general message notification textbox in Dealer Settings Page
#    run keyword and continue on failure    User should be able to click save button on general message notification in Dealer Settings Page
#
#TSettings Page - User should be able to delete user email on general message notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to delete user email on general message notification in Dealer Settings Page
#
#Settings Page - User should be able add email on order message notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to click + icon on order message notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to input valid email on order message notification textbox in Dealer Settings Page
#    run keyword and continue on failure    User should be able to click save button on order message notification in Dealer Settings Page
#
#Settings Page- User should be able to click edit button on order message notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to click edit button on order message notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to view error message on order message notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to input valid email on order message notification textbox in Dealer Settings Page
#    run keyword and continue on failure    User should be able to click save button on order message notification in Dealer Settings Page
#
#Settings Page - User should be able to delete user email on order message notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to delete user email on order message notification in Dealer Settings Page
#
#Settings Page - User should be able add email on return message notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to click + icon on return message notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to input valid email on return message notification textbox in Dealer Settings Page
#    run keyword and continue on failure    User should be able to click save button on return message notification in Dealer Settings Page
#
#Settings Page - User should be able to click edit button on return message notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to click edit button on return message notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to view error message on return message notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to input valid email on return message notification textbox in Dealer Settings Page
#    run keyword and continue on failure    User should be able to click save button on return message notification in Dealer Settings Page
#
#Settings Page - User should be able to delete user email on return message notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to delete user email on return message notification in Dealer Settings Page
#
#Settings Page - User should be able add email on product message notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to click + icon on product message notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to input valid email on product message notification textbox in Dealer Settings Page
#    run keyword and continue on failure    User should be able to click save button on product message notification in Dealer Settings Page
#
#Settings Page - User should be able to click edit button on product message notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to click edit button on product message notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to view error message on product message notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to input valid email on product message notification textbox in Dealer Settings Page
#    run keyword and continue on failure    User should be able to click save button on product message notification in Dealer Settings Page
#
#Settings Page - User should be able to delete user email on product message notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to delete user email on product message notification in Dealer Settings Page
#
#Settings Page- User should be able add email on order creation notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to click + icon on order creation notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to input valid email on order creation notification textbox in Dealer Settings Page
#    run keyword and continue on failure    User should be able to click save button on order creation notification in Dealer Settings Page
#
#Settings Page - User should be able to click edit button on order creation notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to click edit button on order creation notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to view error message on order creation notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to input valid email on order creation notification textbox in Dealer Settings Page
#    run keyword and continue on failure    User should be able to click save button on order creation notification in Dealer Settings Page
#
#Settings Page - User should be able to delete user email on order creation notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to delete user email on order creation notification in Dealer Settings Page
#
#Settings Page - User should be able add email on back order notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to click + icon on back order notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to input valid email on back order notification textbox in Dealer Settings Page
#    run keyword and continue on failure    User should be able to click save button on back order notification in Dealer Settings Page
#
#Settings Page - User should be able to click edit button on back order notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to click edit button on back order notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to view error message on back order notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to input valid email on back order notification textbox in Dealer Settings Page
#    run keyword and continue on failure    User should be able to click save button on back order notification in Dealer Settings Page
#
#Settings Page - User should be able to delete user email on back order notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to delete user email on back order notification in Dealer Settings Page
#
#Settings Page - User should be able to edit values on Returns in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to click decrement icon on Returns in Dealer Settings Page
#    run keyword and continue on failure    User should be able to click increment icon on Returns in Dealer Settings Page
#    run keyword and continue on failure    User should be able to edit return days value on Returns in Dealer Settings Page
#
#Settings Page - User should be able to click save button Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to click save button Dealer Settings Page
#    run keyword and continue on failure    User should be able to click yes save changes in Dealer Settings Page

Logout - User should be able to Logout
    [Tags]    Home Page    Settings
    run keyword and continue on failure    User should be able to Logout

#Test Teardown
#    Run Keywords    Close Browser
#    run keyword    Save Log DIR