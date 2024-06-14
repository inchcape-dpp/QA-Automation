*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary
Library    Process
#Library  FakerLibrary

Resource  ../../../../../Resource/testdata/Retail/SG_Config/S2/SG_S2_GameChanger_Config.robot
Resource  ../../../../../Resource/testdata/Retail/Retail_Variable.robot
Resource  ../../../../../Resource/testdata/Retail/Retail_Resource.robot

*** Test Cases ***
Test Setup  Run Keywords   Open Chrome Browser
Screen Shot DIR  Run Keywords    Retail Screen Shot DIR

TC-001 - Verify Login Page
    [Tags]    TC001    Login Page
    run keyword and continue on failure    Verify Login Page Elements HK

TC-002- Verify - Clickable Footers
    [Tags]    TC001    Login Page
    run keyword and continue on failure    User should verify clickable Privacy Policy on footer
    run keyword and continue on failure    browse back button
    run keyword and continue on failure    User should verify clickable Terms & Conditions on footer
    run keyword and continue on failure    browse back button
    run keyword and continue on failure    User should verify clickable Shipping Policy on footer
    run keyword and continue on failure    browse back button
    run keyword and continue on failure    User should verify clickable About Us on footer
    run keyword and continue on failure    browse back button
    run keyword and continue on failure    User should verify clickable Contact Us on footer
    run keyword and continue on failure    browse back button

#TC-002 - Email
#    [Tags]    Get Email
#    run keyword and continue on failure    New browser tab
#    run keyword and continue on failure    Enter Yop Mail
#    run keyword and continue on failure    Switch to Inbox List Frame
#    run keyword and continue on failure    Click Inbox Messages
#    run keyword and continue on failure    Unselect Mail Frame
#    run keyword and continue on failure    Switch to Inbox Message Frame
#    run keyword and continue on failure    Read Message
#    run keyword and continue on failure    Get Sender Email
#    run keyword and continue on failure    Get Email Message
#
#TC-003 - Read Text
#    [Tags]    Read Text
#    run keyword and continue on failure    Read Text File

TC-001- Verify - Clickable Footers
    [Tags]    Login Page
    run keyword and continue on failure    User should verify clickable Privacy Policy on footer
    run keyword and continue on failure    browse back button
    run keyword and continue on failure    User should verify clickable Terms & Conditions on footer
    run keyword and continue on failure    browse back button
    run keyword and continue on failure    User should verify clickable Shipping Policy on footer
    run keyword and continue on failure    browse back button
    run keyword and continue on failure    User should verify clickable About Us on footer
    run keyword and continue on failure    browse back button
    run keyword and continue on failure    User should verify clickable Contact Us on footer
    run keyword and continue on failure    browse back button

TC-002 - Input Valid Username
    [Tags]    Login Page
    run keyword and continue on failure    Input Valid Username

TC-003 - Input Valid Password
    [Tags]    Login Page
    run keyword and continue on failure    Input Valid Password

TC-004 - User should be able to click Login Button
    [Tags]    Login Page
    run keyword and continue on failure    User should be able to click Login Button
    run keyword and continue on failure    TC Sleep

TC-017 - User should be able to view home page
    [Tags]    Home Page
    run keyword and continue on failure    User should be able to view home page

