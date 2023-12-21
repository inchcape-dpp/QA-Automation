*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary

Resource  ../../../Resource/testdata/config.robot
Resource  ../../../Resource/testdata/Dealer/Dealer_Variable.robot
Resource  ../../../Resource/testdata/credentials.robot



*** Keywords ***
#-----------------------------------------------------Dealer Account Details Page---------------------------------------
User should be able to view account details page
    wait until element is visible    ${ProfileAccountsDetailsPanelContainer}    10
    wait until element is visible    ${ProfileAccountsDetailsPanelHeader}    10
    wait until element is visible    ${ProfileAccountsDetailsFirstNameLabel}    10
    wait until element is visible    ${ProfileAccountsDetailsLastNameLabel}    10
    wait until element is visible    ${ProfileAccountsDetailsEmailLabel}    10
    wait until element is visible    ${ProfileAccountsDetailsPhoneLabel}    10
    wait until element is visible    ${ProfileAccountsDetailsLandlineLabel}    10
    wait until element is visible    ${ProfileAccountsDetailsFirstNameTextBox}    10
    wait until element is visible    ${ProfileAccountsDetailsLastNameTextBox}    10
    wait until element is visible    ${ProfileAccountsDetailsEmailTextBox}    10
    wait until element is visible    ${ProfileAccountsDetailsPhoneTextBox}    10
    wait until element is visible    ${ProfileAccountsDetailsLandlineTextBox}    10
    wait until element is visible    ${ProfileAccountsDetailsCancelButton}    10
    wait until element is visible    ${ProfileAccountsDetailsUpdateButton}    10

    capture element screenshot    ${ProfileAccountsDetailsPanelContainer}
    capture element screenshot    ${ProfileAccountsDetailsFirstNameLabel}
    capture element screenshot    ${ProfileAccountsDetailsLastNameLabel}
    capture element screenshot    ${ProfileAccountsDetailsEmailLabel}
    capture element screenshot    ${ProfileAccountsDetailsPhoneLabel}
    capture element screenshot    ${ProfileAccountsDetailsLandlineLabel}
    capture element screenshot    ${ProfileAccountsDetailsFirstNameTextBox}
    capture element screenshot    ${ProfileAccountsDetailsLastNameTextBox}
    capture element screenshot    ${ProfileAccountsDetailsEmailTextBox}
    capture element screenshot    ${ProfileAccountsDetailsPhoneTextBox}
    capture element screenshot    ${ProfileAccountsDetailsLandlineTextBox}
    capture element screenshot    ${ProfileAccountsDetailsCancelButton}
    capture element screenshot    ${ProfileAccountsDetailsUpdateButton}

User should be able to edit First name in Dealer Account Details Page
    clear element text    ${ProfileAccountsDetailsFirstNameTextBox}
    input text    ${ProfileAccountsDetailsFirstNameTextBox}    ${ProfileAccountsDetailsFirstNameValue}
    capture element screenshot    ${ProfileAccountsDetailsFirstNameTextBox}
    sleep    2

User should be able to edit Last name in Dealer Account Details Page
    clear element text    ${ProfileAccountsDetailsLastNameTextBox}
    input text    ${ProfileAccountsDetailsLastNameTextBox}    ${ProfileAccountsDetailsLastNameValue}
    capture element screenshot    ${ProfileAccountsDetailsLastNameTextBox}
    sleep    2

User should be able to edit Phone Number in Dealer Account Details Page
    clear element text    ${ProfileAccountsDetailsPhoneTextBox}
    input text    ${ProfileAccountsDetailsPhoneTextBox}    ${ProfileAccountsDetailsPhoneValue}
    capture element screenshot    ${ProfileAccountsDetailsPhoneTextBox}
    sleep    2

User should be able to edit Landline Number in Dealer Account Details Page
    clear element text    ${ProfileAccountsDetailsLandlineTextBox}
    input text    ${ProfileAccountsDetailsLandlineTextBox}    ${ProfileAccountsDetailsLandlineValue}
    capture element screenshot    ${ProfileAccountsDetailsLandlineTextBox}
    sleep    2

User should be able to click Cancel in Dealer Account Details Page
    wait until element is visible    ${ProfileAccountsDetailsCancelButton}    10
    capture element screenshot    ${ProfileAccountsDetailsCancelButton}
    click element    ${ProfileAccountsDetailsCancelButton}
    sleep    2

User should be able to click Update in Dealer Account Details Page
    wait until element is visible    ${ProfileAccountsDetailsUpdateButton}    10
    capture element screenshot    ${ProfileAccountsDetailsUpdateButton}
    click element    ${ProfileAccountsDetailsUpdateButton}
    sleep    2

User should be able to view update confirmation modal in Dealer Account Details Page
    wait until element is visible    ${ProfileAccountsDetailsConfirmationContainer}    10
    capture element screenshot    ${ProfileAccountsDetailsConfirmationContainer}
    sleep    2

User should be able to click Yes on update confirmation modal in Dealer Account Details Page
    wait until element is visible    ${ProfileAccountsDetailsConfirmationYesButton}    10
    capture element screenshot    ${ProfileAccountsDetailsConfirmationYesButton}
    click element    ${ProfileAccountsDetailsConfirmationYesButton}
    sleep    2

User should be able to click No on update confirmation modal in Dealer Account Details Page
    wait until element is visible    ${ProfileAccountsDetailsConfirmationNoButton}    10
    capture element screenshot    ${ProfileAccountsDetailsConfirmationNoButton}
    click element    ${ProfileAccountsDetailsConfirmationNoButton}
    sleep    2

User should be able to view invalid phone number error in Dealer Account Details Page
    clear element text    ${ProfileAccountsDetailsPhoneTextBox}
    input text    ${ProfileAccountsDetailsPhoneTextBox}    ${ProfileAccountsDetailsPhoneInvalidValue}
    wait until element is visible    ${ProfileAccountsDetailsPhoneError}    10
    capture element screenshot    ${ProfileAccountsDetailsPhoneError}
    sleep    2

User should be able to view invalid landline number error in Dealer Account Details Page
    clear element text    ${ProfileAccountsDetailsLandlineTextBox}
    input text    ${ProfileAccountsDetailsLandlineTextBox}    ${ProfileAccountsDetailsLandlineInvalidValue}
    wait until element is visible    ${ProfileAccountsDetailsLandlineError}   10
    capture element screenshot    ${ProfileAccountsDetailsLandlineError}
    sleep    2









