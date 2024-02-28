*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary

Resource  ../../../Resource/testdata/config.robot
Resource  ../../../Resource/testdata/Retail/Retail_Variable.robot
Resource  ../../../Resource/testdata/credentials.robot
Resource  ../../../Resource/testdata/Retail/Retail_Resource.robot


*** Keywords ***
#-----------------------------------------------------Retail Login Page-------------------------------------------------
Verify Login Page
Verify Login Page Elements
Input Invalid Username
Input Invalid Password
User should not be able to login using invalid account
Input Valid Username
Input Valid Password
User should be able to click Login Button
User should be able to check/uncheck Remember me in Retail Login Page
User should be able to click Forgot Password in Retail Login Page
User should be able to click Create Account in Retail Login Page
User should be able to view Forgot Password Page in Retail Forgot Password Page
User should be able to Input Valid Email Address in Retail Forgot Password Page
User should be albe to view Error Message in Retail Forgot Password Page
User should be able to click Create Account in Retail Forgot Password Page
User should be albe to click Submit Button in Retail Forgot Password Page

#-----------------------------------------------------Retail Registration Page------------------------------------------
User should be albe to view Registration Page
User should be able to view Registration Form Page
User should be able to click select supplier dropdown
User should be able to click select supplier to contact dropdown
User should be able to select option from select supplier dropdown
User should be able to select option from select supplier to contact dropdown
User should be able to click Next Button
User should be able to click Preferred Supplier
User should be able to select Preferred Supplier
User should be able to input Account Number
User should be able to input Company Name
User should be able to input Trading Name
User should be able to input Postal Address Line 1
User should be able to input Postal Address Line 2
User should be able to input Postal Suburb
User should be able to input Postal Code
User should be able to click Postal State
User should be able to select Postal State
User should be able to input Delivery Address Line 1
User should be able to input Delivery Address Line 2
User should be able to input Delivery Suburb
User should be able to input Delivery Code
User should be able to click Delivery State
User should be able to select Delivery State
User should be able to click ACN Button
User should be able to click ABN Button
User should be albe to input ABN/ACN
User should be able to click Opening Hours
User should be able to select Opening Hours
User should be able to click Closing Hours
User should be able to select Closing Hours
User should be able to input Contact First Name
User should be able to input Contact Last Name
User should be able to input Email Address
User should be able to input Company Phone Number
User should be able to input Landline Number
User should be able to click TNC
User should be able to click PN
User should be able to click Submit Button
User should be able to view Error Messages
User should be able to click Back to Login Button

#-----------------------------------------------------HK
User should be able to view HK Registration Form
User should be able to click Preferred Supplier Dropdown for HK Registration Form
User should be able to select 1 Preferred Supplier from Dropdown for HK Registration Form
User should be able to click Postal Address Dropdown for HK Registration Form
User should be able to input text in Postal Address for HK Registration Form
User should be able to select Random Postal Address from suggestions for HK Registration Form
User should be able to click Area Dropdown in Postal Address for HK Registration Form
User should be able to select Random Postal Address Area for HK Registration Form
User should be able to click District Dropdown in Postal Address for HK Registration Form
User should be able to select Random Postal Address District for HK Registration Form
User should be able to click Delivery Address Dropdown for HK Registration Form
User should be able to input text in Deliver Address for HK Registration Form
User should be able to select Random Delivery Address from suggestions for HK Registration Form
User should be able to click Area Dropdown in Delivery Address for HK Registration Form
User should be able to select Random Delivery Address Area for HK Registration Form
User should be able to click District Dropdown in Delivery Address for HK Registration Form
User should be able to select Random Delivery Address District for HK Registration Form
User should be able to input Company Phone Number for HK Registration Form
User should be able to input Landline Number for HK Registration Form

#-----------------------------------------------------Retail Home Page-------------------------------------------------
Admin User should be able to Login
User should be able to view home page

User should be able to view double header in Retail Home page
User should be able to access Account page using double header in Retail Home page
User should be able to access Order page using double header in Retail Homepage
User should be able to access Retrun page using double header in Retail Homepage
User should be able to access Save carts page using double header in Retail Homepage
User should be able to access Vehicle Listing page using double header in Retail Homepage
User should be able to access Inbox page using double header in Retail Homepage
User should be able to access Account Details page using double header in Retail Homepage
User should be able to access Change Pass page using double header in Retail Homepage
User should be able to access Company Details page using double header in Retail Homepage
User should be able to access Relationship page using double header in Retail Homepage


