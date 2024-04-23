*** Settings ***
Documentation    Suite description

Library    SeleniumLibrary

#Resource    ../../../Resource/testdata/config.robot
Resource    ../../../../Resource/testdata/QE_Minisite/Ty/Minisite_Footer_Variable.robot
Resource    ../../../../Resource/testdata/credentials.robot

*** Keywords ***

Verify Minisite Page
    wait until element is visible    ${PartsLane}
    sleep    2

User should be able to view Our Supplier header text
    wait until element is visible    ${Our_Supplier}
    capture element screenshot
    sleep    2

User should be able to view Suttons logo
    wait until element is visible    ${Suttons}
    capture element screenshot
    sleep    2

User should be able to view Eagers Automotive logo
    wait until element is visible    ${Eagers_Automotive}
    capture element screenshot
    sleep    2

User should be able to view Jarvis logo
    wait until element is visible    ${Jarvis_Subaru}
    capture element screenshot
    sleep    2

User should be able to view Jefferson Automotive logo
    wait until element is visible    ${Jefferson_Automotive}
    capture element screenshot
    sleep    2

User should be able to view Eblens Subaru logo
    wait until element is visible    ${Eagers_Automotive}
    capture element screenshot
    sleep    2

User should be able to view Cricks logo
    wait until element is visible    ${Cricks}
    capture element screenshot
    sleep    2

User should be able to view McGrath logo
    wait until element is visible    ${McGrath}
    capture element screenshot
    sleep    2

User should be able to view Rex Gorell logo
    wait until element is visible    ${Rex_Gorell}
    capture element screenshot
    sleep    2

User should be able to view WA Subaru logo
    wait until element is visible    ${WA_Subaru}
    capture element screenshot
    sleep    2

User should be able to view Key Motors Subaru logo
    wait until element is visible    ${KeyMotors_Subaru}
    capture element screenshot
    sleep    2

User should be able to view von Bibra Auto Group logo
    wait until element is visible    ${vonBibra_AutoGroup}
    capture element screenshot
    sleep    2








