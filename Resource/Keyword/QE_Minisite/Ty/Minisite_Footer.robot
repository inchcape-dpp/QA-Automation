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

User should be able to view Contact Us image
    wait until element is visible    ${ContactUs_Image}
    capture element screenshot
    sleep    2

User should be able to view Let Us Talk
    wait until element is visible    ${LetUsTalk}
    capture element screenshot
    sleep    2

User should be able to view Let Us Talk subtext
    wait until element is visible    ${LetUsTalk_Subtext}
    capture element screenshot
    sleep    2

User should be able to view First name field
    wait until element is visible    ${form_firstname}
    capture element screenshot
    sleep    2

User should be able to view Last name field
    wait until element is visible    ${form_lastname}
    capture element screenshot
    sleep    2

User should be able to view Email address field
    wait until element is visible    ${form_emailaddress}
    capture element screenshot
    sleep    2

User should be able to view the Message box field
    wait until element is visible    ${form_message}
    capture element screenshot
    sleep    2

User should be able to view p
    wait until element is visible    ${form_p}
    capture element screenshot
    sleep    2

User should be able to view Terms of Use
    wait until element is visible    ${form_termsofuse}
    capture element screenshot
    sleep    2

User should be able to view Privacy Policy
    wait until element is visible    ${form_privacypolicy}
    capture element screenshot
    sleep    2

User should be able to input on fields in Contact Us form and submit it
    wait until element is visible    ${form_firstname}
    input text    ${form_firstname}    ${First_Name}
    input text    ${form_lastname}    ${Last_Name}
    input text    ${form_emailaddress}    ${Email_Address}
    input text    ${form_message}    ${message}
    click element    ${form_submit}

User should be able to view Submit button
    wait until element is visible    ${form_submit}
    capture element screenshot
    sleep    2

User should be able to view Footer logo
    wait until element is visible    ${footer_logo}
    capture element screenshot
    sleep    2

User should be able to view Footer Privacy Policy
    wait until element is visible    ${Footer_PP}
    capture element screenshot
    sleep    2

User should be able to view Footer Terms and Conditions
    wait until element is visible    ${Footer_TNC}
    capture element screenshot
    sleep    2

User should be able to view Footer Copyright
    wait until element is visible    ${Footer_Copyright}
    capture element screenshot
    sleep    2













