*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary

#Resource  ../../../Resource/testdata/config.robot
Resource  ../../../Resource/testdata/Dealer/Dealer_Variable.robot
Resource  ../../../Resource/testdata/credentials.robot



*** Keywords ***
#-----------------------------------------------------Dealer Change Pass Page---------------------------------------
User should be able to view change password page
    wait until element is visible    ${ProfileChangePassPanelContainer}    10
    wait until element is visible    ${ProfileChangePassPanelHeader}    10
#    wait until element is visible    ${ProfileChangePassCurrentPassLabel}    10
#    wait until element is visible    ${ProfileChangePassNewPassLabel}    10
#    wait until element is visible    ${ProfileChangePassConfirmPassLabel}    10
#    wait until element is visible    ${ProfileChangePassCurrentPassTextBox}    10
#    wait until element is visible    ${ProfileChangePassNewPassTextBox}    10
#    wait until element is visible    ${ProfileChangePassConfirmPassTextBox}    10
#    wait until element is visible    ${ProfileChangePassNewPassEyeButtonOff}    10
#    wait until element is visible    ${ProfileChangePassConfirmPassEyeButtonOff}    10
#    wait until element is visible    ${ProfileChangePassCancelButton}    10
#    wait until element is visible    ${ProfileChangePassUpdateButton}    10

    capture element screenshot    ${ProfileChangePassPanelContainer}
#    capture element screenshot    ${ProfileChangePassPanelHeader}
#    capture element screenshot    ${ProfileChangePassCurrentPassLabel}    10
#    capture element screenshot    ${ProfileChangePassNewPassLabel}    10
#    capture element screenshot    ${ProfileChangePassConfirmPassLabel}    10
#    capture element screenshot    ${ProfileChangePassCurrentPassTextBox}    10
#    capture element screenshot    ${ProfileChangePassNewPassTextBox}    10
#    capture element screenshot    ${ProfileChangePassConfirmPassTextBox}    10
#    capture element screenshot    ${ProfileChangePassNewPassEyeButtonOff}    10
#    capture element screenshot    ${ProfileChangePassConfirmPassEyeButtonOff}    10
#    capture element screenshot    ${ProfileChangePassCancelButton}    10
#    capture element screenshot    ${ProfileChangePassUpdateButton}    10

User should be ablle to edit current password in Dealer Change Pass Page
    clear element text    ${ProfileChangePassCurrentPassTextBox}
    input text    ${ProfileChangePassCurrentPassTextBox}    ${ProfileChangePassCurrentPassValue}
    capture element screenshot    ${ProfileChangePassCurrentPassTextBox}
    sleep    2

User should be ablle to edit new password in Dealer Change Pass Page
    clear element text    ${ProfileChangePassNewPassTextBox}
    input text    ${ProfileChangePassNewPassTextBox}    ${ProfileChangePassNewPassValue}
    capture element screenshot    ${ProfileChangePassNewPassTextBox}
    sleep    2

User should be ablle to edit confirm password in Dealer Change Pass Page
    clear element text    ${ProfileChangePassConfirmPassTextBox}
    input text    ${ProfileChangePassConfirmPassTextBox}    ${ProfileChangePassConfirmPassValue}
    capture element screenshot    ${ProfileChangePassConfirmPassTextBox}
    sleep    2

User should be able to view new pass by clicking eye button in Dealer Change Pass Page
    wait until element is visible    ${ProfileChangePassNewPassEyeButtonOff}    10
    capture element screenshot    ${ProfileChangePassNewPassEyeButtonOff}
    click element    ${ProfileChangePassNewPassEyeButtonOff}
    sleep    2

User should be able to view confirm pass by clicking eye button in Dealer Change Pass Page
    wait until element is visible    ${ProfileChangePassConfirmPassEyeButtonOff}    10
    capture element screenshot    ${ProfileChangePassConfirmPassEyeButtonOff}
    click element    ${ProfileChangePassConfirmPassEyeButtonOff}
    sleep    2

