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
    run keyword and continue on failure    Verify Login Page

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

TC-004 - User should be albe to View Search VIN in HK Retail Home Page
    [Tags]    Home Page    VIN Search
    run keyword and continue on failure    User should be albe to View Search VIN in HK Retail Home Page
    run keyword and continue on failure    User should be albe to Input Search VIN1 in HK Retail Home Page
    run keyword and continue on failure    User should be albe to Click Search VIN in HK Retail Home Page

TC-005 - User should be able to view EPC Search Result Pop Up Modal in HK Retail Home Page
    [Tags]    Home Page    EPC
    run keyword and continue on failure    User should be able to view EPC Search Result Pop Up Modal in HK Retail Home Page
    run keyword and continue on failure    User should be able to click Show More button in EPC Search Result Pop Up Modal in HK Retail Home Page
    run keyword and continue on failure    User should be able to view EPC Search Result Pop Up Modal Elements in HK Retail Home Page
    run keyword and continue on failure    User should be able to click Shop this vehicle in EPC Search Result Pop Up Modal in HK Retail Home Page
    run keyword and continue on failure    TC Sleep

TC-006 - User should be able to view EPC L1 Page in HK Retail
    [Tags]    EPC    L1
    run keyword and continue on failure    TC Sleep
    run keyword and continue on failure    User should be able to view EPC L1 Page in HK Retail

TC-007 - User should be able to view EPC L1 Page in HK Retail
    [Tags]    EPC    L1
    run keyword and continue on failure    User should be able to click Shop Now in HK Retail EPC L1 Page
    run keyword and continue on failure    Browse Back Button

TC-008 - User should be able to Click Engine Fuel System in HK Retail EPC L1 Page
    [Tags]    EPC    L1
    run keyword and continue on failure    User should be able to Click Engine Fuel System in HK Retail EPC L1 Page
    run keyword and continue on failure    Browse Back Button

TC-009 - User should be able to Click Transmission and Chasis in HK Retail EPC L1 Page
    [Tags]    EPC    L1
    run keyword and continue on failure    User should be able to Click Transmission and Chasis in HK Retail EPC L1 Page
    run keyword and continue on failure    Browse Back Button

TC-010 - User should be able to Click Body and Interior in HK Retail EPC L1 Page
    [Tags]    EPC    L1
    run keyword and continue on failure    User should be able to Click Body and Interior in HK Retail EPC L1 Page
    run keyword and continue on failure    Browse Back Button

TC-011 - User should be able to Click Electrics in HK Retail EPC L1 Page
    [Tags]    EPC    L1
    run keyword and continue on failure    User should be able to Click Electrics in HK Retail EPC L1 Page
    run keyword and continue on failure    Browse Back Button

TC-012 - User should be able to view EPC L2 Page in HK Retail
    [Tags]    EPC    L2
    run keyword and continue on failure    User should be able to Click Engine Fuel System in HK Retail EPC L1 Page
    run keyword and continue on failure    User should be able to view EPC L2 Page in HK Retail

TC-013 - User should be able to view All Schema in HK Retail EPC L2 Page
    [Tags]    EPC    L2
    run keyword and continue on failure    User should be able to Click All in HK Retail EPC L2 Page
    run keyword and continue on failure    User should be able to view All Schema in HK Retail EPC L2 Page

TC-014 - User should be able to select random Schema in HK Retail EPC L2 Page
    [Tags]    EPC    L2
    run keyword and continue on failure    User should be able to select random Schema in HK Retail EPC L2 Page

TC-015 - User should be able to select random Schema in HK Retail EPC L2 Page
    [Tags]    EPC    L3
    run keyword and continue on failure    User should be able to view EPC L3 Page in HK Retail EPC L3 Page

TC-016 - User should be able to view Parts List Card and Diagram in HK Retail EPC L3 Page
    [Tags]    EPC    L3
    run keyword and continue on failure    User should be able to view Parts List Card and Diagram in HK Retail EPC L3 Page

TC-017 - User should be able to view Parts List Card and Diagram in HK Retail EPC L3 Page
    [Tags]    EPC    L3
    run keyword and continue on failure    User should be able to view one Card on the Parts Card List in HK Retail EPC L3 Page
    run keyword and continue on failure    User should be able to expand one Card on the Parts Card List in HK Retail EPC L3 Page
    run keyword and continue on failure    User should be able to view Option Card Details on the Parts Card List in HK Retail EPC L3 Page







#TC-000000 - TC Sleep
#    [Tags]    TC-000000   TC Sleep
#    run keyword and continue on failure    TC Sleep

#TC-000000 - Browse Back Button
#    [Tags]    TC-000000   Browser Back
#    run keyword and continue on failure    Browse Back Button


TC-000000 - User should be able to logout
    [Tags]    TC009    Logout
    run keyword and continue on failure    User should be able to logout using double header
#
#Test Teardown
#    Run Keywords  Close Browser
#    run keyword    Save Log DIR