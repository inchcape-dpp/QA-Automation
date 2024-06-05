*** Settings ***
Documentation    Suite description

Library    SeleniumLibrary

#Resource    ../../../Resource/testdata/config.robot
Resource    ../../../Resource/testdata/Retail/Retail_Variable.robot
Resource    ../../../Resource/testdata/credentials.robot


*** Keywords ***
#-----------------------------------------------------Retail Account Change Pass Page---------------------------------------
User should be able to view change password page
    wait until element is visible    ${Retail_AccountpageProfileMenu}    10
    click element    ${Retail_AccountpageProfileMenu}
    wait until element is visible    ${AccountpageProfileChangePass}    10
    click element    ${AccountpageProfileChangePass}
    wait until element is visible    ${Retail_AccountProfileChangePassPanelContainer}    10
    wait until element is visible    ${Retail_AccountProfileChangePassPanelHeader}    10
    wait until element is visible    ${Retail_AccountProfileChangePassCurrentPassLabel}    10
    wait until element is visible    ${Retail_AccountProfileChangePassNewPassLabel}    10
    wait until element is visible    ${Retail_AccountProfileChangePassConfirmPassLabel}    10
    wait until element is visible    ${Retail_AccountProfileChangePassCurrentPassTextBox}    10
    wait until element is visible    ${Retail_AccountProfileChangePassNewPassTextBox}    10
    wait until element is visible    ${Retail_AccountProfileChangePassConfirmPassTextBox}    10
    wait until element is visible    ${Retail_AccountProfileChangePassNewPassEyeButtonOff}    10
    wait until element is visible    ${Retail_AccountProfileChangePassConfirmPassEyeButtonOff}    10
    wait until element is visible    ${Retail_AccountProfileChangePassCancelButton}    10
    wait until element is visible    ${Retail_AccountProfileChangePassUpdateButton}    10

    capture element screenshot    ${Retail_AccountProfileChangePassPanelContainer}
    capture element screenshot    ${Retail_AccountProfileChangePassPanelHeader}
    capture element screenshot    ${Retail_AccountProfileChangePassCurrentPassLabel}
    capture element screenshot    ${Retail_AccountProfileChangePassNewPassLabel}
    capture element screenshot    ${Retail_AccountProfileChangePassConfirmPassLabel}
    capture element screenshot    ${Retail_AccountProfileChangePassCurrentPassTextBox}
    capture element screenshot    ${Retail_AccountProfileChangePassNewPassTextBox}
    capture element screenshot    ${Retail_AccountProfileChangePassConfirmPassTextBox}
    capture element screenshot    ${Retail_AccountProfileChangePassNewPassEyeButtonOff}
    capture element screenshot    ${Retail_AccountProfileChangePassConfirmPassEyeButtonOff}
    capture element screenshot    ${Retail_AccountProfileChangePassCancelButton}
    capture element screenshot    ${Retail_AccountProfileChangePassUpdateButton}

    sleep    2

User should be ablle to edit current password in Retail Account Change Pass Page
    clear element text    ${Retail_AccountProfileChangePassCurrentPassTextBox}
    input text    ${Retail_AccountProfileChangePassCurrentPassTextBox}    ${Retail_AccountProfileChangePassCurrentPassValue}
    capture element screenshot    ${Retail_AccountProfileChangePassCurrentPassTextBox}
    sleep    2

User should be ablle to edit new password in Retail Account Change Pass Page
    clear element text    ${Retail_AccountProfileChangePassNewPassTextBox}
    input text    ${Retail_AccountProfileChangePassNewPassTextBox}    ${Retail_AccountProfileChangePassNewPassValue}
    capture element screenshot    ${Retail_AccountProfileChangePassNewPassTextBox}
    sleep    2

User should be ablle to edit confirm password in Retail Account Change Pass Page
    clear element text    ${Retail_AccountProfileChangePassConfirmPassTextBox}
    input text    ${Retail_AccountProfileChangePassConfirmPassTextBox}    ${Retail_AccountProfileChangePassConfirmPassValue}
    capture element screenshot    ${Retail_AccountProfileChangePassConfirmPassTextBox}
    sleep    2

User should be able to view new pass by clicking eye button in Retail Account Change Pass Page
    wait until element is visible    ${Retail_AccountProfileChangePassNewPassEyeButtonOff}    10
    capture element screenshot    ${Retail_AccountProfileChangePassNewPassEyeButtonOff}
    click element    ${Retail_AccountProfileChangePassNewPassEyeButtonOff}
    sleep    2

User should be able to view confirm pass by clicking eye button in Retail Account Change Pass Page
    wait until element is visible    ${Retail_AccountProfileChangePassConfirmPassEyeButtonOff}    10
    capture element screenshot    ${Retail_AccountProfileChangePassConfirmPassEyeButtonOff}
    click element    ${Retail_AccountProfileChangePassConfirmPassEyeButtonOff}
    sleep    2

User should be able to hide new pass by clicking eye button in Retail Account Change Pass Page
    wait until element is visible    ${Retail_AccountProfileChangePassNewPassEyeButtonOn}    10
    capture element screenshot    ${Retail_AccountProfileChangePassNewPassEyeButtonOn}
    click element    ${Retail_AccountProfileChangePassNewPassEyeButtonOn}
    sleep    2

