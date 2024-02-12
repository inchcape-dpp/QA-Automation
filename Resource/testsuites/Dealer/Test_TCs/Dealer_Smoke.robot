*** Settings ***
Documentation    Suite description

Library    SeleniumLibrary
Library    Process
#Library    FakerLibrary

Resource  ../../../Resource/testdata/config.robot
Resource  ../../../Resource/testdata/Dealer/Dealer_Variable.robot
Resource  ../../../Resource/testdata/Dealer/Dealer_Resource.robot


*** Keywords ***
Setup Environment

${Environment}    ${d1Dealer}
${Username}    ${HK_D1_Automation_Bronze_UID}

*** Test Cases ***
Test Setup  Run Keywords   Open Chrome Browser
Screen Shot DIR  Run Keywords    Dealer Screent Shot DIR

TC-001 - Verify Login Page
    [Tags]    TC001    Login_Page
    Verify Login Page

TC-002 - Verify Login Page Elements
    [Tags]    TC002    Login Page
    Verify Login Page Elements

TC-003 - Input Invalid Email
    [Tags]    TC003    Invalid Account
    Input Invalid Username

TC-004 - Input Invalid Password
    [Tags]    TC004    Invalid Account
    Input Invalid Password

TC-005 - Login Invalid Email and Pass
    [Tags]    TC005    Invalid Account
    Login Invalid Email and Pass

TC-006 - Input Valid Email
    [Tags]    TC006    Valid Account
    Input Valid Username

TC-007 - Input Valid Password
    [Tags]    TC007    Valid Account
    Input Valid Password

TC-008 - User should be able to click Login Button
    [Tags]    TC008    Login Button
    User should be able to click Login Button

TC-009 - Admin User should be able to Login
    [Tags]    TC009    Valid Account
    Admin User should be able to Login

TC-010 - Verify Home Page Elements
    [Tags]    TC010    Home Page
    Verify Home Page Elements

TC-011 - User should be able to check/uncheck Remember me
    [Tags]    TC011    Remember Me
    User should be able to check/uncheck Remember me

TC-012 - User should be able to Click Forgot Password
    [Tags]    TC012    Forgot Password
    User should be able to Click Forgot Password

TC-013 - User should be able to view Reset Password Page
    [Tags]    TC013    Forgot Password
    User should be able to view Reset Password Page

TC-014 - User should be able to view top navigation
    [Tags]    TC014    Top Navigation
    User should be able to view top navigation

TC-015 - User should be able to click account from top navigation
    [Tags]    TC015    Top Navigation
    User should be able to click account from top navigation

TC-016 - User should be able to click orders from top navigation
    [Tags]    TC016    Top Navigation
    User should be able to click orders from top navigation

TC-017 - User should be able to click return from top navigation
    [Tags]    TC017    Top Navigation
    User should be able to click return from top navigation

TC-018 - User should be able to click new buyer from top navigation
    [Tags]    TC018    Top Navigation
    User should be able to click new buyer from top navigation

TC-019 - User should be able to click messages from top navigation
    [Tags]    TC019    Top Navigation
    User should be able to click messages from top navigation

TC-020 - User should be able to click orders from left navigation
    [Tags]    TC020    Left Navigation
    User should be able to click orders from left navigation

TC-021 - User should be able to click Return from left navigation
    [Tags]    TC021    Left Navigation
    User should be able to click Return from left navigation

TC-022 - User should be able to click and expand Customer Management
    [Tags]    TC022    Left Navigation
    User should be able to click and expand Customer Management

TC-023 - User should be able to click Customer Manegement - New Reg from left navigation
    [Tags]    TC023    Left Navigation
    User should be able to click Customer Manegement - New Reg from left navigation

TC-024 - User should be able to click Customer Manegement - Buyer Rel from left navigation
    [Tags]    TC024    Left Navigation
    User should be able to click Customer Manegement - Buyer Rel from left navigation