User should be able to view All products
User should be able to view shopping cart pop up modal
User should be able to close shopping cart pop up modal
User should be able to delete item from shopping cart pop up modal
User should be albe to delete all items from shopping cart pop up modal
Delete Item From Pop Up
User should be able to click view cart button from shopping cart pop up modal
User should be able to view message page from top navigaton
User should be able to access account from top navigaton
User should be able to Go to Home page
User should be able to view filters & oil menus in Retail Home Page
User should be able to view belts & timing parts menus in Retail Home Page
User should be able to view cooling menus in Retail Home Page
User should be able to view brakes menus in Retail Home Page
User should be able to view suspension menus in Retail Home Page
User should be able to view electrical menus in Retail Home Page
User should be able to view service parts menus in Retail Home Page
User should be able to view engine parts menus in Retail Home Page

User should be able to view body parts menus in HK Retail Home Page
User should be able to view Chemicals menus in HK Retail Home Page
User should be able to view Maintenance Item menus in HK Retail Home Page
User should be able to view Repair Parts menus in HK Retail Home Page
User should be able to view Toyota Hybrid menus in HK Retail Home Page


User should be able to select 1 filter from selected category in Retail Home Page
User should be able to click 1 sub filter from selected category in Retail Home Page
User should be able to click vehicle listing quick link in Retail Home Page
User should be able to click orders quick link in Retail Home Page
User should be able to click saved carts quick link in Retail Home Page
User should be able to click account details quick link in Retail Home Page
User should be able to click shop by category accessories & audio in Retail Home Page
User should be able to click shop by category aircon & heating in Retail Home Page
User should be able to click shop by category belts & timing parts in Retail Home Page
User should be able to click shop by category body parts in Retail Home Page
User should be able to click shop by category brakes in Retail Home Page
User should be able to click shop by category clutch & transmissions in Retail Home Page
User should be able to click shop by category cooling in Retail Home Page
User should be able to click shop by category electrical in Retail Home Page
User should be able to click shop by category engine parts in Retail Home Page
User should be able to click shop by category exhaust & emission in Retail Home Page
User should be able to click shop by category filters & oil in Retail Home Page
User should be able to click shop by category fuel system in Retail Home Page
User should be able to click shop by category gasket in Retail Home Page
User should be able to click shop by category ignition, start & charge in Retail Home Page
User should be able to click shop by category service parts in Retail Home Page
User should be able to click shop by category shafts axles & wheels in Retail Home Page
User should be able to click shop by category steering in Retail Home Page
User should be able to click shop by category suspension in Retail Home Page
User should be able to click shop by category all in Retail Home Page
User should be able to click show all categories in Retail Home Page

#-----------------------------------------------------Retail Home Page HK
User should be able to click shop by category parts & service in HK Retail Home Page
User should be able to click shop by category paint & panel in HK Retail Home Page
User should be able to click shop by category batteries & electrical in HK Retail Home Page
User should be able to click shop by category car care & accessories in HK Retail Home Page
User should be able to click shop by category performance in HK Retail Home Page
User should be able to click shop by category oils & fluids in HK Retail Home Page
User should be able to click shop by category in car tech in HK Retail Home Page
User should be able to click shop by category other in HK Retail Home Page

User should be able to click shop by category Body Parts in HK Retail Home Page
User should be able to click shop by category Chemicals in HK Retail Home Page
User should be able to click shop by category Maintenance in HK Retail Home Page
User should be able to click shop by category Repair Parts in HK Retail Home Page
User should be able to click shop by category Toyota Hybrid in HK Retail Home Page

User should be able to select 1 filter from selected category in HK Retail Home Page

User should be albe to View Search Vehicle in HK Retail Home Page
User should be albe to View Search VIN in HK Retail Home Page
User should be albe to Input Search VIN1 in HK Retail Home Page
User should be albe to Input Search VIN2 in HK Retail Home Page
User should be albe to Input Search VIN3 in HK Retail Home Page
User should be albe to Input Search VIN4 in HK Retail Home Page
User should be albe to Input Search VIN5 in HK Retail Home Page
User should be albe to Click Search VIN in HK Retail Home Page
User should be able to click shop this vehicle in Pop up Vehicle Search in HK Retail Home Page
User should be able to click save this vehicle in Pop up Vehicle Search in HK Retail Home Page
User should be able to click search again in Pop up Vehicle Search in HK Retail Home Page

User should be able to view EPC Search Result Pop Up Modal in HK Retail Home Page
User should be able to view EPC Search Result Pop Up Modal Elements in HK Retail Home Page
User should be able to click Show More button in EPC Search Result Pop Up Modal in HK Retail Home Page
User should be able to click Save and Shop in EPC Search Result Pop Up Modal in HK Retail Home Page
User should be able to click Shop this vehicle in EPC Search Result Pop Up Modal in HK Retail Home Page
User should be able to click Search Again in EPC Search Result Pop Up Modal in HK Retail Home Page

