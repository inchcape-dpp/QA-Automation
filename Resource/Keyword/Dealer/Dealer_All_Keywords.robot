*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary

Resource  ../../../Resource/testdata/config.robot
Resource  ../../../Resource/testdata/Dealer/Dealer_Variable.robot
Resource  ../../../Resource/testdata/credentials.robot
Resource  ../../../Resource/testdata/Dealer/Dealer_Resource.robot


*** Keywords ***
#-----------------------------------------------------Dealer Login Page-------------------------------------------------
Verify Login Page
Verify Login Page Elements
Input Invalid Username
Input Invalid Password
Login Invalid Email and Pass
Input Valid Username
Input Valid Password
User should be able to click Login Button
Admin User should be able to Login
User should be able to check/uncheck Remember me
User should be able to Click Forgot Password

#-----------------------------------------------------Dealer Login Page Reset Password
User should be able to view Reset Password Page
User should be able input valid email in Dealer Reset Password Page
User should be able to view email error messsage in Dealer Reset Password Page
User should be able to click submit button in Dealer Reset Password Page
User should be able to click create account in Dealer Reset Password Page

#-----------------------------------------------------Dealer Home Page-------------------------------------------------
Verify Home Page Elements
User should be able to view top navigation
User should be able to click account from top navigation
User should be able to click orders from top navigation
User should be able to click return from top navigation
User should be able to click new buyer from top navigation
User should be able to click messages from top navigation

#-----------------------------------------------------Dealer Home Page Left Navigation
User should be able to click orders from left navigation
User should be able to click Return from left navigation
User should be able to click and expand Customer Management
User should be able to click Customer Manegement - New Reg from left navigation
User should be able to click Customer Manegement - Buyer Rel from left navigation
User should be able to click Messages from left navigation
User should be able to click and expand Profile
User should be able to click Profile - Account Details from left navigation
User should be able to click Profile - Change Pass from left navigation
User should be able to click and expand Company
User should be able to click Company - Company Details from left navigation
User should be able to click Company - Staff Pass from left navigation
User should be able to click Settings from left navigation

TC Move to Top

#-----------------------------------------------------Dealer Order Page-------------------------------------------------
User should be able to view Cutomer Orders Panel
User should be able to select one order from the list
User should be able to view order details

#-----------------------------------------------------Dealer Order Page Filter By Status
User should be able to click filter by status in Order Page
User should be able to filter status by ALL in Order Page
User should be able to filter status by Received in Order Page
User should be able to filter status by Submitted in Order Page
User should be able to filter status by Dispatched in Order Page
User should be able to filter status by Partially Dispathed in Order Page
User should be able to filter status by Order with Returns in Order Page

#-----------------------------------------------------Dealer Order Page Filter By Date
User should be able to click Date Filter in Order Page
User should be able to view Date Filter Elements in Order Page
User should be able to click Previous Month Button in Order Page
User should be able to click Next Month Button in Order Page
User should be able to click Month Drop Down Filter in Order Page
User should be able to select month from drop down in Order Page
User should be able to click Year Drop Down Filter in Order Page
User should be able to select year from drop down in Order Page
User should be able to select From Date in Order Page
User should be able to select To Date in Order Page
User should be able to click Date Filter Clear Button in Order Page
User should be able to click Date Filter Submit Button in Order Page

#-----------------------------------------------------Dealer Order Page Filter By Search
User should be able to click Search Box in Order Page
User should be able to Input Text in Search Box in Order Page
User should be able to click clear button from Search Box in Order Page

#-----------------------------------------------------Dealer Order Page Filter By Sort
User should be able to click Arrage Filter in Order Page
User should be able to Filter by New to Old in Order Page
User should be able to Filter by Old to New in Order Page
User should be able to Filter by Order Number in Order Page

User should be able to view order with Recieved Status in Dealer Orders Page
User should be able to click order with Recieved Status in Dealer Orders Page
User should be able to view order with Submitted Status in Dealer Orders Page
User should be able to click order with Submitted Status in Dealer Orders Page
User should be able to view order with Dispatched Status in Dealer Orders Page
User should be able to click order with Dispatched Status in Dealer Orders Page
User should be able to view order with Partially Dispatched Status in Dealer Orders Page
User should be able to click order with Partially Dispatched Status in Dealer Orders Page
User should be able to view order with Orders with Returns Status in Dealer Orders Page
User should be able to click order with Orders with Returns Status in Dealer Orders Page