TC-025 - User should be able to click Messages from left navigation
    [Tags]    TC025    Left Navigation
    User should be able to click Messages from left navigation

TC-026 - User should be able to click and expand Profile
    [Tags]    TC026    Left Navigation
    User should be able to click and expand Profile

TC-027 - User should be able to click Profile - Account Details from left navigation
    [Tags]    TC027    Left Navigation
    User should be able to click Profile - Account Details from left navigation

TC-028 - User should be able to click Profile - Change Pass from left navigation
    [Tags]    TC028    Left Navigation
    User should be able to click Profile - Change Pass from left navigation

TC-029 - User should be able to click and expand Company
    [Tags]    TC029    Left Navigation
    User should be able to click and expand Company

TC-030 - User should be able to click Company - Company Details from left navigation
    [Tags]    TC030    Left Navigation
    User should be able to click Company - Company Details from left navigation

TC-031 - User should be able to click Company - Staff Pass from left navigation
    [Tags]    TC031    Left Navigation
    User should be able to click Company - Staff Pass from left navigation

TC-032 - User should be able to click Settings from left navigation
    [Tags]    TC032    Left Navigation
    User should be able to click Settings from left navigation

TC-033 - User should be able to view Cutomer Orders Panel
    [Tags]    TC033    Order Page
    User should be able to view Cutomer Orders Panel

TC-034 - User should be able to select one order from the list
    [Tags]    TC034    Order Page
    User should be able to select one order from the list

TC-035 - User should be able to view order details
    [Tags]    TC035    Order Page
    User should be able to view order details

TC-036 - User should be able to view Return Request Panel
    [Tags]    TC036    Return Page
    User should be able to view Return Request Panel

TC-037 - User should be able to select one return from the list
    [Tags]    TC037    Return Page
    User should be able to select one return from the list

TC-038 - User should be able to view Return details
    [Tags]    TC038    Return Page
    User should be able to view Return details

TC-039 - User should be able to view Buyer Rel Page
    [Tags]    TC039    Buyer Rel Page
    User should be able to view Buyer Rel Page

TC-040 - User should be able to view New Reg Req Panel
    [Tags]    TC040    New RegReq Page
    User should be able to view New Reg Req Panel

TC-041 - User should be able to select one account number from history
    [Tags]    TC041    New RegReq Page
    User should be able to select one account number from history

TC-042 - User should be able to view New Buyer Details Page
    [Tags]    TC042    New RegReq Page
    User should be able to view New Buyer Details Page

TC-043 - User should be able to view Buyer Rel Page
    [Tags]    TC043    New RegReq Page
    User should be able to view Buyer Rel Page

TC-044 - User should be able to view message page
    [Tags]    TC044    Message Page
    User should be able to view message page

TC-045 - User should be able to view account details page
    [Tags]    TC045    Profile Page
    User should be able to view account details page

TC-046 - User should be able to view change password page
    [Tags]    TC046    Profile Page
    User should be able to view change password page

TC-047 - User should be able to view company details page
    [Tags]    TC047    Company Details Page
    User should be able to view company details page

TC-048 - User should be able to view staff page
    [Tags]    TC048    Company Details Page
    User should be able to view staff page

TC-049 - User should be able to view settings page
    [Tags]    TC049    Settings Page
    User should be able to view settings page

TC-050 - User should be able to click filter by status in Order Page
    [Tags]    TC050    Order Page
    User should be able to click filter by status in Order Page

TC-051 - User should be able to filter status by ALL in Order Page
    [Tags]    TC051   Order Page
    User should be able to filter status by ALL in Order Page

TC-052 - User should be able to filter status by Received in Order Page
    [Tags]    TC052    Order Page
    User should be able to filter status by Received in Order Page

TC-053 - User should be able to filter status by Submitted in Order Page
    [Tags]    TC053    Order Page
    User should be able to filter status by Submitted in Order Page

TC-054 - User should be able to filter status by Dispatched in Order Page
    [Tags]    TC054    Order Page
    User should be able to filter status by Dispatched in Order Page

