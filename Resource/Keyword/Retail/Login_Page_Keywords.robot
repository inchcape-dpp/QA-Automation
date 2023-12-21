*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary
Library  String

Resource  ../../../Resource/testdata/config.robot
Resource  ../../../Resource/testdata/Retail/Retail_Variable.robot
Resource  ../../../Resource/testdata/credentials.robot


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
    capture element screenshot    ${NoAccount}
    capture element screenshot    ${CreateAccount}
    capture element screenshot    ${FooterLogo}
    capture element screenshot    ${PN}
    capture element screenshot    ${TnC}
    capture element screenshot    ${CopyRight}
    sleep   2

Input Invalid Username
    clear element text    ${Email}
    input text    ${Email}    ${InvalidEmailFormat}
    wait until element is visible    ${InvalidEmailMessage}    10
    capture element screenshot    ${Email}
    capture element screenshot    ${InvalidEmailMessage}
    sleep    2

Input Invalid Password
    clear element text    ${Pass}
    input text    ${Pass}    ${InvalidPassFormat}
    capture element screenshot    ${Pass}
    sleep    2

User should not be able to login using invalid account
    clear element text    ${Email}
    input text    ${Email}    ${InvalidEmail}
    clear element text    ${Pass}
    input text    ${Pass}    ${InvalidPass}
    click element    ${LoginButton}
    wait until element is visible    ${InvalidEmailPassMessage}    10
    capture element screenshot    ${InvalidEmailPassMessage}
    sleep    2

Input Valid Username
    clear element text    ${Email}
    input text    ${Email}    ${Username}
    capture element screenshot    ${Email}
    sleep    2

Input Valid Password
    clear element text    ${Pass}
    input text    ${Pass}    ${Password}
    capture element screenshot    ${Pass}
    sleep    2

User should be able to click Login Button
    capture element screenshot    ${LoginButton}
    click element    ${LoginButton}
    sleep    2

User should be able to check/uncheck Remember me in Retail Login Page
    wait until element is visible    ${RememberCheck}    10
    click element    ${RememberCheck}
    capture element screenshot    ${RememberCheck}
    sleep    2

User should be able to click Forgot Password in Retail Login Page
    wait until element is visible    ${Forgot}    10
    capture element screenshot    ${Forgot}
    click element    ${Forgot}
    sleep    2

User should be able to click Create Account in Retail Login Page
    wait until element is visible    ${CreateAccount}    10
    capture element screenshot    ${CreateAccount}
    click element    ${CreateAccount}
    sleep    2

User should be able to view Forgot Password Page in Retail Forgot Password Page
    wait until element is visible    ${Retail_ForgotPasswordPageContainer}    10
    wait until element is visible    ${Retail_ForgotPasswordPageLogo}
    wait until element is visible    ${Retail_ForgotPasswordPageHeader}
    wait until element is visible    ${Retail_ForgotPasswordPageSubheader}
    wait until element is visible    ${Retail_ForgotPasswordPageEmailTextBox}
    wait until element is visible    ${Retail_ForgotPasswordPageSubmitButton}
    wait until element is visible    ${Retail_ForgotPasswordPageCreateAccountButton}

    capture element screenshot    ${Retail_ForgotPasswordPageContainer}
    capture element screenshot    ${Retail_ForgotPasswordPageLogo}
    capture element screenshot    ${Retail_ForgotPasswordPageHeader}
    capture element screenshot    ${Retail_ForgotPasswordPageSubheader}
    capture element screenshot    ${Retail_ForgotPasswordPageEmailTextBox}
    capture element screenshot    ${Retail_ForgotPasswordPageSubmitButton}
    capture element screenshot    ${Retail_ForgotPasswordPageCreateAccountButton}

    sleep    2

User should be able to Input Valid Email Address in Retail Forgot Password Page
    wait until element is visible    ${Retail_ForgotPasswordPageEmailTextBox}    10
    clear element text    ${Retail_ForgotPasswordPageEmailTextBox}
    input text    ${Retail_ForgotPasswordPageEmailTextBox}    ${Username}
    capture element screenshot    ${Retail_ForgotPasswordPageEmailTextBox}
    sleep    2

User should be albe to view Error Message in Retail Forgot Password Page
    wait until element is visible    ${Retail_ForgotPasswordPageEmailTextBox}    10
    clear element text    ${Retail_ForgotPasswordPageEmailTextBox}
    input text    ${Retail_ForgotPasswordPageEmailTextBox}    ${InvalidEmailFormat}
    wait until element is visible    ${Retail_ForgotPasswordPageEmailErrorMessage}    10
    capture element screenshot    ${Retail_ForgotPasswordPageEmailErrorMessage}
    sleep    2

User should be able to click Create Account in Retail Forgot Password Page
    wait until element is visible    ${Retail_ForgotPasswordPageCreateAccountButton}    10
    capture element screenshot    ${Retail_ForgotPasswordPageCreateAccountButton}
    click element    ${Retail_ForgotPasswordPageCreateAccountButton}
    sleep    2

User should be albe to click Submit Button in Retail Forgot Password Page
    wait until element is visible    ${Retail_ForgotPasswordPageSubmitButton}    10
    capture element screenshot    ${Retail_ForgotPasswordPageSubmitButton}
    click element    ${Retail_ForgotPasswordPageSubmitButton}
    sleep    2

User should be able to click Translate to English Button
    wait until element is visible    ${Retail_HK_LoginPage_English_Button}    10
    capture element screenshot    ${Retail_HK_LoginPage_English_Button}
    click element    ${Retail_HK_LoginPage_English_Button}
    sleep    2

User should be able to click Translate to Chinese Button
    wait until element is visible    ${Retail_HK_LoginPage_Chinese_Button}    10
    capture element screenshot    ${Retail_HK_LoginPage_Chinese_Button}
    click element    ${Retail_HK_LoginPage_Chinese_Button}
    sleep    2
