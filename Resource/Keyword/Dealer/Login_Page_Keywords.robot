*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary

#Resource  ../../../Resource/testdata/config.robot
Resource  ../../../Resource/testdata/Dealer/Dealer_Variable.robot
Resource  ../../../Resource/testdata/credentials.robot


*** Keywords ***
#-----------------------------------------------------Dealer Login Page-------------------------------------------------
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
#    wait until element is visible    ${NoAccount}    10
#    wait until element is visible    ${CreateAccount}    10
    wait until element is visible    ${FooterLogo}    10
    wait until element is visible    ${PN}    10
    wait until element is visible    ${TnC}    10
    wait until element is visible    ${CopyRight}    10

    capture element screenshot    ${Logo}
    capture element screenshot    ${Header}
    capture element screenshot    ${Email}
    capture element screenshot    ${Pass}
    capture element screenshot    ${Remember}
    capture element screenshot    ${Forgot}
    capture element screenshot    ${LoginButton}
#    capture element screenshot    ${NoAccount}
#    capture element screenshot    ${CreateAccount}
    capture element screenshot    ${FooterLogo}
    capture element screenshot    ${PN}
    capture element screenshot    ${TnC}
    capture element screenshot    ${CopyRight}
    sleep   1

Input Invalid Username
    clear element text    ${Email}
    input text    ${Email}    ${InvalidEmailFormat}
    element should be visible    ${InvalidEmailMessage}
    capture element screenshot    ${Email}
    capture element screenshot    ${InvalidEmailMessage}
    sleep    1

Input Invalid Password
    clear element text    ${Pass}
    input text    ${Pass}    ${InvalidPassFormat}
    capture element screenshot    ${Pass}
    sleep    1

Login Invalid Email and Pass
    clear element text    ${Email}
    clear element text    ${Pass}
    input text    ${Email}    ${InvalidEmail}
    input text    ${Pass}    ${InvalidPass}
    click element    ${LoginButton}
    wait until element is visible    ${InvalidEmailPassMessage}    10
    capture element screenshot    ${InvalidEmailPassMessage}
    sleep    1

Input Valid Username
    clear element text    ${Email}
    input text    ${Email}    ${Username}
    capture element screenshot    ${Email}
    sleep    1

Input Valid Password
    clear element text    ${Pass}
    input text    ${Pass}    ${Password}
    capture element screenshot    ${Pass}
    sleep    1

User should be able to click Login Button
    capture element screenshot    ${LoginButton}
    click element    ${LoginButton}
    sleep    2

Admin User should be able to Login
    wait until element is visible    ${HomepageLogo}    10
    capture element screenshot    ${HomepageLogo}
    wait until element is visible    ${HomepageUserGreeting}    10
    capture element screenshot    ${HomepageUserGreeting}
    capture page screenshot
    sleep    2

User should be able to check/uncheck Remember me
    element should be visible    ${RememberCheck}
    click element    ${RememberCheck}
    capture element screenshot    ${RememberCheck}
    click element    ${RememberCheck}
    capture element screenshot    ${RememberCheck}
    sleep    1


User should be able to Click Forgot Password
    element should be visible    ${forgot}
    click element    ${forgot}
    sleep    5

User should be able to view Reset Password Page
    sleep    1
    capture page screenshot
    wait until element is visible    ${ResetPassHeader}    10
    wait until element is visible    ${ResetPassSubHead}    10
    wait until element is visible    ${ResetPassEmail}    10
    wait until element is visible    ${ResetPassSubmit}    10

    capture element screenshot    ${ResetPassHeader}
    capture element screenshot    ${ResetPassSubHead}
    capture element screenshot    ${ResetPassEmail}
    capture element screenshot    ${ResetPassSubmit}

User should be able input valid email in Dealer Reset Password Page
    wait until element is visible    ${ResetPassEmail}    10
    clear element text    ${ResetPassEmail}
    input text    ${ResetPassEmail}    ${ResetPassValidEmail}
    capture element screenshot    ${ResetPassEmail}
    sleep    2

User should be able to view email error messsage in Dealer Reset Password Page
    wait until element is visible    ${ResetPassEmail}    10
    clear element text    ${ResetPassEmail}
    input text    ${ResetPassEmail}    ${ResetPassInvalidEmail}
    wait until element is visible    ${ResetPassErrorMessage}    10
    capture element screenshot    ${ResetPassErrorMessage}
    sleep    2

User should be able to click submit button in Dealer Reset Password Page
    wait until element is visible    ${ResetPassSubmit}    10
    capture element screenshot    ${ResetPassSubmit}
    click element    ${ResetPassSubmit}
    sleep    2

User should be able to click create account in Dealer Reset Password Page
    wait until element is visible    ${ResetPassCreateAccount}    10
    capture element screenshot    ${ResetPassCreateAccount}
    click element    ${ResetPassCreateAccount}
    sleep    2

User should be able to click Translate to English Button
    ${EN}    run keyword and return status    element should be visible    ${Dealer_HK_LoginPage_English_Button}
    run keyword if    ${EN}    Translate to English

User should be able to click Translate to Chinese Button
    ${CN}    run keyword and return status    element should be visible    ${Dealer_HK_LoginPage_Chinese_Button}
    run keyword if    ${CN}    Translate to Chinese

Translate to English
    wait until element is visible    ${Dealer_HK_LoginPage_English_Button}    10
    capture element screenshot    ${Dealer_HK_LoginPage_English_Button}
    click element    ${Dealer_HK_LoginPage_English_Button}
    sleep    2

Translate to Chinese
    wait until element is visible    ${Dealer_HK_LoginPage_Chinese_Button}    10
    capture element screenshot    ${Dealer_HK_LoginPage_Chinese_Button}
    click element    ${Dealer_HK_LoginPage_Chinese_Button}
    sleep    2