*** Settings ***
Documentation    Suite description

Library    SeleniumLibrary

Resource    ../../../Resource/testdata/config.robot
Resource    ../../../Resource/testdata/Dealer/Dealer_Variable.robot
Resource    ../../../Resource/testdata/credentials.robot

*** Keywords ***
User should be able to view login
    wait until element is visible    ${Logo}    10
    wait until element is visible    ${Email}    10
    wait until element is visible    ${Pass}    10
    wait until element is visible    ${LoginButton}    10
    sleep    1

User should be to enter valid Username
    input text    ${Email}    ${admin2_s2_dealer_UID}
    sleep    1

User should be to enter valid Password
    input text    ${Pass}    ${admin2_s2_dealer_PWD}
    sleep    5

User should be able to click login button in Training TC
    click element    ${LoginButton}
    sleep    10


TCsleep training
    sleep    10