#-----------------------------------------------------Retail Search Bar-------------------------------------------------
User should be able to input text on search bar
User should be able to click searched text

#-----------------------------------------------------Retail Account Order Page-----------------------------------------
User should be able to view account orders page
User should be able to select one order from the list
User should be able to view order details
User should be able to click filter status in Account Order Page
User should be able to filter status by ALL in Account Order Page
User should be able to filter status by Received in Account Order Page
User should be able to filter status by Submitted in Account Order Page
User should be able to filter status by Dispatched in Account Order Page
User should be able to filter status by Partially Dispathed in Account Order Page
User should be able to filter status by Order with Returns in Account Order Page
User should be able to click Date Filter in Account Order Page
User should be able to view Date Filter Elements in Account Order Page
User should be able to click Previous Month Button in Account Order Page
User should be able to click Next Month Button in Account Order Page
User should be able to click Month Drop Down Filter in Account Order Page
User should be able to select month from drop down in Account Order Page
User should be able to click Year Drop Down Filter in Account Order Page
User should be able to select year from drop down in Account Order Page
User should be able to select From Date in Account Order Page
User should be able to select To Date in Account Order Page
User should be able to click Date Filter Clear Button in Account Order Page
User should be able to click Date Filter Submit Button in Account Order Page
User should be able to click Search Box in Account Order Page
User should be able to Input Text in Search Box in Account Order Page
User should be able to click clear button from Search Box in Account Order Page
User should be able to click Arrage Filter in Account Order Page
User should be able to Filter by New to Old in Account Order Page
User should be able to Filter by Old to New in Account Order Page
User should be able to Filter by Order Number in Account Order Page
User should be able to view order with Recieved Status in Retail Account Orders Page
User should be able to click order with Recieved Status in Retail Account Orders Page
User should be able to view order with Submitted Status in Retail Account Orders Page
User should be able to click order with Submitted Status in Retail Account Orders Page
User should be able to view order with Dispatched Status in Retail Account Orders Page
User should be able to click order with Dispatched Status in Retail Account Orders Page
User should be able to view order with Partially Dispatched Status in Retail Account Orders Page
User should be able to click order with Partially Dispatched Status in Retail Account Orders Page
User should be able to view order with Orders with Returns Status in Retail Account Orders Page
User should be able to click order with Orders with Returns Status in Retail Account Orders Page
User should be able to click Back to Customer Orders in Retail Account Order Details Page
User should be able to click next page in Retail Account Orders Page
User should be able to click first page in Retail Account Orders Page
User should be able to click page 1 in Retail Account Orders Page
User should be able to return to first page in Retail Account Orders Page
User should be able to click message supplier button in Retail Account Order Details Page
User should be able to view message supplier pop up in Retail Account Order Details Page
User should be able to input text on message pop up text field in Retail Account Order Details Page
User should be able to upload photo on message pop in Retail Account Order Details Page
User should be able to click cancel on message pop in Retail Account Order Details Page
User should be able to send on message pop in Retail Account Order Details Page
User should be able to click back to order details in Retail Account Order Details Page
User should be able to click Re-Order button in Retail Account Order Details Page
User should be able to click orders with $0.25 spent in Retail Account Order Details Page
User should be able to click orders with $129.0 spent in HK Retail Account Order Details Page
TC Move to Top

#-----------------------------------------------------Retail Account Returns Page---------------------------------------
User should be able to view account return request page
User should be able to view Return Request Panel
User should be able to select one return from the list
User should be able to view Return details
User should be able to click filter by status in Account Retrun Page
User should be able to filter status by ALL in Account Return Page
User should be able to filter status by Accepted in Account Return Page
User should be able to filter status by Declined in Account Return Page
User should be able to filter status by In Progress in Account Return Page
User should be able to click Date Filter in Return Page
User should be able to view Date Filter Elements in Account Return Page
User should be able to click Previous Month Button in Account Return Page
User should be able to click Next Month Button in Account Return Page
User should be able to click Month Drop Down Filter in Account Return Page
User should be able to select month from drop down in Account Return Page
User should be able to click Year Drop Down Filter in Account Return Page
User should be able to select year from drop down in Account Return Page
User should be able to select From Date in Account Return Page
User should be able to select To Date in Account Return Page
User should be able to click Date Filter Clear Button in Account Return Page
User should be able to click Date Filter Submit Button in Account Return Page
User should be able to click Search Box in Account Return Page
User should be able to Input Text in Search Box in Account Return Page
User should be able to click clear button from Search Box in Account Return Page
User should be able to click Arrage Filter in Account Return Page
User should be able to Filter by New to Old in Account Return Page
User should be able to Filter by Old to New in Account Return Page
User should be able to view order with Accepted Status in Retail Account Return Page
User should be able to click order with Accepted Status in Retail Account Return Page
User should be able to view order with Declined Status in Retail Account Return Page
User should be able to click order with Declined Status in Retail Account Return Page
User should be able to view order with In Progress Status in Retail Account Return Page
User should be able to click order with In Progress Status in Retail Account Return Page
User should be able to click Back to Return Request in Retail Account Return Details Page
User should be able to click next page in Retail Account Return Page
User should be able to click first page in Retail Account Return Page
User should be able to click page 1 in Retail Account Return Page
User should be able to return to first page Retail Account in Return Orders Page
User should be able to click message supplier button in Retail Account Return Details Page
User should be able to view message supplier pop up in Retail Account Return Details Page
User should be able to input text on message pop up text field in Retail Account Return Details Page
User should be able to upload photo on message pop in Retail Account Return Details Page
User should be able to click cancel on message pop in Retail Account Return Details Page
User should be able to send on message pop in Retail Account Return Details Page

