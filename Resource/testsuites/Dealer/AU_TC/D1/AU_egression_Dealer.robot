*** Settings ***
Documentation    Suite description

Library    SeleniumLibrary
Library    Process
#Library    FakerLibrary


Resource  ../../../../../Resource/testdata/Dealer/AU_Config/AU_D1_Config.robot
Resource  ../../../../../Resource/testdata/Dealer/Dealer_Variable.robot
Resource  ../../../../../Resource/testdata/Dealer/Dealer_Resource.robot


*** Test Cases ***
Test Setup  Run Keywords   Open Chrome Browser
Screen Shot DIR  Run Keywords    Dealer Screent Shot DIR

TC-001 - Verify Login Page
    [Tags]    Login Page
    run keyword and continue on failure    Verify Login Page

TC-002 - Verify Login Page Elements
    [Tags]    Login Page
    run keyword and continue on failure    Verify Login Page Elements

TC-003 - Input Invalid Username
    [Tags]    Login Page
    run keyword and continue on failure    Input Invalid Username

TC-004 - Input Invalid Password
    [Tags]    Login Page
    run keyword and continue on failure    Input Invalid Password

TC-005 - Login Invalid Email and Pass
    [Tags]    Login Page
    run keyword and continue on failure    Login Invalid Email and Pass

TC-006 - User should be able to check/uncheck Remember me
    [Tags]    Login Page
    run keyword and continue on failure    User should be able to check/uncheck Remember me

TC-007 - User should be able to Click Forgot Password
    [Tags]    Login Page    Forgot Password
    run keyword and continue on failure    User should be able to Click Forgot Password

TC-008 - User should be able to view Reset Password Page
    [Tags]    Login Page    Forgot Password
    run keyword and continue on failure    User should be able to view Reset Password Page

TC-009 - User should be able to view email error messsage in Dealer Reset Password Page
    [Tags]    Login Page    Forgot Password
    run keyword and continue on failure    User should be able to view email error messsage in Dealer Reset Password Page

TC-010 - User should be able input valid email in Dealer Reset Password Page
    [Tags]    Login Page    Forgot Password
    run keyword and continue on failure    User should be able input valid email in Dealer Reset Password Page

TC-011 - User should be able to click submit button in Dealer Reset Password Page
    [Tags]    Login Page    Forgot Password
    run keyword and continue on failure    User should be able to click submit button in Dealer Reset Password Page
    run keyword and continue on failure    Browse Back Button

TC-012 - Input Valid Username
    [Tags]    Login Page
    run keyword and continue on failure    Input Valid Username

TC-013 - Input Valid Password
    [Tags]    Login Page
    run keyword and continue on failure    Input Valid Password

TC-014 - User should be able to click Login Button
    [Tags]    Login Page
    run keyword and continue on failure    User should be able to click Login Button

TC-015 - Verify Home Page Elements
    [Tags]    Home Page
    run keyword and continue on failure    Verify Home Page Elements

TC-016 - User should be able to view top navigation
    [Tags]    Home Page    Top Navigation
    run keyword and continue on failure    User should be able to view top navigation

TC-017 - User should be able to click account from top navigation
    [Tags]    Home Page    Top Navigation
    run keyword and continue on failure    User should be able to click account from top navigation

TC-018 - User should be able to click orders from top navigation
    [Tags]    Home Page    Top Navigation
    run keyword and continue on failure    User should be able to click orders from top navigation

TC-019 - User should be able to click return from top navigation
    [Tags]    Home Page    Top Navigation
    run keyword and continue on failure    User should be able to click return from top navigation

TC-020 - User should be able to click new buyer from top navigation
    [Tags]    Home Page    Top Navigation
    run keyword and continue on failure    User should be able to click new buyer from top navigation

TC-021 - User should be able to click messages from top navigation
    [Tags]    Home Page    Top Navigation
    run keyword and continue on failure    User should be able to click messages from top navigation

TC-022 - User should be able to click orders from left navigation
    [Tags]    Home Page    Left Navigation
    run keyword and continue on failure    User should be able to click orders from left navigation

TC-023 - User should be able to click Return from left navigation
    [Tags]    Home Page    Left Navigation
    run keyword and continue on failure    User should be able to click Return from left navigation

TC-024 - User should be able to click and expand Customer Management
    [Tags]    Home Page    Left Navigation
    run keyword and continue on failure    User should be able to click and expand Customer Management

TC-025 - User should be able to click Customer Manegement - New Reg from left navigation
    [Tags]    Home Page    Left Navigation
    run keyword and continue on failure    User should be able to click Customer Manegement - New Reg from left navigation

TC-026 - User should be able to click Customer Manegement - Buyer Rel from left navigation
    [Tags]    Home Page    Left Navigation
    run keyword and continue on failure    User should be able to click Customer Manegement - Buyer Rel from left navigation

TC-027 - User should be able to click Messages from left navigation
    [Tags]    Home Page    Left Navigation
    run keyword and continue on failure    User should be able to click Messages from left navigation

TC-028 - User should be able to click and expand Profile
    [Tags]    Home Page    Left Navigation
    run keyword and continue on failure    User should be able to click and expand Profile

TC-029 - User should be able to click Profile - Account Details from left navigation
    [Tags]    Home Page    Left Navigation
    run keyword and continue on failure    User should be able to click Profile - Account Details from left navigation