User should be able to hide confirm pass by clicking eye button in Retail Account Change Pass Page
    wait until element is visible    ${Retail_AccountProfileChangePassConfirmPassEyeButtonOn}    10
    capture element screenshot    ${Retail_AccountProfileChangePassConfirmPassEyeButtonOn}
    click element    ${Retail_AccountProfileChangePassConfirmPassEyeButtonOn}
    sleep    2

User should be able to click Cancel button in Retail Account Change Pass Page
    wait until element is visible    ${Retail_AccountProfileChangePassCancelButton}    10
    capture element screenshot    ${Retail_AccountProfileChangePassCancelButton}
    click element    ${Retail_AccountProfileChangePassCancelButton}
    sleep    2

User should be able to click Update button in Retail Account Change Pass Page
    wait until element is visible    ${Retail_AccountProfileChangePassUpdateButton}    10
    capture element screenshot    ${Retail_AccountProfileChangePassUpdateButton}
    click element    ${Retail_AccountProfileChangePassUpdateButton}
    sleep    2

User should be able to view update confirmation modal in Retail Account Change Pass Page
    wait until element is visible    ${Retail_AccountProfileChangePassConfirmationContainer}    10
    capture element screenshot    ${Retail_AccountProfileChangePassConfirmationContainer}
    sleep    2

User should be able to click Yes on update confirmation modal in Retail Account Change Pass Page
    wait until element is visible    ${Retail_AccountProfileChangePassConfirmationYesButton}    10
    capture element screenshot    ${Retail_AccountProfileChangePassConfirmationYesButton}
    click element    ${Retail_AccountProfileChangePassConfirmationYesButton}
    sleep    2

User should be able to click No on update confirmation modal in Retail Account Change Pass Page
    wait until element is visible    ${Retail_AccountProfileChangePassConfirmationNoButton}    10
    capture element screenshot    ${Retail_AccountProfileChangePassConfirmationNoButton}
    click element    ${Retail_AccountProfileChangePassConfirmationNoButton}
    sleep    2

User should be able to view current pass required error in Retail Account Change Pass Page
#    input text    ${Retail_AccountProfileChangePassCurrentPassTextBox}    ${Retail_AccountProfileChangePassNewPassInvalidValue}
    clear element text    ${Retail_AccountProfileChangePassCurrentPassTextBox}
    double click element    ${Retail_AccountProfileChangePassCurrentPassTextBox}
    click element    ${Retail_AccountProfileChangePassPanelHeader}
    wait until element is visible    ${Retail_AccountProfileChangePassCurrentPassRequiredError}    10
    capture element screenshot    ${Retail_AccountProfileChangePassCurrentPassRequiredError}
    sleep    2

User should be able to view new pass required error in Retail Account Change Pass Page
#    input text    ${Retail_AccountProfileChangePassNewPassTextBox}    ${Retail_AccountProfileChangePassNewPassInvalidValue}
    clear element text    ${Retail_AccountProfileChangePassNewPassTextBox}
    double click element    ${Retail_AccountProfileChangePassNewPassTextBox}
    click element    ${Retail_AccountProfileChangePassNewPassEyeButtonOff}
    wait until element is visible    ${Retail_AccountProfileChangePassNewPassRequiredError}    10
    capture element screenshot    ${Retail_AccountProfileChangePassNewPassRequiredError}
    sleep    2

User should be able to view confirm pass required error in Retail Account Change Pass Page
#    input text    ${Retail_AccountProfileChangePassConfirmPassTextBox}    ${Retail_AccountProfileChangePassNewPassInvalidValue}
    clear element text    ${Retail_AccountProfileChangePassConfirmPassTextBox}
    double click element    ${Retail_AccountProfileChangePassConfirmPassTextBox}
    click element    ${Retail_AccountProfileChangePassConfirmPassEyeButtonOff}
    wait until element is visible    ${Retail_AccountProfileChangePassConfirmPassRequiredError}    10
    capture element screenshot    ${Retail_AccountProfileChangePassConfirmPassRequiredError}
    sleep    2

User should be able to view new pass not match error in Retail Account Change Pass Page
    clear element text    ${Retail_AccountProfileChangePassNewPassTextBox}
    input text    ${Retail_AccountProfileChangePassNewPassTextBox}    ${Retail_AccountProfileChangePassNewPassInvalidValue}
    wait until element is visible    ${Retail_AccountProfileChangePassNewPassNotMatchError}    10
    capture element screenshot    ${Retail_AccountProfileChangePassNewPassNotMatchError}
    sleep    2

User should be able to view confirm pass not match error in Retail Account Change Pass Page
    clear element text    ${Retail_AccountProfileChangePassConfirmPassTextBox}
    input text    ${Retail_AccountProfileChangePassConfirmPassTextBox}    ${Retail_AccountProfileChangePassConfirmPassInvalidValue}
    wait until element is visible    ${Retail_AccountProfileChangePassConfirmPassNotMatchError}    10
    capture element screenshot    ${Retail_AccountProfileChangePassConfirmPassNotMatchError}
    sleep    2