#TC-018 Verify - Clickable Footers homepage
#    [Tags]    Home Page
#    run keyword and continue on failure    User should verify homepage clickable Privacy Policy on footer
#    run keyword and continue on failure    browse back button
#    run keyword and continue on failure    User should verify homepage clickable Terms & Conditions on footer
#    run keyword and continue on failure    browse back button
#    run keyword and continue on failure    User should verify homepage clickable Shipping Policy on footer
#    run keyword and continue on failure    browse back button
#    run keyword and continue on failure    User should verify homepage clickable About Us on footer
#    run keyword and continue on failure    browse back button
#    run keyword and continue on failure    User should verify homepage clickable Contact Us on footer
#    run keyword and continue on failure    browse back button
#
#TC-024 - User should be able to view body parts menus in HK Retail Home Page
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to view body parts menus in HK Retail Home Page
#
#TC-024 - User should be able to view Chemicals menus in HK Retail Home Page
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to view Chemicals menus in HK Retail Home Page
#
#TC-024 - User should be able to view Maintenance Item menus in HK Retail Home Page
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to view Maintenance Item menus in HK Retail Home Page
#
#TC-024 - User should be able to view Repair Parts menus in HK Retail Home Page
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to view Repair Parts menus in HK Retail Home Page
#
#TC-024 - User should be able to view Toyota Hybrid menus in HK Retail Home Page
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to view Toyota Hybrid menus in HK Retail Home Page
#
#TC-025 - User should be able to select 1 filter from selected category in HK Retail Home Page
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to select 1 filter from selected category in HK Retail Home Page
#
#TC-026 - User should be able to click 1 sub filter from selected category in Retail Home Page
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to click 1 sub filter from selected category in Retail Home Page
#    run keyword and continue on failure    TC Sleep
#    run keyword and continue on failure    User should be able to verify parts breadcrumbs in HK Retail Home Page
#    run keyword and continue on failure    Show number of product list
#    run keyword and continue on failure    User should be able to Go to Home page
#
#TC-038 - User should be able to click shop by category Body Parts in HK Retail Home Page
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to click shop by category Body Parts in HK Retail Home Page
#    run keyword and continue on failure    User should be able to Go to Home page
#
#TC-038 - User should be able to click shop by category Chemicals in HK Retail Home Page
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to click shop by category Chemicals in HK Retail Home Page
#    run keyword and continue on failure    User should be able to Go to Home page
#
#TC-038 - User should be able to click shop by category Maintenance in HK Retail Home Page
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to click shop by category Maintenance in HK Retail Home Page
#    run keyword and continue on failure    User should be able to Go to Home page
#
#TC-038 - User should be able to click shop by category Repair Parts in HK Retail Home Page
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to click shop by category Repair Parts in HK Retail Home Page
#    run keyword and continue on failure    User should be able to Go to Home page
#
#TC-038 - User should be able to click shop by category Toyota Hybrid in HK Retail Home Page
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to click shop by category Toyota Hybrid in HK Retail Home Page
#    run keyword and continue on failure    User should be able to Go to Home page
#
#TC-039 - User should be able to input text on search bar
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to input text on search bar
#
#TC-040 - User should be able to click searched text
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to click searched text
#
#TC-041 - User should be able to access Order page using double header in Retail Homepage
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to Go to Home page
#    run keyword and continue on failure    User should be able to access Order page using double header in Retail Homepage
#    run keyword and continue on failure    reload page
#    run keyword and continue on failure    TC Sleep
#
#TC-041 - User should be able to access Retrun page using double header in Retail Homepage
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to Go to Home page
#    run keyword and continue on failure    User should be able to access Retrun page using double header in Retail Homepage
#    run keyword and continue on failure    reload page
#    run keyword and continue on failure    TC Sleep
#
#TC-041 - User should be able to access Save carts page using double header in Retail Homepage
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to Go to Home page
#    run keyword and continue on failure    User should be able to access Save carts page using double header in Retail Homepage
#    run keyword and continue on failure    reload page
#    run keyword and continue on failure    TC Sleep
#
#TC-041 - User should be able to access Vehicle Listing page using double header in Retail Homepage
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to Go to Home page
#    run keyword and continue on failure    User should be able to access Vehicle Listing page using double header in Retail Homepage
#    run keyword and continue on failure    reload page
#    run keyword and continue on failure    TC Sleep
#
#TC-041 - User should be able to access Inbox page using double header in Retail Homepage
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to Go to Home page
#    run keyword and continue on failure    User should be able to access Inbox page using double header in Retail Homepage
#    run keyword and continue on failure    reload page
#    run keyword and continue on failure    TC Sleep
#
#TC-041 - User should be able to access Account Details page using double header in Retail Homepage
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to Go to Home page
#    run keyword and continue on failure    User should be able to access Account Details page using double header in Retail Homepage
#    run keyword and continue on failure    reload page
#    run keyword and continue on failure    TC Sleep
#
#TC-041 - User should be able to access Change Pass page using double header in Retail Homepage
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to Go to Home page
#    run keyword and continue on failure    User should be able to access Change Pass page using double header in Retail Homepage
#    run keyword and continue on failure    reload page
#    run keyword and continue on failure    TC Sleep
#
#TC-041 - User should be able to access Company Details page using double header in Retail Homepage
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to Go to Home page
#    run keyword and continue on failure    User should be able to access Company Details page using double header in Retail Homepage
#    run keyword and continue on failure    reload page
#    run keyword and continue on failure    TC Sleep
#
#TC-041 - User should be able to access Relationship page using double header in Retail Homepage
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to Go to Home page
#    run keyword and continue on failure    User should be able to access Relationship page using double header in Retail Homepage
#    run keyword and continue on failure    reload page
#    run keyword and continue on failure    TC Sleep
#
#TC-041 - User should be able to manual search vehicle in HK Retail Homepage
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to Go to Home page
#    run keyword and continue on failure    User should be albe to View Search Vehicle in HK Retail Home Page
#    run keyword and continue on failure    User should be able to click brand on manual search in HK Retail Home Page
#    run keyword and continue on failure    User should be able to select brand on manual search in HK Retail Home Page
#    run keyword and continue on failure    User should be able to click model on manual search in HK Retail Home Page
#    run keyword and continue on failure    User should be able to select model on manual search in HK Retail Home Page
#    run keyword and continue on failure    User should be able to click year on manual search in HK Retail Home Page
#    run keyword and continue on failure    User should be able to select year on manual search in HK Retail Home Page
#    run keyword and continue on failure    User should be able to click variant on manual search in HK Retail Home Page
#    run keyword and continue on failure    User should be able to select variant on manual search in HK Retail Home Page
#    run keyword and continue on failure    User should be able to click model id on manual search in HK Retail Home Page
#    run keyword and continue on failure    User should be able to select model id on manual search in HK Retail Home Page
#    run keyword and continue on failure    User shoud be albe to click search this vehicle on manual seearh in HK Retail Home Page
#    run keyword and continue on failure    TC Sleep
#
#TC-041 - User should be able to view EPC Search Result Pop Up Modal in HK Retail Home Page
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to view EPC Search Result Pop Up Modal in HK Retail Home Page
#    run keyword and continue on failure    User should be able to view EPC Search Result Pop Up Modal Elements in HK Retail Home Page
#    run keyword and continue on failure    User should be able to click Show More button in EPC Search Result Pop Up Modal in HK Retail Home Page
#    run keyword and continue on failure    User should be able to click Shop this vehicle in EPC Search Result Pop Up Modal in HK Retail Home Page
#    run keyword and continue on failure    TC Sleep
#    run keyword and continue on failure    TC Sleep
#
#TC-041 - User should be able to VIN search vehicle in HK Retail Homepage
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to Go to Home page
#    run keyword and continue on failure    User should be albe to View Search VIN in HK Retail Home Page
#    run keyword and continue on failure    User should be albe to Input Search VIN1 in HK Retail Home Page
#    run keyword and continue on failure    User should be albe to Click Search VIN in HK Retail Home Page
#    run keyword and continue on failure    TC Sleep
#
#
#TC-041 - User should be able to view EPC Search Result Pop Up Modal in HK Retail Home Page
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to view EPC Search Result Pop Up Modal in HK Retail Home Page
#    run keyword and continue on failure    User should be able to view EPC VIN Search Result Pop Up Modal Elements in HK Retail Home Page
#    run keyword and continue on failure    User should be able to click Show More button in EPC Search Result Pop Up Modal in HK Retail Home Page
#    run keyword and continue on failure    User should be able to click Shop this vehicle in EPC Search Result Pop Up Modal in HK Retail Home Page
#    run keyword and continue on failure    TC Sleep
#    run keyword and continue on failure    TC Sleep
#
#TC-041 - User should be able to view EPC L1 Page in HK Retail
#    [Tags]    EPC L1
#    run keyword and continue on failure    User should be able to view EPC L1 Page in HK Retail
#
#TC-041 - User should be able to click Shop Now in HK Retail EPC L1 Page
#    [Tags]    EPC L1
#    run keyword and continue on failure    User should be able to click Shop Now in HK Retail EPC L1 Page
#    run keyword and continue on failure    Browse Back Button
#
#TC-041 - User should be able to Click Engine Fuel System in HK Retail EPC L1 Page
#    [Tags]    EPC L1
#    run keyword and continue on failure    User should be able to Click Engine Fuel System in HK Retail EPC L1 Page
#    run keyword and continue on failure    Browse Back Button
#
#TC-041 - User should be able to Click Transmission and Chasis in HK Retail EPC L1 Page
#    [Tags]    EPC L1
#    run keyword and continue on failure    User should be able to Click Transmission and Chasis in HK Retail EPC L1 Page
#    run keyword and continue on failure    Browse Back Button
#
#TC-041 - User should be able to Click Body and Interior in HK Retail EPC L1 Page
#    [Tags]    EPC L1
#    run keyword and continue on failure    User should be able to Click Body and Interior in HK Retail EPC L1 Page
#    run keyword and continue on failure    Browse Back Button
#
#TC-041 - User should be able to Click Electrics in HK Retail EPC L1 Page
#    [Tags]    EPC L1
#    run keyword and continue on failure    User should be able to Click Electrics in HK Retail EPC L1 Page
#
#TC-041 - User should be able to Click Electrics in HK Retail EPC L1 Page
#    [Tags]    EPC L2
#    run keyword and continue on failure    User should be able to view EPC L2 Page in HK Retail
#
#TC-041 - User should be able to view Engine Fuel System Schema in HK Retail EPC L2 Page
#    [Tags]    EPC L2
#    run keyword and continue on failure    User should be able to Click Engine Fuel System in HK Retail EPC L2 Page
#    run keyword and continue on failure    User should be able to view Engine Fuel System Schema in HK Retail EPC L2 Page
#
#TC-041 - User should be able to view Transmission and Chasis Schema in HK Retail EPC L2 Page
#    [Tags]    EPC L2
#    run keyword and continue on failure    User should be able to Click Transmission and Chasis in HK Retail EPC L2 Page
#    run keyword and continue on failure    User should be able to view Transmission and Chasis Schema in HK Retail EPC L2 Page
#
#TC-041 - User should be able to view Body and Innterior Schema in HK Retail EPC L2 Page
#    [Tags]    EPC L2
#    run keyword and continue on failure    User should be able to Click Body and Interior in HK Retail EPC L2 Page
#    run keyword and continue on failure    User should be able to view Body and Innterior Schema in HK Retail EPC L2 Page
#
#TC-041 - User should be able to view Electrics Schema in HK Retail EPC L2 Page
#    [Tags]    EPC L2
#    run keyword and continue on failure    User should be able to Click Electrics in HK Retail EPC L2 Page
#    run keyword and continue on failure    User should be able to view Electrics Schema in HK Retail EPC L2 Page
#
#TC-041 - User should be able to view All Schema in HK Retail EPC L2 Page
#    [Tags]    EPC L2
#    run keyword and continue on failure    User should be able to Click All in HK Retail EPC L2 Page
#    run keyword and continue on failure    User should be able to view All Schema in HK Retail EPC L2 Page
#
#TC-041 - User should be able to select random Schema in HK Retail EPC L2 Page
#    [Tags]    EPC L2
#    run keyword and continue on failure    User should be able to select random Schema in HK Retail EPC L2 Page
#
#TC-041 - User should be able to view EPC L3 Page in HK Retail EPC L3 Page
#    [Tags]    EPC L3
#    run keyword and continue on failure    User should be able to view EPC L3 Page in HK Retail EPC L3 Page
#    run keyword and continue on failure    User should be able to view Parts List Card and Diagram in HK Retail EPC L3 Page
#
#TC-041 - User should be able to view one Card on the Parts Card List in HK Retail EPC L3 Page
#    [Tags]    EPC L3
#    run keyword and continue on failure    User should be able to view one Card on the Parts Card List in HK Retail EPC L3 Page
#    run keyword and continue on failure    User should be able to expand one Card on the Parts Card List in HK Retail EPC L3 Page
#    run keyword and continue on failure    User should be able to view Option Card Details on the Parts Card List in HK Retail EPC L3 Page
#
#TC-041 - User should be able to clear vehicle selection in HK Retail Home Page
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to Go to Home page
#    run keyword and continue on failure    User should be able to click Select Your Vehicle
#    run keyword and continue on failure    User should be able to click clear vehicle on selected vehicle in Retail Select Vehicle
#    run keyword and continue on failure    User should be able to Go to Home page
#
#TC-041 - User should be able to view All Products Page in HK Retail Home Page
#    [Tags]    Home Page
#    run keyword and continue on failure    User should be able to view All products
#    run keyword and continue on failure    TC Sleep
#
#TC-042 - User should be able to side filter product
#    [Tags]    All Products Page
#    run keyword and continue on failure    User should be able to breakdown L1 product filter in Retail All Products Page
#    run keyword and continue on failure    User should be able to breakdown L2 product filter in Retail All Products Page
#    run keyword and continue on failure    User should be able to breakdown L3 product filter in Retail All Products Page

