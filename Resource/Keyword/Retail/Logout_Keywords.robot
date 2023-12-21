*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary

Resource  ../../../Resource/testdata/config.robot
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