#-----------------------------------------------------Retail Account Saved Carts Page-----------------------------------
User should be able to view account saved carts page
User should be able to view Saved Carts Panel
User should be able to view Saved Carts List in Retail Account Saved Carts Page
User should be able to view Empty Saved Carts in Retail Account Saved Carts Page
User should be able to select one Saved Carts in Retail Account Saved Carts Page
User should be able to click Restore in Retail Account Saved Carts Page
User should be able to click Delete in Retail Account Saved Carts Page
User should be able to click Yes for Delete Pop Up in Retail Account Saved Carts Page
User should be able to click No for Delete Pop Up in Retail Account Saved Carts Page
User should be able to view Saved Carts Details in Retail Account Saved Carts Page
User should be able to click Edit in Retail Account Saved Carts Details Page
User should be able to click Delete in Retail Account Saved Carts Details Page
User should be albe to click Restore in Retail Account Saved Carts Details Page
User should be able to click Yes for Delete Pop Up in Retail Account Saved Carts Details Page
User should be able to click No for Delete Pop Up in Retail Account Saved Carts Details Page
User should be able to view Edit Pop Up in Retail Account Saved Carts Details Page
User should be able to edit Name for Edit Pop Up in Retail Account Saved Carts Details Page
User should be able to edit Description for Edit Pop Up in Retail Account Saved Carts Details Page
User shoulld be albe to click Cancel for Edit Pop Up in Retail Account Saved Carts Details Page
User shoulld be albe to click Update for Edit Pop Up in Retail Account Saved Carts Details Page
User should be able to click Close for Edit Pop Up in Retail Account Saved Carts Details Page
User should be albe to click Back to Saved Carts Button in Retail Account Saved Carts Details Page

#-----------------------------------------------------Retail Account Vehicle Listing Page-------------------------------
User should be able to view account vehicle listing page
User should be able to view vehicle listing Panel
User should be able to view HK vehicle listing Panel
User should be able to click Select Your Vehicle
User should be able to click add new vehicle in Retail Account Vehicle Listing Page
User should be able to click shop this vehicle in Retail Account Vehicle Listing Page
User should be able to click shop this vehicle in HK Retail Account Vehicle Listing Page
User should be able to click delete in Retail Account Vehicle Listing Page
User should be able to click delete in HK Retail Account Vehicle Listing Page
User should be able to click no on confirm deletion in Retail Account Vehicle Listing Page
User should be able to click yes on confirm deletion in Retail Account Vehicle Listing Page
User should be able to click add new vehicle in Retail Select Vehicle
User should be able to click add new vehicle in HK Retail Select Vehicle
User should be able to view add vehicle in Retail Select Vehicle
User should be able to view add vehicle in HK Retail Select Vehicle
User should be able to select state in Retail Select Vehicle
User should be able to input rego in Retail Select Vehicle
User should be albe to inout vin in Retail Select Vehicle
User should be albe to click search button in Retail Select Vehicle
User should be able to click search by make and model button in Retail Select Vehicle
User should be albe to search invalid rego vehicle in Retail Select Vehicle
User should be able to view no search result modal in Retail Select Vehicle
User should be albe to click seach by make and model on no search result modal in Retail Select Vehicle
User should be albe to click seach manually on no search result modal in Retail Select Vehicle
User should be albe to click search again on no search result modal in Retail Select Vehicle
User should be able to view manual search modal in Retail Select Vehicle
User should be able to click model on manual search in Retail Select Vehicle
User should be able to select model on manual search in Retail Select Vehicle
User should be able to click year on manual search in Retail Select Vehicle
User should be able to select year on manual search in Retail Select Vehicle
User should be able to click series on manual search in Retail Select Vehicle
User should be able to select series on manual search in Retail Select Vehicle
User should be able to click engine on manual search in Retail Select Vehicle
User should be able to select engine on manual search in Retail Select Vehicle
User should be able to click details on manual search in Retail Select Vehicle
User should be able to select details on manual search in Retail Select Vehicle
User should be able to click Model ID on manual search in HK Retail Select Vehicle
User should be able to select Model ID on manual search in HK Retail Select Vehicle
User shoud be albe to click search this vehicle on manual seearh in Retail Select Vehicle
User should be able to view valid search result in Retail Select Vehicle
User should be able to click select this vehicle in Retail Select Vehicle
User should be able to click select & save vehicle in Retail Select Vehicle
User should be able to click search again in Retail Select Vehicle
User should be able to click shop this vehicle on vehicle list in Retail Select Vehicle
User should be able to click shop this vehicle on selected vehicle in Retail Select Vehicle
User should be able to click clear vehicle on selected vehicle in Retail Select Vehicle