TC-004 - User should be able to compare RRP Values in Retail Checkout Page
    [Tags]    All Products Page
    run keyword and continue on failure    User should be able to view All products
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    User should be able to view shopping cart pop up modal
    run keyword and continue on failure    User should be albe to delete all items from shopping cart pop up modal
    run keyword and continue on failure    User should be able to view All products
    run keyword and continue on failure    User shold be able to get RRP value of random item with add to cart button in Retail Product Page
    run keyword and continue on failure    User should be able to view shopping cart pop up modal
    run keyword and continue on failure    User should be able to click view cart button from shopping cart pop up modal
    run keyword and continue on failure    User should be able to get RRP Value in Retail Shopping Cart Page
    run keyword and continue on failure    User should be able to click checkout button in Retail Shopping Cart Page
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    User should be able to get RRP Values in Retail Checkout Page
    run keyword and continue on failure    User should be able to compare RRP Values in Retail Checkout Page


#TC-000000 - TC Sleep
#    [Tags]    TC-000000   TC Sleep
#    run keyword and continue on failure    TC Sleep

#TC-000000 - Browse Back Button
#    [Tags]    TC-000000   Browser Back
#    run keyword and continue on failure    Browse Back Button


#TC-000000 - User should be able to logout
#    [Tags]    TC009    Logout
#    run keyword and continue on failure    User should be able to logout using double header
#
#Test Teardown
#    Run Keywords  Close Browser
#    run keyword    Save Log DIR