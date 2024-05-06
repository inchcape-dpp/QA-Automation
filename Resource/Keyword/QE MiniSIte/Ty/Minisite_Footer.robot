*** Settings ***
Documentation    Suite description

Library    SeleniumLibrary

#Resource    ../../../Resource/testdata/config.robot
Resource    ../../../../Resource/testdata/QE MiniSIte/Ty/Minisite_Footer_Variable.robot
Resource    ../../../../Resource/testdata/credentials.robot

*** Keywords ***

User should be able to view Our Supplier header text
    wait until element is visible    ${Our_Supplier}
    capture element screenshot
    sleep    2

User should be able to view Suttons logo
    wait until element is visible    ${Suttons}
    capture element screenshot
    sleep    2