User should be able to view EPC Search Result Drop Down in HK Retail Vehicle Listing Page
User should be able to view EPC Search Result Drop Down Elements in HK Retail Vehicle Listing Page
User should be able to click Show More button in EPC Search Result Drop Down in HK Retail Vehicle Listing Page
User should be able to click Save and Shop in EPC Search Result Drop Down in HK Retail Vehicle Listing Page
User should be able to click Shop this vehicle in EPC Search Result Drop Down in HK Retail Vehicle Listing Page
User should be able to click Search Again in EPC Search Result Drop Down in HK Retail Vehicle Listing Page

#-----------------------------------------------------Retail Account Messages Page--------------------------------------
User should be able to view message page
User should be able to click read message
User should be able to click view message content
User should be able to click filter messages in Retail Account Messages Page
User should be able to select All filter in Retail Account Messages Page
User should be able to select Product Enquiry filter in Retail Account Messages Page
User should be able to select Order Enquiry filter in Retail Account Messages Page
User should be able to select Return Enquiry filter in Retail Account Messages Page
User should be able to select General Enquiry filter in Retail Account Messages Page
User should be able to click Date Filter in Retail Account Messages Page
User should be able to view Date Filter Elements in Retail Account Messages Page
User should be able to click Previous Month Button in Retail Account Messages Page
User should be able to click Next Month Button in Retail Account Messages Page
User should be able to click Month Drop Down Filter in Retail Account Messages Page
User should be able to select month from drop down in Retail Account Messages Page
User should be able to click Year Drop Down Filter in Retail Account Messages Page
User should be able to select year from drop down in Retail Account Messages Page
User should be able to select From Date in Retail Account Messages Page
User should be able to select To Date in Retail Account Messages Page
User should be able to click Date Filter Clear Button in Retail Account Messages Page
User should be able to click Date Filter Submit Button in Retail Account Messages Page
User should be able to click Search Box in Retail Account Messages Page
User should be able to Input Text in Search Box in Retail Account Messages Page
User should be able to click clear button from Search Box in Retail Account Messages Page
User should be able to view read General Enquiry in Retail Account Message Page
User should be able to click read General Enquiry in Retail Account Message Page
User should be able to view read Return Enquiry in Retail Account Message Page
User should be able to click read Return Enquiry in Retail Account Message Page
User should be able to view read Order Enquiry in Retail Account Message Page
User should be able to click read Order Enquiry in Retail Account Message Page
User should be able to view read Product Enquiry in Retail Account Message Page
User should be able to click read Product Enquiry in Retail Account Message Page
User should be able to view unread General Enquiry in Retail Account Message Page
User should be able to click unread General Enquiry in Retail Account Message Page
User should be able to view unread Return Enquiry in Retail Account Message Page
User should be able to click unread Return Enquiry in Retail Account Message Page
User should be able to view unread Order Enquiry in Retail Account Message Page
User should be able to click unread Order Enquiry in Retail Account Message Page
User should be able to view unread Product Enquiry in Retail Account Message Page
User should be able to click unread Product Enquiry in Retail Account Message Page
User should be able to click Back to All Message in Retail Account Messages Details Page
User should be able to click next page in Retail Account Messages Page
User should be able to click first page in Retail Account Messages Page
User should be able to click page 1 in Retail Account Messages Page
User should be able to return to first page in Retail Account Messages Page
User should be able to Input Text on Message in Retail Account Messages Details Page
User should be able to upload image in Retail Account Messages Details Page
User should be able to click cancel in Retail Account Messages Details Page
User should be able to click send in Retail Account Messages Details Page