User should be able to click Back to Customer Orders in Dealer Order Details Page

User should be able to click next page in Dealer Orders Page
User should be able to click first page in Dealer Orders Page
User should be able to click page 1 in Delaer Orders Page
User should be able to return to first page in Dealer Orders Page

#-----------------------------------------------------Dealer Retrun Page------------------------------------------------
User should be able to view Return Request Panel
User should be able to select one return from the list
User should be able to view Return details

#-----------------------------------------------------Dealer Retrun Page Filter By Status
User should be able to click filter by status in Retrun Page
User should be able to filter status by ALL in Return Page
User should be able to filter status by Accepted in Return Page
User should be able to filter status by Declined in Return Page
User should be able to filter status by In Progress in Return Page

#-----------------------------------------------------Dealer Retrun Page Filter By Date
User should be able to click Date Filter in Return Page
User should be able to view Date Filter Elements in Return Page
User should be able to click Previous Month Button in Return Page
User should be able to click Next Month Button in Return Page
User should be able to click Month Drop Down Filter in Return Page
User should be able to select month from drop down in Return Page
User should be able to click Year Drop Down Filter in Return Page
User should be able to select year from drop down in Return Page
User should be able to select From Date in Return Page
User should be able to select To Date in Return Page
User should be able to click Date Filter Clear Button in Return Page
User should be able to click Date Filter Submit Button in Return Page

#-----------------------------------------------------Dealer Retrun Page Filter By Search
User should be able to click Search Box in Return Page
User should be able to Input Text in Search Box in Return Page
User should be able to click clear button from Search Box in Return Page

#-----------------------------------------------------Dealer Retrun Page Filter By Sort
User should be able to click Arrage Filter in Return Page
User should be able to Filter by New to Old in Return Page
User should be able to Filter by Old to New in Return Page

#CHANGE ORDER - RETURN
User should be able to view order with Accepted Status in Dealer Return Page
User should be able to click order with Accepted Status in Dealer Return Page
User should be able to view order with Declined Status in Dealer Return Page
User should be able to click order with Declined Status in Dealer Return Page
User should be able to view order with In Progress Status in Dealer Return Page
User should be able to click order with In Progress Status in Dealer Return Page

User should be able to click Back to Return Request in Dealer Return Details Page

User should be able to click next page in Dealer Return Page
User should be able to click first page in Dealer Return Page
User should be able to click page 1 in Delaer Return Page
User should be able to return to first page in Return Orders Page

User should be able to click accept button in Dealer Return Details Page
User should be able to click decline button in Dealer Return Details Page
User should be able to add text on Note for Customer in Dealer Return Details Page
User should be able to click confirm status button in Dealer Return Details Page
User should be able to click cancel confirm status in Dealer Return Details Page
User should be able to click confirm confirm status in Dealer Return Details Page
User should be able to click message supplier button in Dealer Return Details Page
User should be able to view message supplier pop up in Dealer Return Details Page
User should be able to input text on message pop up text field in Dealer Return Details Page
User should be able to upload photo on message pop in Dealer Return Details Page
User should be able to click cancel on message pop in Dealer Return Details Page
User should be able to click send on message pop in Dealer Return Details Page
User should be able to click Back to Retrun Request on message pop thank you in Dealer Return Details Page


#-----------------------------------------------------Dealer New Reg Req Page-------------------------------------------
User should be able to view New Reg Req Panel
User should be able to select one account number from history
User should be able to view New Buyer Details Page

#-----------------------------------------------------Dealer New Reg Req Page Filter By Status
User should be able to click Filter by Status in Dealer New Registration Request
User should be able to filter status by All in Dealer New Registration Request
User should be able to filter status by In Progress in Dealer New Registration Request
User should be able to filter status by Approved in Dealer New Registration Request
User should be able to filter status by Rejected in Dealer New Registration Request

User should be able to click Back to Registraion Request in Dealer Registration Request Details Page

User should be able to view Registration Request with In Progress Status in Dealer New Registration Request Page
User should be able to click Registration Request with In Progress Status in Dealer New Registration Request Page
User should be able to view Registration Request with Approved Status in Dealer New Registration Request Page
User should be able to click Registration Request with Approved Status in Dealer New Registration Request Page
User should be able to view Registration Request with Rejected Status in Dealer New Registration Request Page
User should be able to click Registration Request with Rejected Status in Dealer New Registration Request Page