TC-030 - User should be able to click Profile - Change Pass from left navigation
    [Tags]    Home Page    Left Navigation
    run keyword and continue on failure    User should be able to click Profile - Change Pass from left navigation

TC-031 - User should be able to click and expand Company
    [Tags]    Home Page    Left Navigation
    run keyword and continue on failure    User should be able to click and expand Company

TC-032 - User should be able to click Company - Company Details from left navigation
    [Tags]    Home Page    Left Navigation
    run keyword and continue on failure    User should be able to click Company - Company Details from left navigation

TC-033 - User should be able to click Company - Staff Pass from left navigation
    [Tags]    Home Page    Left Navigation
    run keyword and continue on failure    User should be able to click Company - Staff Pass from left navigation

TC-034 - User should be able to click Settings from left navigation
    [Tags]    Home Page    Left Navigation
    run keyword and continue on failure    User should be able to click Settings from left navigation
    run keyword and continue on failure    TC Move to Top

TC-035 - User should be able to view Cutomer Orders Panel
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to click orders from left navigation
    run keyword and continue on failure    User should be able to view Cutomer Orders Panel

TC-036 - User should be able to filter status by Received in Order Page
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to click filter by status in Order Page
    run keyword and continue on failure    User should be able to filter status by Received in Order Page

TC-037 - User should be able to filter status by Submitted in Order Page
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to click filter by status in Order Page
    run keyword and continue on failure    User should be able to filter status by Submitted in Order Page

TC-038 - User should be able to filter status by Dispatched in Order Page
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to click filter by status in Order Page
    run keyword and continue on failure    User should be able to filter status by Dispatched in Order Page

TC-039 - User should be able to filter status by Dispatched in Order Page
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to click filter by status in Order Page
    run keyword and continue on failure    User should be able to filter status by Partially Dispathed in Order Page

TC-040 - User should be able to filter status by Order with Returns in Order Page
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to click filter by status in Order Page
    run keyword and continue on failure    User should be able to filter status by Order with Returns in Order Page

TC-041 - User should be able to filter status by ALL in Order Page
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to click filter by status in Order Page
    run keyword and continue on failure    User should be able to filter status by ALL in Order Page

TC-042 - User should be able to view Date Filter Elements in Order Page
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to click Date Filter in Order Page
    run keyword and continue on failure    User should be able to view Date Filter Elements in Order Page

TC-043 - User should be able to click Previous Month Button in Order Page
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to click Previous Month Button in Order Page

TC-044 - User should be able to click Next Month Button in Order Page
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to click Next Month Button in Order Page

TC-045 - User should be able to select month from drop down in Order Page
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to click Month Drop Down Filter in Order Page
    run keyword and continue on failure    User should be able to select month from drop down in Order Page

TC-046 - User should be able to select year from drop down in Order Page
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to click Year Drop Down Filter in Order Page
    run keyword and continue on failure    User should be able to select year from drop down in Order Page

TC-047 - User should be able to select From Date in Order Page
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to select From Date in Order Page

TC-048 - User should be able to select To Date in Order Page
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to select To Date in Order Page

TC-049 - User should be able to click Date Filter Submit Button in Order Page
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to click Date Filter Submit Button in Order Page

TC-050 - User should be able to click Date Filter Clear Button in Order Page
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to click Date Filter in Order Page
    run keyword and continue on failure    User should be able to click Date Filter Clear Button in Order Page
    run keyword and continue on failure    User should be able to click Search Box in Order Page

TC-051 - User should be able to click Search Box in Order Page
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to click Search Box in Order Page

TC-052 - User should be able to Input Text in Search Box in Order Page
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to Input Text in Search Box in Order Page

TC-053 - User should be able to click clear button from Search Box in Order Page
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to click clear button from Search Box in Order Page

TC-054 - User should be able to Filter by Order Number in Order Page
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to click Arrage Filter in Order Page
    run keyword and continue on failure    User should be able to Filter by Order Number in Order Page

TC-055 - User should be able to Filter by Old to New in Order Page
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to click Arrage Filter in Order Page
    run keyword and continue on failure    User should be able to Filter by Old to New in Order Page

TC-056 - User should be able to Filter by New to Old in Order Page
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to click Arrage Filter in Order Page
    run keyword and continue on failure    User should be able to Filter by New to Old in Order Page

TC-057 - User should be able to view and click order with Recieved Status in Dealer Orders Page
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to view order with Recieved Status in Dealer Orders Page
    run keyword and continue on failure    User should be able to click order with Recieved Status in Dealer Orders Page
    run keyword and continue on failure    User should be able to view order details
    run keyword and continue on failure    User should be able to click Back to Customer Orders in Dealer Order Details Page

TC-058 - User should be able to view and click order with Submitted Status in Dealer Orders Page
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to view order with Submitted Status in Dealer Orders Page
    run keyword and continue on failure    User should be able to click order with Submitted Status in Dealer Orders Page
    run keyword and continue on failure    User should be able to view order details
    run keyword and continue on failure    User should be able to click Back to Customer Orders in Dealer Order Details Page