#-----------------------------------------------------Retail Account Account Details Page-------------------------------
User should be able to view account details page
User should be able to edit First name in Retail Account Details Page
User should be able to edit Last name in Retail Account Details Page
User should be able to edit Phone Number in Retail Account Details Page
User should be able to edit Phone Number in HK Retail Account Details Page
User should be able to edit Landline Number in Retail Account Details Page
User should be able to edit Landline Number in HK Retail Account Details Page
User should be able to click Cancel in Retail Account Details Page
User should be able to click Update in Retail Account Details Page
User should be able to view update confirmation modal in Retail Account Details Page
User should be able to click Yes on update confirmation modal in Retail Account Details Page
User should be able to click No on update confirmation modal in Retail Account Details Page
User should be able to view invalid phone number error in Retail Account Details Page
User should be able to view invalid landline number error in Retail Account Details Page

#-----------------------------------------------------Retail Account Change Password Page-------------------------------
User should be able to view change password page
User should be ablle to edit current password in Retail Account Change Pass Page
User should be ablle to edit new password in Retail Account Change Pass Page
User should be ablle to edit confirm password in Retail Account Change Pass Page
User should be able to view new pass by clicking eye button in Retail Account Change Pass Page
User should be able to view confirm pass by clicking eye button in Retail Account Change Pass Page
User should be able to hide new pass by clicking eye button in Retail Account Change Pass Page
User should be able to hide confirm pass by clicking eye button in Retail Account Change Pass Page
User should be able to click Cancel button in Retail Account Change Pass Page
User should be able to click Update button in Retail Account Change Pass Page
User should be able to view update confirmation modal in Retail Account Change Pass Page
User should be able to click Yes on update confirmation modal in Retail Account Change Pass Page
User should be able to click No on update confirmation modal in Retail Account Change Pass Page
User should be able to view current pass required error in Retail Account Change Pass Page
User should be able to view new pass required error in Retail Account Change Pass Page
User should be able to view confirm pass required error in Retail Account Change Pass Page
User should be able to view new pass not match error in Retail Account Change Pass Page
User should be able to view confirm pass not match error in Retail Account Change Pass Page

#-----------------------------------------------------Retail Account Company Details Page-------------------------------
User should be able to view company details page
User should be able to view HK company details page
User should be able to input valid Account number in Retail Account Company Details Page
User should be able to input valid Company name in Retail Account Company Details Page
User should be able to input valid Trading Name in Retail Account Company Details Page
User should be able to input valid Postal Address Line 1 in Retail Account Company Details Page
User should be able to input valid Postal Address Line 2 in Retail Account Company Details Page
User should be able to input valid Postal Suburb in Retail Account Company Details Page
User should be able to input valid Postal Code in Retail Account Company Details Page
User should be able to input valid Delivery Address Line 1 in Retail Account Company Details Page
User should be able to input valid Delivery Address Line 2 in Retail Account Company Details Page
User should be able to input valid Delivery Suburb in Retail Account Company Details Page
User should be able to input valid Delivery Code in Retail Account Company Details Page
User should be able to input valid Email Address in Retail Account Company Details Page
User should be able to input valid Company Phone Number in Retail Account Company Details Page
User should be able to input valid First Name in Retail Account Company Details Page
User should be able to input valid Last Name in Retail Account Company Details Page
User should be able to click Postal Address State Drop Down in Retail Account Company Details Page
User should be able to click Delivery Address State Drop Down in Retail Account Company Details Page
User should be able to select Postal Address State in Retail Account Company Details Page
User should be able to select Delivery Address State in Retail Account Company Details Page
User should be able to check/uncheck Del Add Same As Postal Add Checkbox in Retail Account Company Details Page
User should be able to click opening hours in Retail Account Company Details Page
User should be able to click closing hours in Retail Account Company Details Page
User should be able to select opening hours value in Retail Account Company Details Page
User should be able to select closing hours value in Retail Account Company Details Page
User should be able to click cancel button in Retail Account Company Details Page
User should be able to click save button in Retail Account Company Details Page
User should be able to click no on update cofirmation modal in Retail Account Company Details Page
User should be able to click yes on update cofirmation modal in Retail Account Company Details Page
User should be able to view error messages in Retail Account Company Details Page

User should be able to select Postal Address District in HK Retail Account Company Details Page
User should be able to select Delivery Address District in HK Retail Account Company Details Page