TC-055 - User should be able to filter status by Partially Dispathed in Order Page
    [Tags]    TC055    Order Page
    User should be able to filter status by Partially Dispathed in Order Page

TC-056 - User should be able to filter status by Order with Returns in Order Page
    [Tags]    TC056    Order Page
    User should be able to filter status by Order with Returns in Order Page

TC-057 - User should be able to click Date Filter in Order Page
    [Tags]    TC057    Order Page
    User should be able to click Date Filter in Order Page

TC-058 - User should be able to view Date Filter Elements in Order Page
    [Tags]    TC058    Order Page
    User should be able to view Date Filter Elements in Order Page

TC-059 - User should be able to click Previous Month Button in Order Page
    [Tags]    TC059    Order Page
    User should be able to click Previous Month Button in Order Page

TC-060 - User should be able to click Next Month Button in Order Page
    [Tags]    TC060    Order Page
    User should be able to click Next Month Button in Order Page

TC-061 - User should be able to click Month Drop Down Filter in Order Page
    [Tags]    TC061    Order Page
    User should be able to click Month Drop Down Filter in Order Page

TC-062 - User should be able to select month from drop down in Order Page
    [Tags]    TC062    Order Page
    User should be able to select month from drop down in Order Page

TC-063 - User should be able to click Year Drop Down Filter in Order Page
    [Tags]    TC063    Order Page
    User should be able to click Year Drop Down Filter in Order Page

TC-064 - User should be able to select year from drop down in Order Page
    [Tags]    TC064    Order Page
    User should be able to select year from drop down in Order Page

TC-065 - User should be able to select From Date in Order Page
    [Tags]    TC065    Order Page
    User should be able to select From Date in Order Page

TC-066 - User should be able to select To Date in Order Page
    [Tags]    TC066    Order Page
    User should be able to select To Date in Order Page

TC-067 - User should be able to click Date Filter Clear Button in Order Page
    [Tags]    TC067    Order Page
    User should be able to click Date Filter Clear Button in Order Page

TC-068 - User should be able to click Date Filter Submit Button in Order Page
    [Tags]    TC068    Order Page
    User should be able to click Date Filter Submit Button in Order Page

TC-069 - User should be able to click Search Box in Order Page
    [Tags]    TC069    Order Page
    User should be able to click Search Box in Order Page

TC-070 - User should be able to Input Text in Search Box in Order Page
    [Tags]    TC070    Order Page
    User should be able to Input Text in Search Box in Order Page

TC-071 - User should be able to click clear button from Search Box in Order Page
    [Tags]    TC071    Order Page
    User should be able to click clear button from Search Box in Order Page

TC-072 - User should be able to click Arrage Filter in Order Page
    [Tags]    TC072    Order Page
    User should be able to click Arrage Filter in Order Page

TC-073 - User should be able to Filter by New to Old in Order Page
    [Tags]    TC073    Order Page
    User should be able to Filter by New to Old in Order Page

TC-074 - User should be able to Filter by Old to New in Order Page
    [Tags]    TC074    Order Page
    User should be able to Filter by Old to New in Order Page

TC-075 - User should be able to Filter by Order Number in Order Page
    [Tags]    TC075    Order Page
    User should be able to Filter by Order Number in Order Page

TC-076 - User should be able to click filter by status in Retrun Page
    [Tags]    TC076    Return Page
    User should be able to click filter by status in Retrun Page

TC-077 - User should be able to filter status by ALL in Return Page
    [Tags]    TC077    Return Page
    User should be able to filter status by ALL in Return Page

TC-078 - User should be able to filter status by Accepted in Return Page
    [Tags]    TC077    Return Page
    User should be able to filter status by Accepted in Return Page

TC-079 - User should be able to filter status by Declined in Return Page
    [Tags]    TC079    Return Page
    User should be able to filter status by Declined in Return Page

