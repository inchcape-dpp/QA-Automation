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
    [Tags]    TC001    Verify Minisite Page
    run keyword and continue on failure    Verify Minisite Page

TC-002 - Verify Minisite Footer logo
    [Tags]    TC002    User should be able to view Our Supplier header text
    run keyword and continue on failure    User should be able to view Our Supplier header text

TC-003 - Verify Minisite Footer logo
    [Tags]    TC003    User should be able to view Suttons logo
    run keyword and continue on failure    User should be able to view Suttons logo

TC-004 - Verify Minisite Footer logo
    [Tags]    TC004    User should be able to view Eagers Automotive logo
    run keyword and continue on failure    User should be able to view Eagers Automotive logo

TC-005 - Verify Minisite Footer logo
    [Tags]    TC005    User should be able to view Jarvis logo
    run keyword and continue on failure    User should be able to view Jarvis logo

TC-006 - Verify Minisite Footer logo
    [Tags]    TC006    User should be able to view Jefferson Automotive logo
    run keyword and continue on failure    User should be able to view Jefferson Automotive logo

TC-007 - Verify Minisite Footer logo
    [Tags]    TC007    User should be able to view Eblens Subaru logo
    run keyword and continue on failure    User should be able to view Eblens Subaru logo

TC-008 - Verify Minisite Footer logo
    [Tags]    TC008    User should be able to view Cricks logo
    run keyword and continue on failure    User should be able to view Cricks logo

TC-009 - Verify Minisite Footer logo
    [Tags]    TC009    User should be able to view McGrath logo
    run keyword and continue on failure    User should be able to view McGrath logo

TC-010 - Verify Minisite Footer logo
    [Tags]    TC010    User should be able to view Rex Gorell logo
    run keyword and continue on failure    User should be able to view Rex Gorell logo

TC-011 - Verify Minisite Footer logo
    [Tags]    TC011    User should be able to view WA Subaru logo
    run keyword and continue on failure    User should be able to view WA Subaru logo

TC-012 - Verify Minisite Footer logo
    [Tags]    TC012    User should be able to view Key Motors Subaru logo
    run keyword and continue on failure    User should be able to view Key Motors Subaru logo

TC-013 - Verify Minisite Footer logo
    [Tags]    TC013    User should be able to view von Bibra Auto Group logo
    run keyword and continue on failure    User should be able to view von Bibra Auto Group logo

TC-014 - Verify Minisite Contact Us Section
    [Tags]    TC014    User should be able to view Contact Us image
    run keyword and continue on failure    User should be able to view Contact Us image

TC-015 - Verify Minisite Contact Us Section
    [Tags]    TC015    User should be able to view Let Us Talk
    run keyword and continue on failure    User should be able to view Let Us Talk

TC-016 - Verify Minisite Contact Us Section
    [Tags]    TC016    User should be able to view Let Us Talk subtext
    run keyword and continue on failure    User should be able to view Let Us Talk subtext

TC-017 - Verify Minisite Contact Us Section
    [Tags]    TC017    User should be able to view First name field
    run keyword and continue on failure    User should be able to view First name field

TC-018 - Verify Minisite Contact Us Section
    [Tags]    TC018    User should be able to view Last name field
    run keyword and continue on failure    User should be able to view Last name field

TC-019 - Verify Minisite Contact Us Section
    [Tags]    TC019    User should be able to view Email address field
    run keyword and continue on failure    User should be able to view Email address field

TC-020 - Verify Minisite Contact Us Section
    [Tags]    TC020    User should be able to view the Message box field
    run keyword and continue on failure    User should be able to view the Message box field

TC-014 - Verify Minisite Contact Us Section

TC-014 - Verify Minisite Contact Us Section

