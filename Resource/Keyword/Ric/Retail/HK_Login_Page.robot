*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary
Library  String

Resource  ../../../../Resource/testdata/config.robot
Resource  ../../../../Resource/testdata/Ric/Retail/Ric_Retail_Variable.robot
Resource  ../../../../Resource/testdata/credentials.robot


*** Keywords ***
#-----------------------------------------------------Retail Login Page-------------------------------------------------
Verify Login Page
    sleep    10
    capture page screenshot

Verify Login Page Elements
    wait until element is visible    ${Logo}    10
    wait until element is visible    ${Header}    10
    wait until element is visible    ${Email}    10
    wait until element is visible    ${Pass}    10
    wait until element is visible    ${Remember}    10
    wait until element is visible    ${Forgot}    10
    wait until element is visible    ${LoginButton}    10
    wait until element is visible    ${NoAccount}    10
    wait until element is visible    ${CreateAccount}    10
    wait until element is visible    ${FooterLogo}    10
    wait until element is visible    ${SP}    10
    wait until element is visible    ${PN}    10
    wait until element is visible    ${Tnc}    10
    wait until element is visible    ${2023}    10
    wait until element is visible    ${AboutUs}    10
    wait until element is visible    ${FAQ}    10
    wait until element is visible    ${ContactUs}    10

    capture element screenshot     ${Logo}
    capture element screenshot     ${Header}
    capture element screenshot     ${Email}
    capture element screenshot     ${Pass}
    capture element screenshot     ${Remember}
    capture element screenshot     ${Forgot}
    capture element screenshot     ${LoginButton}
    capture element screenshot     ${NoAccount}
    capture element screenshot     ${CreateAccount}
    capture element screenshot     ${FooterLogo}
    capture element screenshot     ${SP}
    capture element screenshot     ${PN}
    capture element screenshot    ${Tnc}
    capture element screenshot     ${2023}
    capture element screenshot     ${AboutUs}
    capture element screenshot     ${FAQ}
    capture element screenshot    ${ContactUs}
    sleep   2

Input Invalid Username
    clear element text    ${Email}
    input text    ${Email}    ${InvalidUser}
    wait until element is visible    ${InvalidEmailMessage}    10
    capture element screenshot    ${Email}
    capture element screenshot    ${InvalidEmailMessage}
    sleep    2

Input Invalid Username and Password
    clear element text    ${Email}
    input text    ${Email}    ${InvalidEmail}
    clear element text    ${Pass}
    input text    ${Pass}     ${InvalidPass}
    click element     ${LoginButton}
    wait until element is visible    ${InvalidEmailPassMessage}      10
    capture element screenshot    ${InvalidEmailPassMessage}
    sleep    2

Forgot Password invalid username
    click element    ${Forgot}
    sleep    2
    wait until element is visible    ${ForgotHeader}    10
    input text    ${Email}    ${InvalidUser}
    wait until element is visible    ${InvalidForgotEmailMessage}      10
    go back
    sleep    2

Verify Create Acccount
    click element    ${CreateAccount}
    wait until element is visible    ${JPL}    10
    wait until element is visible    ${CompanyName}    10
    wait until element is visible    ${CMField}    10
    wait until element is visible    ${PostalAddress}    10
    wait until element is visible    ${PAField}    10
    wait until element is visible    ${AddressLine1}    10
    wait until element is visible    ${AL1Field}    10
    wait until element is visible    ${Area1}    10
    wait until element is visible    ${AF1ield}    10
    wait until element is visible    ${District1}    10
    wait until element is visible    ${DistrictField1}    10
    wait until element is visible    ${DeliveryAddressPostal}    10
    wait until element is visible    ${DeliveryCheckBox}    10
    wait until element is visible    ${DeliveryAddress}    10
    wait until element is visible    ${DeliveryField}    10
    wait until element is visible    ${AddressLine2}    10
    wait until element is visible    ${AL2Field}    10
    wait until element is visible    ${Area2}    10
    wait until element is visible    ${AF1ield2}    10
    wait until element is visible    ${District2}    10
    wait until element is visible    ${District1Field2}    10
    wait until element is visible    ${OpeningHours}    10
    wait until element is visible    ${OHField}    10
    wait until element is visible    ${ClosingHours}    10
    wait until element is visible    ${CHField}     10
    wait until element is visible    ${FirstName}    10
    wait until element is visible    ${FNfield}    10
    wait until element is visible    ${LastName}    10
    wait until element is visible    ${LNField}    10
    wait until element is visible    ${EmailAddress}    10
    wait until element is visible    ${EAField}    10
    wait until element is visible    ${ContactNumber}    10
    wait until element is visible    ${CNField}    10
    wait until element is visible    ${LandlineNumber}    10
    wait until element is visible    ${LNField}    10
    wait until element is visible    ${Condition}    10
    wait until element is visible    ${ConditionBox}    10
    wait until element is visible    ${Submit}    10

    capture element screenshot    ${JPL}
    capture element screenshot    ${CompanyName}
    capture element screenshot    ${CMField}
    capture element screenshot    ${PostalAddress}
    capture element screenshot    ${PAField}
    capture element screenshot    ${AddressLine1}
    capture element screenshot    ${AL1Field}
    capture element screenshot    ${Area1}
    capture element screenshot    ${AF1ield}
    capture element screenshot    ${District1}
    capture element screenshot    ${DistrictField1}
    capture element screenshot    ${DeliveryAddressPostal}
    capture element screenshot    ${DeliveryCheckBox}
    capture element screenshot    ${DeliveryAddress}
    capture element screenshot    ${DeliveryField}
    capture element screenshot    ${AddressLine2}
    capture element screenshot    ${AL2Field}
    capture element screenshot    ${Area2}
    capture element screenshot    ${AF1ield2}
    capture element screenshot    ${District2}
    capture element screenshot    ${District1Field2}
    capture element screenshot    ${OpeningHours}
    capture element screenshot    ${OHField}
    capture element screenshot    ${ClosingHours}
    capture element screenshot    ${CHField}
    capture element screenshot    ${FirstName}
    capture element screenshot    ${FNfield}
    capture element screenshot    ${LastName}
    capture element screenshot    ${LNField}
    capture element screenshot    ${EmailAddress}
    capture element screenshot    ${EAField}
    capture element screenshot    ${ContactNumber}
    capture element screenshot    ${CNField}
    capture element screenshot    ${LandlineNumber}
    capture element screenshot    ${LNField}
    capture element screenshot    ${Condition}
    capture element screenshot    ${ConditionBox}
    capture element screenshot    ${Submit}

    select frame    ${CaptchaFrame}
    wait until element is visible    ${ImnotRobotBox}    10
    capture element screenshot    ${ImnotRobotBox}
    unselect frame
    go back
    sleep    2

Verify footer links
    click element    ${AboutUs}
    wait until element is visible    ${AboutUSId}    10
    capture page screenshot
    go back
    click element    ${FAQ}
    wait until element is visible  ${ContactUsId}    10
    capture page screenshot
    go back
    click element    ${ShippingPolicyPage}
    wait until element is visible    ${ShippingId}    10
    capture page screenshot
    go back
    click element    ${PrivacyPage}
    wait until element is visible    ${PrivacyId}
    capture page screenshot
    go back
    click element    ${T&CPage}
    wait until element is visible    ${T&CId}
    capture page screenshot
    go back
    sleep    2