TC-059 - User should be able to view and click order with Dispatched Status in Dealer Orders Page
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to view order with Dispatched Status in Dealer Orders Page
    run keyword and continue on failure    User should be able to click order with Dispatched Status in Dealer Orders Page
    run keyword and continue on failure    User should be able to view order details
    run keyword and continue on failure    User should be able to click Back to Customer Orders in Dealer Order Details Page

TC-060 - User should be able to view and click order with Partially Dispatched Status in Dealer Orders Page
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to view order with Partially Dispatched Status in Dealer Orders Page
    run keyword and continue on failure    User should be able to click order with Partially Dispatched Status in Dealer Orders Page
    run keyword and continue on failure    User should be able to view order details
    run keyword and continue on failure    User should be able to click Back to Customer Orders in Dealer Order Details Page

TC-061 - User should be able to view and click order with Orders with Returns Status in Dealer Orders Page
    [Tags]    Home Page    Orders Page
    run keyword and continue on failure    User should be able to view order with Orders with Returns Status in Dealer Orders Page
    run keyword and continue on failure    User should be able to click order with Orders with Returns Status in Dealer Orders Page
    run keyword and continue on failure    User should be able to view order details
    run keyword and continue on failure    User should be able to click Back to Customer Orders in Dealer Order Details Page

TC-062 - User should be able to view Return Request Panel
    [Tags]    Home Page    Return Page
    run keyword and continue on failure    User should be able to click Return from left navigation
    run keyword and continue on failure    User should be able to view Return Request Panel

TC-063 - User should be able to filter status by In Progress in Return Page
    [Tags]    Home Page    Return Page
    run keyword and continue on failure    User should be able to click filter by status in Retrun Page
    run keyword and continue on failure    User should be able to filter status by In Progress in Return Page

TC-064 - User should be able to filter status by Declined in Return Page
    [Tags]    Home Page    Return Page
    run keyword and continue on failure    User should be able to click filter by status in Retrun Page
    run keyword and continue on failure    User should be able to filter status by Declined in Return Page

TC-065 - User should be able to filter status by Accepted in Return Page
    [Tags]    Home Page    Return Page
    run keyword and continue on failure    User should be able to click filter by status in Retrun Page
    run keyword and continue on failure    User should be able to filter status by Accepted in Return Page

TC-066 - User should be able to filter status by ALL in Return Page
    [Tags]    Home Page    Return Page
    run keyword and continue on failure    User should be able to click filter by status in Retrun Page
    run keyword and continue on failure    User should be able to filter status by ALL in Return Page

TC-067 - User should be able to view Date Filter Elements in Return Page
    [Tags]    Home Page    Return Page
    run keyword and continue on failure    User should be able to click Date Filter in Return Page
    run keyword and continue on failure    User should be able to view Date Filter Elements in Return Page

TC-068 - User should be able to click Previous Month Button in Return Page
    [Tags]    Home Page    Return Page
    run keyword and continue on failure    User should be able to click Previous Month Button in Return Page

TC-069 - User should be able to click Next Month Button in Return Page
    [Tags]    Home Page    Return Page
    run keyword and continue on failure    User should be able to click Next Month Button in Return Page

TC-070 - User should be able to select month from drop down in Return Page
    [Tags]    Home Page    Return Page
    run keyword and continue on failure    User should be able to click Month Drop Down Filter in Return Page
    run keyword and continue on failure    User should be able to select month from drop down in Return Page

TC-071 - User should be able to select year from drop down in Return Page
    [Tags]    Home Page    Return Page
    run keyword and continue on failure    User should be able to click Year Drop Down Filter in Return Page
    run keyword and continue on failure    User should be able to select year from drop down in Return Page

TC-072 - User should be able to select From Date in Return Page
    [Tags]    Home Page    Return Page
    run keyword and continue on failure    User should be able to select From Date in Return Page

TC-073 - User should be able to select To Date in Return Page
    [Tags]    Home Page    Return Page
    run keyword and continue on failure    User should be able to select To Date in Return Page

TC-074 - User should be able to click Date Filter Submit Button in Return Page
    [Tags]    Home Page    Return Page
    run keyword and continue on failure    User should be able to click Date Filter Submit Button in Return Page

TC-075 - User should be able to click Date Filter Clear Button in Return Page
    [Tags]    Home Page    Return Page
    run keyword and continue on failure    User should be able to click Date Filter in Return Page
    run keyword and continue on failure    User should be able to click Date Filter Clear Button in Return Page
    run keyword and continue on failure    User should be able to click Search Box in Return Page

TC-076 - User should be able to click Search Box in Return Page
    [Tags]    Home Page    Return Page
    run keyword and continue on failure    User should be able to click Search Box in Return Page

TC-077 - User should be able to Input Text in Search Box in Return Page
    [Tags]    Home Page    Return Page
    run keyword and continue on failure    User should be able to Input Text in Search Box in Return Page

TC-078 - User should be able to click clear button from Search Box in Return Page
    [Tags]    Home Page    Return Page
    run keyword and continue on failure    User should be able to click clear button from Search Box in Return Page

TC-079 - User should be able to Filter by Old to New in Return Page
    [Tags]    Home Page    Return Page
    run keyword and continue on failure    User should be able to click Arrage Filter in Return Page
    run keyword and continue on failure    User should be able to Filter by Old to New in Return Page