User should be able to click next page in Dealer New Registration Request Page
User should be able to click first page in Dealer New Registration Request Page
User should be able to click page 1 in Delaer New Registration Request Page
User should be able to return to first page in New Registration Request Orders Page
User should be able to click reject button on New Buyers Details in Delaer New Registration Request Page
User should be able to click approve button on New Buyers Details in Delaer New Registration Request Page

#-----------------------------------------------------Dealer Buyer Rel Page---------------------------------------------
User should be able to view Buyer Rel Page
User should be able to Check/Uncheck Status
User should be able to Click No Check/Uncheck Status
User should be able to Click Yes Check/Uncheck Status

#-----------------------------------------------------Dealer Message Page-------------------------------------------
User should be able to view message page
User should be able to click read message
User should be able to click view message content

#-----------------------------------------------------Dealer Message Page Filter by Enquiry
User should be able to click filter messages in Dealer Messages Page
User should be able to select All filter in Dealer Messages Page
User should be able to select Product Enquiry filter in Dealer Messages Page
User should be able to select Order Enquiry filter in Dealer Messages Page
User should be able to select Return Enquiry filter in Dealer Messages Page
User should be able to select General Enquiry filter in Dealer Messages Page

#-----------------------------------------------------Dealer Message Page Filter by Date
User should be able to click Date Filter in Dealer Messages Page
User should be able to view Date Filter Elements in Dealer Messages Page
User should be able to click Previous Month Button in Dealer Messages Page
User should be able to click Next Month Button in Dealer Messages Page
User should be able to click Month Drop Down Filter in Dealer Messages Page
User should be able to select month from drop down in Dealer Messages Page
User should be able to click Year Drop Down Filter in Dealer Messages Page
User should be able to select year from drop down in Dealer Messages Page
User should be able to select From Date in Dealer Messages Page
User should be able to select To Date in Dealer Messages Page
User should be able to click Date Filter Clear Button in Dealer Messages Page
User should be able to click Date Filter Submit Button in Dealer Messages Page

#-----------------------------------------------------Dealer Message Page Filter by Search
User should be able to click Search Box in Dealer Messages Page
User should be able to Input Text in Search Box in Dealer Messages Page
User should be able to click clear button from Search Box in Dealer Messages Page

#-----------------------------------------------------Dealer Message Page Read Messages
User should be able to view read General Enquiry in Dealer Message Page
User should be able to click read General Enquiry in Dealer Message Page
User should be able to view read Order Enquiry in Dealer Message Page
User should be able to click read Order Enquiry in Dealer Message Page
User should be able to view read Return Enquiry in Dealer Message Page
User should be able to click read Return Enquiry in Dealer Message Page
User should be able to view read Product Enquiry in Dealer Message Page
User should be able to click read Product Enquiry in Dealer Message Page

#-----------------------------------------------------Dealer Message Page Unread Messages
User should be able to view unread General Enquiry in Dealer Message Page
User should be able to click unread General Enquiry in Dealer Message Page
User should be able to view unread Order Enquiry in Dealer Message Page
User should be able to click unread Order Enquiry in Dealer Message Page
User should be able to view unread Return Enquiry in Dealer Message Page
User should be able to click unread Return Enquiry in Dealer Message Page
User should be able to view unread Product Enquiry in Dealer Message Page
User should be able to click unread Product Enquiry in Dealer Message Page

User should be able to click Back to All Message in Dealer Messages Details Page

#-----------------------------------------------------Dealer Message Page Pagination
User should be able to click next page in Dealer Messages Page
User should be able to click first page in Dealer Messages Page
User should be able to click page 1 in Delaer Messages Page
User should be able to return to first page in Messages Page

User should be able to Input Text on Message in Dealer Messages Details Page
User should be able to upload image in Dealer Messages Details Page
User should be able to click cancel in Dealer Messages Details Page
User should be able to click send in Dealer Messages Details Page

#-----------------------------------------------------Dealer Account Details Page---------------------------------------
User should be able to view account details page
User should be able to edit First name in Dealer Account Details Page
User should be able to edit Last name in Dealer Account Details Page
User should be able to edit Phone Number in Dealer Account Details Page
User should be able to edit Landline Number in Dealer Account Details Page
User should be able to click Cancel in Dealer Account Details Page
User should be able to click Update in Dealer Account Details Page
User should be able to view update confirmation modal in Dealer Account Details Page
User should be able to click Yes on update confirmation modal in Dealer Account Details Page
User should be able to click No on update confirmation modal in Dealer Account Details Page
User should be able to view invalid phone number error in Dealer Account Details Page
User should be able to view invalid landline number error in Dealer Account Details Page

