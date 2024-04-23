*** Settings ***
Documentation    Suite description

Library    SeleniumLibrary
Library    Process
#Library  FakerLibrary

Resource  ../../../../Resource/testdata/QE_Minisite/Ty/Minisite_Footer_Config.robot
Resource  ../../../../Resource/testdata/QE_Minisite/Ty/Minisite_Footer_Variable.robot
Resource  ../../../../Resource/testdata/QE_Minisite/Ty/Minisite_Footer_Resource.robot
Resource  ../../../../Resource/Keyword/QE_Minisite/Ty/Minisite_Footer.robot

*** Test Cases ***
Test Setup  Run Keywords   Open Chrome Browser
Screen Shot DIR  Run Keywords    Retail Screent Shot DIR

TC-001 - Verify Minisite Page
    [Tags]    TC001    Landing Page
    run keyword and continue on failure    Verify Minisite Page

TC-002 - Verify Minisite Footer logo
    [Tags]    TC002    Footer logo
    run keyword and continue on failure    User should be able to view Our Supplier header text
    run keyword and continue on failure    User should be able to view Suttons logo
    run keyword and continue on failure    User should be able to view Eagers Automotive logo
    run keyword and continue on failure    User should be able to view Jarvis logo
    run keyword and continue on failure    User should be able to view Jefferson Automotive logo
    run keyword and continue on failure    User should be able to view Eblens Subaru logo
    run keyword and continue on failure    User should be able to view Cricks logo
    run keyword and continue on failure    User should be able to view McGrath logo
    run keyword and continue on failure    User should be able to view Rex Gorell logo
    run keyword and continue on failure    User should be able to view WA Subaru logo
    run keyword and continue on failure    User should be able to view Key Motors Subaru logo
    run keyword and continue on failure    User should be able to view von Bibra Auto Group logo