TC-080 - User should be able to Filter by New to Old in Return Page
    [Tags]    Home Page    Return Page
    run keyword and continue on failure    User should be able to click Arrage Filter in Return Page
    run keyword and continue on failure    User should be able to Filter by New to Old in Return Page

TC-081 - User should be able to view and click order with Accepted Status in Dealer Return Page
    [Tags]    Home Page    Return Page
    run keyword and continue on failure    User should be able to click filter by status in Retrun Page
    run keyword and continue on failure    User should be able to filter status by Accepted in Return Page
    run keyword and continue on failure    User should be able to view order with Accepted Status in Dealer Return Page
    run keyword and continue on failure    User should be able to click order with Accepted Status in Dealer Return Page
    run keyword and continue on failure    User should be able to view Return details
    run keyword and continue on failure    User should be able to click Back to Return Request in Dealer Return Details Page

TC-082 - User should be able to message supplier on order with Accepted Status in Dealer Return Page
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

TC-083 - User should be able to view and click order with Declined Status in Dealer Return Page
    [Tags]    Home Page    Return Page
    run keyword and continue on failure    User should be able to click filter by status in Retrun Page
    run keyword and continue on failure    User should be able to filter status by Declined in Return Page
    run keyword and continue on failure    User should be able to view order with Declined Status in Dealer Return Page
    run keyword and continue on failure    User should be able to click order with Declined Status in Dealer Return Page
    run keyword and continue on failure    User should be able to view Return details
    run keyword and continue on failure    User should be able to click Back to Return Request in Dealer Return Details Page

TC-084 - User should be able to message supplier on order with Declined Status in Dealer Return Page
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

TC-085 - User should be able to view and click order with In Progress Status in Dealer Return Page
    [Tags]    Home Page    Return Page
    run keyword and continue on failure    User should be able to click filter by status in Retrun Page
    run keyword and continue on failure    User should be able to filter status by In Progress in Return Page
    run keyword and continue on failure    User should be able to view order with In Progress Status in Dealer Return Page
    run keyword and continue on failure    User should be able to click order with In Progress Status in Dealer Return Page
    run keyword and continue on failure    User should be able to view Return details
    run keyword and continue on failure    User should be able to click Back to Return Request in Dealer Return Details Page

TC-086 - User should be able to message supplier on order with In Progress Status in Dealer Return Page
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

TC-089 - User should be able to view New Reg Req Panel
    [Tags]    Home Page    New Reg Req
    run keyword and continue on failure    User should be able to click and expand Customer Management
    run keyword and continue on failure    User should be able to click Customer Manegement - New Reg from left navigation
    run keyword and continue on failure    User should be able to view New Reg Req Panel

TC-090 - User should be able to filter status by Rejected in Dealer New Registration Request
    [Tags]    Home Page    New Reg Req
    run keyword and continue on failure    User should be able to click Filter by Status in Dealer New Registration Request
    run keyword and continue on failure    User should be able to filter status by Rejected in Dealer New Registration Request

TC-091 - User should be able to filter status by Approved in Dealer New Registration Request
    [Tags]    Home Page    New Reg Req
    run keyword and continue on failure    User should be able to click Filter by Status in Dealer New Registration Request
    run keyword and continue on failure    User should be able to filter status by Approved in Dealer New Registration Request

TC-092 - User should be able to filter status by In Progress in Dealer New Registration Request
    [Tags]    Home Page    New Reg Req
    run keyword and continue on failure    User should be able to click Filter by Status in Dealer New Registration Request
    run keyword and continue on failure    User should be able to filter status by In Progress in Dealer New Registration Request

TC-093 - User should be able to filter status by All in Dealer New Registration Request
    [Tags]    Home Page    New Reg Req
    run keyword and continue on failure    User should be able to click Filter by Status in Dealer New Registration Request
    run keyword and continue on failure    User should be able to filter status by All in Dealer New Registration Request

#TC-094 - User should be able to view and click Registration Request with In Progress Status in Dealer New Registration Request Page
#    [Tags]    Home Page    New Reg Req
#    run keyword and continue on failure    User should be able to view Registration Request with In Progress Status in Dealer New Registration Request Page
#    run keyword and continue on failure    User should be able to click Registration Request with In Progress Status in Dealer New Registration Request Page
#    run keyword and continue on failure    User should be able to view New Buyer Details Page
#    run keyword and continue on failure    User should be able to click Back to Registraion Request in Dealer Registration Request Details Page

TC-095 - User should be able to view and click Registration Request with Approved Status in Dealer New Registration Request Page
    [Tags]    Home Page    New Reg Req
    run keyword and continue on failure    User should be able to view Registration Request with Approved Status in Dealer New Registration Request Page
    run keyword and continue on failure    User should be able to click Registration Request with Approved Status in Dealer New Registration Request Page
    run keyword and continue on failure    User should be able to view New Buyer Details Page
    run keyword and continue on failure    User should be able to click Back to Registraion Request in Dealer Registration Request Details Page

TC-096 - User should be able to view and click Registration Request with Rejected Status in Dealer New Registration Request Page
    [Tags]    Home Page    New Reg Req
    run keyword and continue on failure    User should be able to view Registration Request with Rejected Status in Dealer New Registration Request Page
    run keyword and continue on failure    User should be able to click Registration Request with Rejected Status in Dealer New Registration Request Page
    run keyword and continue on failure    User should be able to view New Buyer Details Page
    run keyword and continue on failure    User should be able to click Back to Registraion Request in Dealer Registration Request Details Page