#-----------------------------------------------------Dealer Change Pass Page---------------------------------------
User should be able to view change password page
User should be ablle to edit current password in Dealer Change Pass Page
User should be ablle to edit new password in Dealer Change Pass Page
User should be ablle to edit confirm password in Dealer Change Pass Page
User should be able to view new pass by clicking eye button in Dealer Change Pass Page
User should be able to view confirm pass by clicking eye button in Dealer Change Pass Page
User should be able to hide new pass by clicking eye button in Dealer Change Pass Page
User should be able to hide confirm pass by clicking eye button in Dealer Change Pass Page
User should be able to click Cancel button in Dealer Change Pass Page
User should be able to click Update button in Dealer Change Pass Page
User should be able to view update confirmation modal in Dealer Change Pass Page
User should be able to click Yes on update confirmation modal in Dealer Change Pass Page
User should be able to click No on update confirmation modal in Dealer Change Pass Page
User should be able to view current pass required error in Dealer Change Pass Page
User should be able to view new pass required error in Dealer Change Pass Page
User should be able to view confirm pass required error in Dealer Change Pass Page
User should be able to view new pass not match error in Dealer Change Pass Page
User should be able to view confirm pass not match error in Dealer Change Pass Page

#-----------------------------------------------------Dealer Company Details Page---------------------------------------
User should be able to view company details page
User should be able to input valid Company name in Dealer Company Details Page
User should be able to input valid Trading Name in Dealer Company Details Page
User should be able to input valid Postal Address Line 1 in Dealer Company Details Page
User should be able to input valid Postal Address Line 2 in Dealer Company Details Page
User should be able to input valid Postal Suburb in Dealer Company Details Page
User should be able to input valid Postal Code in Dealer Company Details Page
User should be able to input valid Delivery Address Line 1 in Dealer Company Details Page
User should be able to input valid Delivery Address Line 2 in Dealer Company Details Page
User should be able to input valid Delivery Suburb in Dealer Company Details Page
User should be able to input valid Delivery Code in Dealer Company Details Page
User should be able to input valid Company Phone Number in Dealer Company Details Page
User should be able to input valid First Name in Dealer Company Details Page
User should be able to input valid Last Name in Dealer Company Details Page
User should be able to click Postal Address State Drop Down in Dealer Company Details Page
User should be able to click Delivery Address State Drop Down in Dealer Company Details Page
User should be able to select Postal Address State in Dealer Company Details Page
User should be able to select Delivery Address State in Dealer Company Details Page
User should be able to check/uncheck Del Add Same As Postal Add Checkbox in Dealer Company Details Page
User should be able to click opening hours in Dealer Company Details Page
User should be able to click closing hours in Dealer Company Details Page
User should be able to select opening hours value in Dealer Company Details Page
User should be able to select closing hours value in Dealer Company Details Page
User should be able to click cancel button in Dealer Company Details Page
User should be able to click save button in Dealer Company Details Page
User should be able to click no on update cofirmation modal in Dealer Company Details Page
User should be able to click yes on update cofirmation modal in Dealer Company Details Page
User should be able to view error messages in Dealer Company Details Page

#-----------------------------------------------------Dealer Staff Page-------------------------------------------------
User should be able to view staff page
User should be able to click add new staff in Dealer Staff Page
User should be able to add new staff details in Dealer Staff Page
User should be able to click active checkbox at add new staff in Dealer Staff Page
User should be able to click cancel add new staff in Dealer Staff Page
User should be able to click save add new staff in Dealer Staff Page
User should be able to click edit staff button in Dealer Staff Page
User should be able to edit First Name in Dealer Staff Page
User should be able to edit Last Name in Dealer Staff Page
User should be able to edit Phone Number in Dealer Staff Page
User should be able to click active checkbox in Dealer Staff Page
User should be able to view error messages in Dealer Staff Page
User should ba able to click cancel in Dealer Staff Page
User should ba able to click save in Dealer Staff Page
User should be able to click no in the confirmation in Dealer Staff Page
User should be able to click yes in the confirmation in Dealer Staff Page

#-----------------------------------------------------Dealer Settings Page----------------------------------------------
User should be able to view settings page

