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

User should be able to view Our Suppliers elements
    wait until element is visible    ${Our_Supplier}    2
    wait until element is visible    ${Suttons}    2
    wait until element is visible    ${Eagers_Automotive}    2
    wait until element is visible    ${Jarvis_Subaru}    2
    wait until element is visible    ${Jefferson_Automotive}    2
    wait until element is visible    ${Eagers_Automotive}    2
    wait until element is visible    ${Cricks}    2
    wait until element is visible    ${McGrath}    2
    wait until element is visible    ${Rex_Gorell}    2
    wait until element is visible    ${WA_Subaru}    2
    wait until element is visible    ${KeyMotors_Subaru}    2
    wait until element is visible    ${vonBibra_AutoGroup}    2


User should be able to view Let Us Talk elements
    wait until element is visible    ${ContactUs_Image}    2
    wait until element is visible    ${LetUsTalk}    2
    wait until element is visible    ${LetUsTalk_Subtext}    2
    wait until element is visible    ${form_firstname}    2
    wait until element is visible    ${form_lastname}    2
    wait until element is visible    ${form_emailaddress}    2
    wait until element is visible    ${form_message}    2
    wait until element is visible    ${form_p}    2
    wait until element is visible    ${form_termsofuse}    2
    wait until element is visible    ${form_privacypolicy}    2
    wait until element is visible    ${form_submit}    2


User should be able to input on fields in Contact Us form and submit it
    wait until element is visible    ${form_firstname}
    input text    ${form_firstname}    ${First_Name}
    input text    ${form_lastname}    ${Last_Name}
    input text    ${form_emailaddress}    ${Email_Address}
    input text    ${form_message}    ${message}
    click element    ${form_submit}


User should be able to view Footer
    wait until element is visible    ${footer_logo}    2
    wait until element is visible    ${Footer_PP}    2
    wait until element is visible    ${Footer_TNC}    2
    wait until element is visible    ${Footer_Copyright}    2