TC-097 - User should be able to view Buyer Rel Page
    [Tags]    Home Page    Cust Rel
    run keyword and continue on failure    User should be able to click Customer Manegement - Buyer Rel from left navigation
    run keyword and continue on failure    User should be able to view Buyer Rel Page

TC-098 - User should be able to Click No Check/Uncheck Status
    [Tags]    Home Page    Cust Rel
    run keyword and continue on failure    User should be able to Check/Uncheck Status
    run keyword and continue on failure    User should be able to Click No Check/Uncheck Status

TC-099 - User should be able to Click Yes Check/Uncheck Status
    [Tags]    Home Page    Cust Rel
    run keyword and continue on failure    User should be able to Check/Uncheck Status
    run keyword and continue on failure    User should be able to Click Yes Check/Uncheck Status

TC-100 - User should be able to view message page
    [Tags]    Home Page    Messages
    run keyword and continue on failure    User should be able to click Messages from left navigation
    run keyword and continue on failure    User should be able to view message page

TC-101 - User should be able to select General Enquiry filter in Dealer Messages Page
    [Tags]    Home Page    Messages
    run keyword and continue on failure    User should be able to click filter messages in Dealer Messages Page
    run keyword and continue on failure    User should be able to select General Enquiry filter in Dealer Messages Page

TC-102 - User should be able to select Return Enquiry filter in Dealer Messages Page
    [Tags]    Home Page    Messages
    run keyword and continue on failure    User should be able to click filter messages in Dealer Messages Page
    run keyword and continue on failure    User should be able to select Return Enquiry filter in Dealer Messages Page

TC-103 - User should be able to select Order Enquiry filter in Dealer Messages Page
    [Tags]    Home Page    Messages
    run keyword and continue on failure    User should be able to click filter messages in Dealer Messages Page
    run keyword and continue on failure    User should be able to select Order Enquiry filter in Dealer Messages Page

TC-104 - User should be able to select Product Enquiry filter in Dealer Messages Page
    [Tags]    Home Page    Messages
    run keyword and continue on failure    User should be able to click filter messages in Dealer Messages Page
    run keyword and continue on failure    User should be able to select Product Enquiry filter in Dealer Messages Page

TC-105 - User should be able to select All filter in Dealer Messages Page
    [Tags]    Home Page    Messages
    run keyword and continue on failure    User should be able to click filter messages in Dealer Messages Page
    run keyword and continue on failure    User should be able to select All filter in Dealer Messages Page

TC-106 - User should be able to view Date Filter Elements in Dealer Messages Page
    [Tags]    Home Page    Messages
    run keyword and continue on failure    User should be able to click Date Filter in Dealer Messages Page
    run keyword and continue on failure    User should be able to view Date Filter Elements in Dealer Messages Page

TC-107 - User should be able to click Previous Month Button in Dealer Messages Page
    [Tags]    Home Page    Messages
    run keyword and continue on failure    User should be able to click Previous Month Button in Dealer Messages Page

TC-108 - User should be able to click Previous Month Button in Dealer Messages Page
    [Tags]    Home Page    Messages
    run keyword and continue on failure    User should be able to click Next Month Button in Dealer Messages Page

TC-109 - User should be able to select month from drop down in Dealer Messages Page
    [Tags]    Home Page    Messages
    run keyword and continue on failure    User should be able to click Month Drop Down Filter in Dealer Messages Page
    run keyword and continue on failure    User should be able to select month from drop down in Dealer Messages Page

TC-110 - User should be able to select year from drop down in Dealer Messages Page
    [Tags]    Home Page    Messages
    run keyword and continue on failure    User should be able to click Year Drop Down Filter in Dealer Messages Page
    run keyword and continue on failure    User should be able to select year from drop down in Dealer Messages Page

TC-111 - User should be able to select From Date in Dealer Messages Page
    [Tags]    Home Page    Messages
    run keyword and continue on failure    User should be able to select From Date in Dealer Messages Page

TC-112 - User should be able to select To Date in Dealer Messages Page
    [Tags]    Home Page    Messages
    run keyword and continue on failure    User should be able to select To Date in Dealer Messages Page

TC-113 - User should be able to click Date Filter Submit Button in Dealer Messages Page
    [Tags]    Home Page    Messages
    run keyword and continue on failure    User should be able to click Date Filter Submit Button in Dealer Messages Page

TC-114 - User should be able to click Date Filter Clear Button in Dealer Messages Page
    [Tags]    Home Page    Messages
    run keyword and continue on failure    User should be able to click Date Filter in Dealer Messages Page
    run keyword and continue on failure    User should be able to click Date Filter Clear Button in Dealer Messages Page
    run keyword and continue on failure    User should be able to click Search Box in Dealer Messages Page

TC-115 - User should be able to click Search Box in Dealer Messages Page
    [Tags]    Home Page    Messages
    run keyword and continue on failure    User should be able to click Search Box in Dealer Messages Page

TC-116 - User should be able to Input Text in Search Box in Dealer Messages Page
    [Tags]    Home Page    Messages
    run keyword and continue on failure    User should be able to Input Text in Search Box in Dealer Messages Page