TC-080 - User should be able to filter status by In Progress in Return Page
    [Tags]    TC080    Return Page
    User should be able to filter status by In Progress in Return Page

TC-081 - User should be able to click Date Filter in Return Page
    [Tags]    TC081    Return Page
    User should be able to click Date Filter in Return Page

TC-082 - User should be able to view Date Filter Elements in Return Page
    [Tags]    TC082    Return Page
    User should be able to view Date Filter Elements in Return Page

TC-083 - User should be able to click Previous Month Button in Return Page
    [Tags]    TC083    Return Page
    User should be able to click Previous Month Button in Return Page

TC-084 - User should be able to click Next Month Button in Return Page
    [Tags]    TC084    Return Page
    User should be able to click Next Month Button in Return Page

TC-085 - User should be able to click Month Drop Down Filter in Return Page
    [Tags]    TC085    Return Page
    User should be able to click Month Drop Down Filter in Return Page

TC-086 - User should be able to select month from drop down in Return Page
    [Tags]    TC086    Return Page
    User should be able to select month from drop down in Return Page

TC-087 - User should be able to click Year Drop Down Filter in Return Page
    [Tags]    TC087    Return Page
    User should be able to click Year Drop Down Filter in Return Page

TC-088 - User should be able to select year from drop down in Return Page
    [Tags]    TC088    Return Page
    User should be able to select year from drop down in Return Page

TC-089 - User should be able to select From Date in Return Page
    [Tags]    TC089    Return Page
    User should be able to select From Date in Return Page

TC-090 - User should be able to select To Date in Return Page
    [Tags]    TC090    Return Page
    User should be able to select To Date in Return Page

TC-091 - User should be able to click Date Filter Clear Button in Return Page
    [Tags]    TC091    Return Page
    User should be able to click Date Filter Clear Button in Return Page

TC-092 - User should be able to click Date Filter Submit Button in Return Page
    [Tags]    TC092    Return Page
    User should be able to click Date Filter Submit Button in Return Page

TC-093 - User should be able to click Search Box in Return Page
    [Tags]    TC093    Return Page
    User should be able to click Search Box in Return Page

TC-094 - User should be able to Input Text in Search Box in Return Page
    [Tags]    TC094    Return Page
    User should be able to Input Text in Search Box in Return Page

TC-095 - User should be able to click clear button from Search Box in Return Page
    [Tags]    TC095    Return Page
    User should be able to click clear button from Search Box in Return Page

TC-096 - User should be able to click Arrage Filter in Return Page
    [Tags]    TC096    Return Page
    User should be able to click Arrage Filter in Return Page

TC-097 - User should be able to Filter by New to Old in Return Page
    [Tags]    TC097    Return Page
    User should be able to Filter by New to Old in Return Page

TC-098 - User should be able to Filter by Old to New in Return Page
    [Tags]    TC098    Return Page
    User should be able to Filter by Old to New in Return Page

TC-099 - User should be able to click Filter by Status in Dealer New Registration Request
    [Tags]    TC099    New Reg Req Page
    User should be able to click Filter by Status in Dealer New Registration Request

TC-100 - User should be able to filter status by All in Dealer New Registration Request
    [Tags]    TC100    New Reg Req Page
    User should be able to filter status by All in Dealer New Registration Request

TC-101 - User should be able to filter status by In Progress in Dealer New Registration Request
    [Tags]    TC101    New Reg Req Page
    User should be able to filter status by In Progress in Dealer New Registration Request

TC-102 - User should be able to filter status by Approved in Dealer New Registration Request
    [Tags]    TC102    New Reg Req Page
    User should be able to filter status by Approved in Dealer New Registration Request

TC-103 - User should be able to filter status by Rejected in Dealer New Registration Request
    [Tags]    TC103    New Reg Req Page
    User should be able to filter status by Rejected in Dealer New Registration Request









































#Browser Back Button
#    [Tags]    Back    Browser Command
#    Browse Back Button

Test Teardown  Run Keywords  Close Browser