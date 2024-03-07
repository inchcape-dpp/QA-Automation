*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary

#Resource  ../../../Resource/testdata/config.robot
Resource  ../../../Resource/testdata/Retail/Retail_Variable.robot
Resource  ../../../Resource/testdata/credentials.robot


*** Keywords ***

#-----------------------------------------------------Retail Logout-----------------------------------------------------
User should be able to logout
    wait until element is visible    ${HomePageProfileIcon}    10
    click element    ${HomePageProfileIcon}
    wait until element is visible    ${HomePageProfileLogout}    10
    click element    ${HomePageProfileLogout}
    sleep    2
    capture page screenshot
    sleep    2

User should be able to logout using double header
    wait until element is visible    ${HomePage_DoubleHeader_DropDown_Button}    10
    click element    ${HomePage_DoubleHeader_DropDown_Button}
    wait until element is visible    ${HomePage_DoubleHeader_Menu_Logout_Button}    10
    click element    ${HomePage_DoubleHeader_Menu_Logout_Button}
    sleep    2