TC-117 - User should be able to click clear button from Search Box in Dealer Messages Page
    [Tags]    Home Page    Messages
    run keyword and continue on failure    User should be able to click clear button from Search Box in Dealer Messages Page

TC-118 - User should be able to click and send message on read General Enquiry in Dealer Message Page
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


TC-119 - User should be able to click and send message on read Order Enquiry in Dealer Message Page
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

TC-120 - User should be able to click and send message on read Return Enquiry in Dealer Message Page
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

TC-121 - User should be able to click and send message on read Product Enquiry in Dealer Message Page
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

TC-122 - User should be able to click and send message on unread General Enquiry in Dealer Message Page
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

TC-123 - User should be able to click and send message on unread Order Enquiry in Dealer Message Page
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

TC-124 - User should be able to click and send message on unread Return Enquiry in Dealer Message Page
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

TC-125 - User should be able to click and send message on unread Product Enquiry in Dealer Message Page
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

TC-126 - User should be able to view account details page
    [Tags]    Home Page    Acc Details
    run keyword and continue on failure    User should be able to click and expand Profile
    run keyword and continue on failure    User should be able to click Profile - Account Details from left navigation
    run keyword and continue on failure    User should be able to view account details page

TC-127 - User should be able to edit First name in Dealer Account Details Page
    [Tags]    Home Page    Acc Details
    run keyword and continue on failure    User should be able to edit First name in Dealer Account Details Page

TC-128 - User should be able to edit Last name in Dealer Account Details Page
    [Tags]    Home Page    Acc Details
    run keyword and continue on failure    User should be able to edit Last name in Dealer Account Details Page

TC-129 - User should be able to edit Phone Number in Dealer Account Details Page
    [Tags]    Home Page    Acc Details
    run keyword and continue on failure    User should be able to edit Phone Number in Dealer Account Details Page

TC-130 - User should be able to edit Landline Number in Dealer Account Details Page
    [Tags]    Home Page    Acc Details
    run keyword and continue on failure    User should be able to edit Landline Number in Dealer Account Details Page

TC-131 - User should be able to click Update in Dealer Account Details Page
    [Tags]    Home Page    Acc Details
    run keyword and continue on failure    User should be able to click Update in Dealer Account Details Page

TC-132 - User should be able to view update confirmation modal in Dealer Account Details Page
    [Tags]    Home Page    Acc Details
    run keyword and continue on failure    User should be able to view update confirmation modal in Dealer Account Details Page
    run keyword and continue on failure    User should be able to click No on update confirmation modal in Dealer Account Details Page

TC-133 - User should be able to click Cancel in Dealer Account Details Page
    [Tags]    Home Page    Acc Details
    run keyword and continue on failure    User should be able to click Cancel in Dealer Account Details Page

TC-134 - User should be able to view invalid phone number error in Dealer Account Details Page
    [Tags]    Home Page    Acc Details
    run keyword and continue on failure    User should be able to view invalid phone number error in Dealer Account Details Page

TC-135 - User should be able to view invalid landline number error in Dealer Account Details Page
    [Tags]    Home Page    Acc Details
    run keyword and continue on failure    User should be able to view invalid landline number error in Dealer Account Details Page

TC-136 - User should be able to view change password page
    [Tags]    Home Page    Change Pass
    run keyword and continue on failure    User should be able to click Profile - Change Pass from left navigation
    run keyword and continue on failure    User should be able to view change password page

TC-137 - User should be ablle to edit current password in Dealer Change Pass Page
    [Tags]    Home Page    Change Pass
    run keyword and continue on failure    User should be ablle to edit current password in Dealer Change Pass Page

TC-138 - User should be ablle to edit new password in Dealer Change Pass Page
    [Tags]    Home Page    Change Pass
    run keyword and continue on failure    User should be ablle to edit new password in Dealer Change Pass Page
    run keyword and continue on failure    User should be able to view new pass by clicking eye button in Dealer Change Pass Page
    run keyword and continue on failure    User should be able to hide new pass by clicking eye button in Dealer Change Pass Page

TC-139 - User should be ablle to edit confirm password in Dealer Change Pass Page
    [Tags]    Home Page    Change Pass
    run keyword and continue on failure    User should be ablle to edit confirm password in Dealer Change Pass Page
    run keyword and continue on failure    User should be able to view confirm pass by clicking eye button in Dealer Change Pass Page
    run keyword and continue on failure    User should be able to hide confirm pass by clicking eye button in Dealer Change Pass Page

TC-140 - User should be able to click Update button in Dealer Change Pass Page
    [Tags]    Home Page    Change Pass
    run keyword and continue on failure    User should be able to click Update button in Dealer Change Pass Page

TC-141 - User should be able to view update confirmation modal in Dealer Change Pass Page
    [Tags]    Home Page    Change Pass
    run keyword and continue on failure    User should be able to view update confirmation modal in Dealer Change Pass Page
    run keyword and continue on failure    User should be able to click No on update confirmation modal in Dealer Change Pass Page

TC-142 - User should be able to view current pass required error in Dealer Change Pass Page
    [Tags]    Home Page    Change Pass
    run keyword and continue on failure    User should be able to view current pass required error in Dealer Change Pass Page