#-----------------------------------------------------Retail Account Staff Page-----------------------------------------
User should be able to view staff page
User should be able to click add new staff in Retail Account Staff Page
User should be able to add new staff details in Retail Account Staff Page
User should be able to click active checkbox at add new staff in Retail Account Staff Page
User should be able to click cancel add new staff in Retail Account Staff Page
User should be able to click save add new staff in Retail Account Staff Page
User should be able to click edit staff button in Retail Account Staff Page
User should be able to edit First Name in Retail Account Staff Page
User should be able to edit Last Name in Retail Account Staff Page
User should be able to edit Phone Number in Retail Account Staff Page
User should be able to edit Phone Number in HK Retail Account Staff Page
User should be able to click active checkbox in Retail Account Staff Page
User should be able to view error messages in Retail Account Staff Page
User should ba able to click cancel in Retail Account Staff Page
User should ba able to click save in Retail Account Staff Page
User should be able to click no in the confirmation in Retail Account Staff Page
User should be able to click yes in the confirmation in Retail Account Staff Page

#-----------------------------------------------------Retail All Parts Page---------------------------------------------
User should be able to view All Parts Page
User should be able to filter product name from A to Z
User should be able to fitler results per page to 100
User should be able to Filter Products by Stocks

User should be able to view product In Stock and DC Stock
User should be able to view product Out of Stock and DC Stock
User should be able to view product In Stock Only
User should be able to view product In Stock Only in HK Retail Products Page
User should be able to view product Out of Stock
User should be able to view product Out of Stock in HK Retail Products Page
User should be able to view product Price not Available

User should be able to click product details In Stock and DC Stock
User should be able to click product details Out of Stock and DC Stock
User should be able to click product details In Stock Only
User should be able to click product details Out of Stock
User should be able to click product details Price not Available

User should be able to view product details In Stock and DC Stock
User should be able to view product details Out of Stock and DC Stock
User should be able to view product details Out of Stock
User should be able to view product details Out of Stock in HK Product Page
User should be able to view product details In Stock Only
User should be able to view product details In Stock Only in HK Product Page
User should be able to view product details Price not Available

User should be able to click add to cart button in Retail Products Details Page
User should be able to click enquire now button in Retail Products Details Page

User should be able to count the number of products Stock
User should be able to click add car in Retail Products Page
User should be able to click change car in Retail Products Page
User should be able to breakdown L1 product filter in Retail All Products Page
User should be able to breakdown L2 product filter in Retail All Products Page
User should be able to breakdown L3 product filter in Retail All Products Page
Breakdown L3 product filter in Retail All Products Page
User should be albe to check/uncheck 1 product sub category in Retail All Products Page
User should be able to toggle on/off your price in Retail Filtered Product Page
User should be able to toggle on/off gts in Retail Filtered Product Page

User should be able to click information button for in stock and dc stock in Retail Products Page
User should be able to click information button for out of stock and dc stock in Retail Products Page

User should be able to click sold by seller button for in stock and dc stock in Retail Products Page
User should be able to click sold by seller button for in stock only in Retail Products Page
User should be able to click sold by seller button for out of stock and dc stock in Retail Products Page
User should be able to click sold by seller button for out of stock in Retail Products Page
User should be able to click sold by seller button for price not available in Retail Products Page

User should be albe to click enquire now button for out of stock in Retail Product Page
User should be albe to click enquire now button for out of stock in HK Retail Product Page
User should be able to message out of stock product in Retail Product Page
User should be albe to click enquire now button for price not available in Retail Product Page
User should be able to message price not available product in Retail Product Page

User should be able to add to cart random item in Retail Product Page
User should be able to add item Qty in Retail Product Page
User should be able to remove item Qty in Retail Product Page

User should be able to click add to cart button for in stock and dc stock in Retail Product Page
User should be able to add 1 qty item for in stock and dc stock in Retail Product Page
User should be able to remove 1 qty item for in stock and dc stock in Retail Product Page
User should be able to input qty item for in stock and dc stock in Retail Product Page

User should be able to click add to cart button for in stock only in Retail Product Page
User should be able to click add to cart button for in stock only in HK Retail Product Page
User should be able to add 1 qty item for in stock only in Retail Product Page
User should be able to remove 1 qty item for in stock only in Retail Product Page
User should be able to input qty item for in stock only in Retail Product Page

User should be able to click add to cart button for out of stock and dc stock in Retail Product Page
User should be able to add 1 qty item for out of stock and dc stock in Retail Product Page
User should be able to remove 1 qty item for out of stock and dc stock in Retail Product Page
User should be able to input qty item for out of stock and dc stock in Retail Product Page

User should be able to view message pop up in Retail All Products Page
User should be able to input text on message pop up text field in Retail All Products Page
User should be able to upload photo on message pop in Retail All Products Page
User should be able to click cancel on message pop in Retail All Products Page
User should be able to click send on message pop in Retail All Products Page
User should be able to click continue shopping in Retail All Products Page