User should be able to hide new pass by clicking eye button in Dealer Change Pass Page
    wait until element is visible    ${ProfileChangePassNewPassEyeButtonOn}    10
    capture element screenshot    ${ProfileChangePassNewPassEyeButtonOn}
    click element    ${ProfileChangePassNewPassEyeButtonOn}
    sleep    2

User should be able to hide confirm pass by clicking eye button in Dealer Change Pass Page
    wait until element is visible    ${ProfileChangePassConfirmPassEyeButtonOn}    10
    capture element screenshot    ${ProfileChangePassConfirmPassEyeButtonOn}
    click element    ${ProfileChangePassConfirmPassEyeButtonOn}
    sleep    2

User should be able to click Cancel button in Dealer Change Pass Page
    wait until element is visible    ${ProfileChangePassCancelButton}    10
    capture element screenshot    ${ProfileChangePassCancelButton}
    click element    ${ProfileChangePassCancelButton}
    sleep    2

User should be able to click Update button in Dealer Change Pass Page
    wait until element is visible    ${ProfileChangePassUpdateButton}    10
    capture element screenshot    ${ProfileChangePassUpdateButton}
    click element    ${ProfileChangePassUpdateButton}
    sleep    2

User should be able to view update confirmation modal in Dealer Change Pass Page
    wait until element is visible    ${ProfileChangePassConfirmationContainer}    10
    capture element screenshot    ${ProfileChangePassConfirmationContainer}
    sleep    2

User should be able to click Yes on update confirmation modal in Dealer Change Pass Page
    wait until element is visible    ${ProfileChangePassConfirmationYesButton}    10
    capture element screenshot    ${ProfileChangePassConfirmationYesButton}
    click element    ${ProfileChangePassConfirmationYesButton}
    sleep    2

User should be able to click No on update confirmation modal in Dealer Change Pass Page
    wait until element is visible    ${ProfileChangePassConfirmationNoButton}    10
    capture element screenshot    ${ProfileChangePassConfirmationNoButton}
    click element    ${ProfileChangePassConfirmationNoButton}
    sleep    2

User should be able to view current pass required error in Dealer Change Pass Page
    click element    ${ProfileChangePassCurrentPassTextBox}
    click element    ${ProfileChangePassUpdateButton}
    wait until element is visible    ${ProfileChangePassCurrentPassRequiredError}    10
    capture element screenshot    ${ProfileChangePassCurrentPassRequiredError}
    sleep    2

User should be able to view new pass required error in Dealer Change Pass Page
    click element    ${ProfileChangePassNewPassTextBox}
    click element    ${ProfileChangePassUpdateButton}
    wait until element is visible    ${ProfileChangePassNewPassRequiredError}    10
    capture element screenshot    ${ProfileChangePassNewPassRequiredError}
    sleep    2

User should be able to view confirm pass required error in Dealer Change Pass Page
    click element    ${ProfileChangePassConfirmPassTextBox}
    click element    ${ProfileChangePassUpdateButton}
    wait until element is visible    ${ProfileChangePassConfirmPassRequiredError}    10
    capture element screenshot    ${ProfileChangePassConfirmPassRequiredError}
    sleep    2

User should be able to view new pass not match error in Dealer Change Pass Page
    clear element text    ${ProfileChangePassNewPassTextBox}
    input text    ${ProfileChangePassNewPassTextBox}    ${ProfileChangePassNewPassInvalidValue}
    wait until element is visible    ${ProfileChangePassNewPassNotMatchError}    10
    capture element screenshot    ${ProfileChangePassNewPassNotMatchError}
    sleep    2

User should be able to view confirm pass not match error in Dealer Change Pass Page
    clear element text    ${ProfileChangePassConfirmPassTextBox}
    input text    ${ProfileChangePassConfirmPassTextBox}    ${ProfileChangePassConfirmPassInvalidValue}
    wait until element is visible    ${ProfileChangePassConfirmPassNotMatchError}    10
    capture element screenshot    ${ProfileChangePassConfirmPassNotMatchError}
    sleep    2