TC-143 - User should be able to view new pass required error in Dealer Change Pass Page
    [Tags]    Home Page    Change Pass
    run keyword and continue on failure    User should be able to view new pass required error in Dealer Change Pass Page

TC-144 - User should be able to view confirm pass required error in Dealer Change Pass Page
    [Tags]    Home Page    Change Pass
    run keyword and continue on failure    User should be able to view confirm pass required error in Dealer Change Pass Page

TC-145 - User should be able to view new pass not match error in Dealer Change Pass Page
    [Tags]    Home Page    Change Pass
    run keyword and continue on failure    User should be able to view new pass not match error in Dealer Change Pass Page

TC-146 - User should be able to view confirm pass not match error in Dealer Change Pass Page
    [Tags]    Home Page    Change Pass
    run keyword and continue on failure    User should be able to view confirm pass not match error in Dealer Change Pass Page

TC-147 - User should be able to view company details page
    [Tags]    Home Page    Comp Details
    run keyword and continue on failure    User should be able to click and expand Company
    run keyword and continue on failure    User should be able to click Company - Company Details from left navigation
    run keyword and continue on failure    User should be able to view company details page

TC-148 - User should be able to input and save company details in Dealer Company Details Page
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

##TC-149 - User should be able to view error messages in Dealer Company Details Page
##    [Tags]    Home Page    Comp Details
##    run keyword and continue on failure    User should be able to view error messages in Dealer Company Details Page

TC-150 - User should be able to view staff page
    [Tags]    Home Page    Staff
#    run keyword and continue on failure    User should be able to click and expand Company
    run keyword and continue on failure    User should be able to click Company - Staff Pass from left navigation
    run keyword and continue on failure    User should be able to view staff page

TC-151 - User should be able to click add new staff in Dealer Staff Page
    [Tags]    Home Page    Staff
    run keyword and continue on failure    User should be able to click add new staff in Dealer Staff Page
    run keyword and continue on failure    User should be able to add new staff details in Dealer Staff Page

TC-152 - User should be able to click active checkbox at add new staff in Dealer Staff Page
    [Tags]    Home Page    Staff
    run keyword and continue on failure    User should be able to click active checkbox at add new staff in Dealer Staff Page

TC-153 - User should be able to click cancel add new staff in Dealer Staff Page
    [Tags]    Home Page    Staff
    run keyword and continue on failure    User should be able to click cancel add new staff in Dealer Staff Page

TC-154 - User should be able to click and edit staff button in Dealer Staff Page
    [Tags]    Home Page    Staff
    run keyword and continue on failure    User should be able to click edit staff button in Dealer Staff Page
    run keyword and continue on failure    User should be able to edit First Name in Dealer Staff Page
    run keyword and continue on failure    User should be able to edit Last Name in Dealer Staff Page
    run keyword and continue on failure    User should be able to edit Phone Number in Dealer Staff Page
    run keyword and continue on failure    User should be able to click active checkbox in Dealer Staff Page
    run keyword and continue on failure    User should ba able to click save in Dealer Staff Page
    run keyword and continue on failure    User should be able to click no in the confirmation in Dealer Staff Page

##TC-155 -  User should be able to view error messages in Dealer Staff Page
##    [Tags]    Home Page    Staff
##    run keyword and continue on failure    User should be able to click edit staff button in Dealer Staff Page
##    run keyword and continue on failure    User should be able to view error messages in Dealer Staff Page
##   run keyword and continue on failure    User should ba able to click cancel in Dealer Staff Page

TC-156 - User should be able to view settings page
    [Tags]    Home Page    Settings
    run keyword and continue on failure    User should be able to click Settings from left navigation
    run keyword and continue on failure    User should be able to view settings page

#TC-157 - User should be able to toggle on/off email notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to toggle on/off email notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to toggle on/off email notification in Dealer Settings Page
#
#TC-158 - User should be able to toggle on/off general message notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to toggle on/off general message notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to toggle on/off general message notification in Dealer Settings Page
#
#TC-159 - User should be able to toggle on/off order message notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to toggle on/off order message notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to toggle on/off order message notification in Dealer Settings Page
#
#TC-160 - User should be able to toggle on/off return message notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to toggle on/off return message notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to toggle on/off return message notification in Dealer Settings Page
#
#TC-161 - User should be able to toggle on/off product message notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to toggle on/off product message notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to toggle on/off product message notification in Dealer Settings Page
#
#TC-162 - User should be able to toggle on/off order creation notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to toggle on/off order creation notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to toggle on/off order creation notification in Dealer Settings Page
#
#TC-163 - User should be able to toggle on/off back order notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to toggle on/off back order notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to toggle on/off back order notification in Dealer Settings Page
#
#TC-164 - User should be able to toggle on/off part number masking in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to toggle on/off part number masking in Dealer Settings Page
#    run keyword and continue on failure    User should be able to toggle on/off part number masking in Dealer Settings Page
#
#TC-165 - User should be able to toggle on/off returns in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to toggle on/off returns in Dealer Settings Page
#    run keyword and continue on failure    User should be able to toggle on/off returns in Dealer Settings Page