#-----------------------------------------------------Dealer Settings Page Toggle On/Off
User should be able to toggle on/off email notification in Dealer Settings Page
User should be able to toggle on/off general message notification in Dealer Settings Page
User should be able to toggle on/off order message notification in Dealer Settings Page
User should be able to toggle on/off return message notification in Dealer Settings Page
User should be able to toggle on/off product message notification in Dealer Settings Page
User should be able to toggle on/off order creation notification in Dealer Settings Page
User should be able to toggle on/off back order notification in Dealer Settings Page
User should be able to toggle on/off part number masking in Dealer Settings Page
User should be able to toggle on/off returns in Dealer Settings Page
User should be able to toggle on/off dc orders in Dealer Settings Page

#-----------------------------------------------------Dealer Settings Page Add Email
User should be able to click + icon on email notification in Dealer Settings Page
User should be able to click + icon on general message notification in Dealer Settings Page
User should be able to click + icon on order message notification in Dealer Settings Page
User should be able to click + icon on return message notification in Dealer Settings Page
User should be able to click + icon on product message notification in Dealer Settings Page
User should be able to click + icon on order creation notification in Dealer Settings Page
User should be able to click + icon on back order notification in Dealer Settings Page

#-----------------------------------------------------Dealer Settings Page Delete Email
User should be able to delete user email on email notification in Dealer Settings Page
User should be able to delete user email on general message notification in Dealer Settings Page
User should be able to delete user email on order message notification in Dealer Settings Page
User should be able to delete user email on return message notification in Dealer Settings Page
ser should be able to delete user email on product message notification in Dealer Settings Page
User should be able to delete user email on order creation notification in Dealer Settings Page
User should be able to delete user email on back order notification in Dealer Settings Page

#-----------------------------------------------------Dealer Settings Page Edit Email
User should be able to click edit button on email notification in Dealer Settings Page
User should be able to click edit button on general message notification in Dealer Settings Page
User should be able to click edit button on order message notification in Dealer Settings Page
User should be able to click edit button on return message notification in Dealer Settings Page
User should be able to click edit button on product message notification in Dealer Settings Page
User should be able to click edit button on order creation notification in Dealer Settings Page
User should be able to click edit button on back order notification in Dealer Settings Page

#-----------------------------------------------------Dealer Settings Page Edit Valid Email
User should be able to input valid email on email notification textbox in Dealer Settings Page
User should be able to input valid email on general message notification textbox in Dealer Settings Page
User should be able to input valid email on order message notification textbox in Dealer Settings Page
User should be able to input valid email on return message notification textbox in Dealer Settings Page
User should be able to input valid email on product message notification textbox in Dealer Settings Page
User should be able to input valid email on order creation notification textbox in Dealer Settings Page
User should be able to input valid email on back order notification textbox in Dealer Settings Page

#-----------------------------------------------------Dealer Settings Page Error Message
User should be able to view error message on email notification in Dealer Settings Page
User should be able to view error message on general message notification in Dealer Settings Page
User should be able to view error message on order message notification in Dealer Settings Page
User should be able to view error message on return message notification in Dealer Settings Page
User should be able to view error message on product message notification in Dealer Settings Page
User should be able to view error message on order creation notification in Dealer Settings Page
User should be able to view error message on back order notification in Dealer Settings Page

#-----------------------------------------------------Dealer Settings Page Save Email
User should be able to click save button on email notification in Dealer Settings Page
User should be able to click save button on general message notification in Dealer Settings Page
User should be able to click save button on order message notification in Dealer Settings Page
User should be able to click save button on return message notification in Dealer Settings Page
User should be able to click save button on product message notification in Dealer Settings Page
User should be able to click save button on order creation notification in Dealer Settings Page
User should be able to click save button on back order notification in Dealer Settings Page

#-----------------------------------------------------Dealer Settings Page Cancel Email
User should be able to click cancel button on email notification in Dealer Settings Page
User should be able to click cancel button on general message notification in Dealer Settings Page
User should be able to click cancel button on order message notification in Dealer Settings Page
User should be able to click cancel button on return message notification in Dealer Settings Page
User should be able to click cancel button on product message notification in Dealer Settings Page
User should be able to click cancel button on order creation notification in Dealer Settings Page
User should be able to click cancel button on back order notification in Dealer Settings Page


User should be able to click decrement icon on Returns in Dealer Settings Page
User should be able to click increment icon on Returns in Dealer Settings Page
User should be able to edit return days value on Returns in Dealer Settings Page

User should be able to click save button Dealer Settings Page
User should be able to click yes save changes in Dealer Settings Page
User should be able to click no save changes in Dealer Settings Page