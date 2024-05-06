*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary
Library  String

Resource  ../../../../Resource/testdata/config.robot
Resource  ../../../../Resource/testdata/QEMiniSIte/Ric/MiniSite_Variable.robot
Resource  ../../../../Resource/testdata/credentials.robot


*** Keywords ***
#-----------------------------------------------------Retail Login Page-------------------------------------------------
Verify Minisite Page
    sleep    10
    capture page screenshot

Verify Why Choose Us elements
  wait until element is visible    ${$Why}    10
  wait until element is visible    ${WhyLogo}    10
  wait until element is visible    ${Fast}     10
  wait until element is visible    ${FastContent}    10
  wait until element is visible    ${Quick}    10
  wait until element is visible    ${QuickContent}    10
  wait until element is visible    ${Click}    10
  wait until element is visible    ${ClickContent}    10
  wait until element is visible    ${Guaranteed}    10
  wait until element is visible    ${GuaranteedContent}    10

  capture element screenshot     ${$Why}
  capture element screenshot     ${WhyLogo}
  capture element screenshot     ${Fast}
  capture element screenshot     ${FastContent}
  capture element screenshot     ${Quick}
  capture element screenshot     ${QuickContent}
  capture element screenshot     ${Click}
  capture element screenshot     ${ClickContent}
  capture element screenshot     ${Guaranteed}
  capture element screenshot     ${GuaranteedContent}

Verify How it Works elements
  wait until element is visible    ${HowItWorks}    10
  wait until element is visible    ${SelectVehicle1}    10
  wait until element is visible    ${SelectGenuine1}    10
  wait until element is visible    ${ToOrder1}    10
  wait until element is visible    ${Receive1}    10
  scroll element into view     ${HowItWorksSection}
  click element    ${SelectVehicle1}
  wait until element is visible    ${SelectVehicle2}  10
  wait until element is visible    ${SelectVehicleContent}    10
  wait until element is visible    ${SelectVehicleContent}    10
  capture element screenshot     ${SelectVehicle2}
  capture element screenshot    ${SelectVehicleContent}
  capture element screenshot    ${SelectVehicleImg}
  click element    ${SelectGenuine1}
  wait until element is visible    ${SelectGenuine2}    10
  wait until element is visible    ${SelectGenuineContent}    10
  wait until element is visible    ${SelectGenuineImg}    10
  capture element screenshot     ${SelectGenuine2}
  capture element screenshot    ${SelectGenuineContent}
  capture element screenshot    ${SelectGenuineImg}
  click element    ${ToOrder1}
  wait until element is visible    ${ToOrder2}    10
  wait until element is visible    ${ToOrderContent}    10
  wait until element is visible    ${ToOrderImg}    10
  capture element screenshot     ${ToOrder2}
  capture element screenshot    ${ToOrderContent}
  capture element screenshot     ${ToOrderImg}
  click element    ${Receive1}
  wait until element is visible    ${Receive2}    10
  wait until element is visible    ${ReceiveContent}    10
  wait until element is visible    ${ReceiveImg}    10
  wait until element is visible    ${RegisterButton}    10
  capture element screenshot    ${Receive2}
  capture element screenshot     ${ReceiveContent}
  capture element screenshot     ${ReceiveImg}

  capture element screenshot     ${HowItWorks}
  capture element screenshot     ${SelectVehicle1}
  capture element screenshot     ${SelectGenuine1}
  capture element screenshot     ${ToOrder1}
  capture element screenshot     ${Receive1}
  capture element screenshot     ${RegisterButton}

Click register button
  click element     ${RegisterButton}

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