##TC-166 - User should be able to toggle on/off dc orders in Dealer Settings Page
##    [Tags]    Home Page    Settings
##    run keyword and continue on failure    User should be able to toggle on/off dc orders in Dealer Settings Page
##    run keyword and continue on failure    User should be able to toggle on/off dc orders in Dealer Settings Page

#TC-167 - User should be able add email on email notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to click + icon on email notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to input valid email on email notification textbox in Dealer Settings Page
#    run keyword and continue on failure    User should be able to click save button on email notification in Dealer Settings Page
#
#TC-168 - User should be able to click edit button on email notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to click edit button on email notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to view error message on email notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to input valid email on email notification textbox in Dealer Settings Page
#    run keyword and continue on failure    User should be able to click save button on email notification in Dealer Settings Page
#
#TC-169 - User should be able to delete user email on email notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to delete user email on email notification in Dealer Settings Page
#    tc sleep
#
#TC-170 - User should be able add email on general message notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to click + icon on general message notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to input valid email on general message notification textbox in Dealer Settings Page
#    run keyword and continue on failure    User should be able to click save button on general message notification in Dealer Settings Page
#
#TC-171 - User should be able to click edit button on general message notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to click edit button on general message notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to view error message on general message notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to input valid email on general message notification textbox in Dealer Settings Page
#    run keyword and continue on failure    User should be able to click save button on general message notification in Dealer Settings Page
#
#TC-172 - User should be able to delete user email on general message notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to delete user email on general message notification in Dealer Settings Page
#
#TC-173 - User should be able add email on order message notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to click + icon on order message notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to input valid email on order message notification textbox in Dealer Settings Page
#    run keyword and continue on failure    User should be able to click save button on order message notification in Dealer Settings Page
#
#TC-174 - User should be able to click edit button on order message notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to click edit button on order message notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to view error message on order message notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to input valid email on order message notification textbox in Dealer Settings Page
#    run keyword and continue on failure    User should be able to click save button on order message notification in Dealer Settings Page
#
#TC-175 - User should be able to delete user email on order message notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to delete user email on order message notification in Dealer Settings Page
#
#TC-176 - User should be able add email on return message notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to click + icon on return message notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to input valid email on return message notification textbox in Dealer Settings Page
#    run keyword and continue on failure    User should be able to click save button on return message notification in Dealer Settings Page
#
#TC-177 - User should be able to click edit button on return message notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to click edit button on return message notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to view error message on return message notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to input valid email on return message notification textbox in Dealer Settings Page
#    run keyword and continue on failure    User should be able to click save button on return message notification in Dealer Settings Page
#
#TC-178 - User should be able to delete user email on return message notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to delete user email on return message notification in Dealer Settings Page
#
#TC-179 - User should be able add email on product message notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to click + icon on product message notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to input valid email on product message notification textbox in Dealer Settings Page
#    run keyword and continue on failure    User should be able to click save button on product message notification in Dealer Settings Page
#
#TC-180 - User should be able to click edit button on product message notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to click edit button on product message notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to view error message on product message notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to input valid email on product message notification textbox in Dealer Settings Page
#    run keyword and continue on failure    User should be able to click save button on product message notification in Dealer Settings Page
#
#TC-181 - User should be able to delete user email on product message notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to delete user email on product message notification in Dealer Settings Page
#
#TC-182 - User should be able add email on order creation notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to click + icon on order creation notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to input valid email on order creation notification textbox in Dealer Settings Page
#    run keyword and continue on failure    User should be able to click save button on order creation notification in Dealer Settings Page
#
#TC-183 - User should be able to click edit button on order creation notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to click edit button on order creation notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to view error message on order creation notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to input valid email on order creation notification textbox in Dealer Settings Page
#    run keyword and continue on failure    User should be able to click save button on order creation notification in Dealer Settings Page
#
#TC-184 - User should be able to delete user email on order creation notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to delete user email on order creation notification in Dealer Settings Page
#
#TC-185 - User should be able add email on back order notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to click + icon on back order notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to input valid email on back order notification textbox in Dealer Settings Page
#    run keyword and continue on failure    User should be able to click save button on back order notification in Dealer Settings Page
#
#TC-186 - User should be able to click edit button on back order notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to click edit button on back order notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to view error message on back order notification in Dealer Settings Page
#    run keyword and continue on failure    User should be able to input valid email on back order notification textbox in Dealer Settings Page
#    run keyword and continue on failure    User should be able to click save button on back order notification in Dealer Settings Page
#
#TC-187 - User should be able to delete user email on back order notification in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to delete user email on back order notification in Dealer Settings Page
#
#TC-188 - User should be able to edit values on Returns in Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to click decrement icon on Returns in Dealer Settings Page
#    run keyword and continue on failure    User should be able to click increment icon on Returns in Dealer Settings Page
#    run keyword and continue on failure    User should be able to edit return days value on Returns in Dealer Settings Page
#
#TC-189 - User should be able to click save button Dealer Settings Page
#    [Tags]    Home Page    Settings
#    run keyword and continue on failure    User should be able to click save button Dealer Settings Page
#    run keyword and continue on failure    User should be able to click yes save changes in Dealer Settings Page

TC-190 - User should be able to Logout
    [Tags]    Home Page    Settings
    run keyword and continue on failure    User should be able to Logout

#Test Teardown
#    Run Keywords    Close Browser
#    run keyword    Save Log DIR