*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary
Library    Process
#Library  FakerLibrary

Resource  ../../../Resource/testdata/QEMiniSite/MiniSite_Config.robot
Resource  ../../../Resource/testdata/QEMiniSite/MiniSite_Variable.robot
Resource  ../../../Resource/testdata/QEMiniSite/MiniSite_resource.robot

*** Test Cases ***
Test Setup  Run Keywords   Open Chrome Browser
Screen Shot DIR  Run Keywords    Retail Screent Shot DIR

TC-001 - Verify Minisite Page
    [Tags]    TC001    Minisite
    run keyword and continue on failure    Verify Minisite Page

TC-002 - Verify Header elements
    [Tags]    TC002    Minisite
    run keyword and continue on failure    Verify Header elements

TC-003 - Verify Get on the fast track to Genuine Subaru Parts elements
    [Tags]    TC003    Minisite
    run keyword and continue on failure    Verify Get on the fast track to Genuine Subaru Parts elements

TC-004 - Verify What is Partslane elements
    [Tags]    TC004    Minisite
    run keyword and continue on failure    Verify What is Partslane elements

TC-005 - Verify Why Choose Us elements
    [Tags]    TC005    Minisite
    run keyword and continue on failure    Verify Why Choose Us elements

TC-006 - Verify How it Works elements
    [Tags]    TC006    Minisite
    run keyword and continue on failure    Verify How it Works elements

TC-007 - User should be able to view Our Suppliers elements
    [Tags]    TC007    Minisite
    run keyword and continue on failure    User should be able to view Our Suppliers elements

TC-008 - User should be able to view Let Us Talk elements
    [Tags]    TC008    Minisite
    run keyword and continue on failure    User should be able to view Let Us Talk elements

TC-009 - User should be able to input on fields in Contact Us form and submit it
    [Tags]    TC009    Minisite
    run keyword and continue on failure    User should be able to input on fields in Contact Us form and submit it

TC-0010 - User should be able to view Footer
    [Tags]    TC010    Minisite
    run keyword and continue on failure    User should be able to view Footer
    run keyword and continue on failure    reload page

#TC-011 - User should verify clickable register button Test
#    [Tags]    TC011    Minisite
#    run keyword and continue on failure    User should verify clickable register button Test

TC-011 - User should verify clickable register button
    [Tags]    TC011    Minisite
    run keyword and continue on failure    User should verify clickable register button

TC-012 - User should verify clickable sigin button
    [Tags]    TC012    Minisite
    run keyword and continue on failure    User should verify clickable sigin button

TC-013 - User should verify clickable register button body
    [Tags]    TC013    Minisite
    run keyword and continue on failure    User should verify clickable register button body

TC-014 - User should verify clickable register button how it works
    [Tags]    TC014    Minisite
    run keyword and continue on failure    User should verify clickable register button how it works

TC-015 - User should verify clickable Terms of Use
    [Tags]    TC015    Minisite
    run keyword and continue on failure    User should verify clickable Terms of Use

TC-016 - User should verify clickable Privacy Policy
    [Tags]    TC016    Minisite
    run keyword and continue on failure    User should verify clickable Privacy Policy

TC-017 - User should verify clickable Terms of Use footer
    [Tags]    TC016    Minisite
    run keyword and continue on failure    User should verify clickable Terms of Use footer

TC-018 - User should verify clickable Privacy Policy footer
    [Tags]    TC016    Minisite
    run keyword and continue on failure    User should verify clickable Privacy Policy footer