User should be able to click next page
User should be able to click first page
User should be able to click page 1
Return to first page
User should be able to click load more button in HK Retail Product Page
User should be able to click scroll to top button in HK Retail Product Page

Get Number of InStock DCStock
Get Number of InStockOnly
Get Number of DCStock




#-----------------------------------------------------Retail Shopping Cart Page-----------------------------------------
User should be able to view shopping cart in Retail Shopping Cart Page
User should be able to view shopping cart in HK Retail Shopping Cart Page
Empty Shopping Cart
Shopping Cart with Items
Shopping Cart with Items for HK
User should be able to toggle on/off your price in Retail Shopping Cart Page
User should be able to toggle on/off GST in Retail Shopping Cart Page
User should be able to click save cart button in Retail Shopping Cart Page
User should be able to click sold by seller button in Retail Shopping Cart Page
User should be able to view 1 cart item in Retail Shopping Cart Page
User should be able to click 1 product cart item in Retail Shopping Cart Page
User should be able to click add item qty in Retail Shopping Cart Page
User should be able to click remove item qty in Retail Shopping Cart Page
User should be able to input item qty in Retail Shopping Cart Page
User should be able to click delete cart item button in Retail Shopping Cart Page
User should be able to click continue shopping button in Retail Shopping Cart Page
User should be able to click checkout button in Retail Shopping Cart Page

#-----------------------------------------------------Retail Checkout Page-----------------------------------------
User should be able to view checkout in Retail Checkout Page
User should be able to view checkout in HK Retail Checkout Page
User should be able to click po number info in Retail Checkout Page
User should be able to edit valid po number in Retail Checkout Page
User should be able to edit invalid po number in Retail Checkout Page
User should be able to click save po number in Retail Checkout Page
User should be able to click reset po number in Retail Checkout Page
User should be able to click shipping info button in Retail Checkout Page
User should be able to click back to cart button in Retail Checkout Page
User should be able to click place order button in Retail Checkout Page
User should be able to click place order button in HK Retail Checkout Page
User should be able to view place order in Retail Place Order Page
User should be able to click back to home button in Retail Place Order Page
User should be able to click view order button in Retail Place Order Page

User should be able to view Shipping Details in HK Retail Checkout Page
User should be albe to Manage Instruction in HK Retail Checkout Page
User should be albe to click Add Instruction in HK Retail Checkout Page
User should be albe to Add Instuction text in HK Retail Checkout Page
User should be albe to click Cancel Instruction in HK Retail Checkout Page
User should be albe to click Save Instruction in HK Retail Checkout Page
User should be albe to click Edit Instruction in HK Retail Checkout Page
User should be albe to click Delete Instruction in HK Retail Checkout Page
User should be able to click Yes on Delete Instruction Pop Up in HK Retail Checkout Page
User should be able to click No on Delete Instruction Pop Up in HK Retail Checkout Page

User should be albe to click Change Address in HK Retail Checkout Page
User should be able to view Change Shipping Address Modal in HK Retail Checkout Page
User should be able to change Mobile Number on change shipping in HK Retail Checkout Page
User should be able to change Landline Number on change shipping in HK Retail Checkout Page
User should be able to edit shipping address on change shipping in HK Retail Checkout Page
User should be able to select Random Address from suggestions in HK Retail Checkout Page
User should be able to click Area Dropdown on change shipping in HK Retail Checkout Page
User should be able to select Random Area on change shipping in HK Retail Checkout Page
User should be able to click District Dropdown on change shipping in HK Retail Checkout Page
User should be able to select Random District on change shipping in HK Retail Checkout Page
User should be able to click Save Button on change shipping in HK Retail Checkout Page
User should be able to click Cancel Button on change shipping in HK Retail Checkout Page

User should be able to view payment method in HK Retail Checkout Page
User should be albe to select COD Payment
User should be albe to select Credit Cart Payment
Select Credit Card Frame
Unselect Credit Card Frame
User should be able to input visa card number
User should be able to input master card number
User should be able to input jcb card number
User should be able to input discover card number
User should be able to input diners card number

User should be albe to input Exp Date
User should be albe to input CVV
User should be albe to input Card Holders Name
User should be albe to input Email
User should be able to click cancel button
User should be able to click continue payment button

User should be able to view 2C2P Modal
User should be able to Input OTP
User should be able to click resend otp on 2C2P
User should be able to click Cancel button on 2C2P
User should be able to click Submit button on 2C2P
User should be able to view 2C2P Confirmation
User should be able to view success transaction

User should be able to logout
User should be able to logout using double header


















