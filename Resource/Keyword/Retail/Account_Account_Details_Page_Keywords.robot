*** Settings ***
Documentation    Suite description

Library    SeleniumLibrary

#Resource    ../../../Resource/testdata/config.robot
Resource    ../../../Resource/testdata/Retail/Retail_Variable.robot
Resource    ../../../Resource/testdata/credentials.robot


*** Keywords ***
#-----------------------------------------------------Retail Account Account Details Page---------------------------------------
User should be able to view account details page
    wait until element is visible    ${Retail_AccountpageProfileMenu}    10
    click element    ${Retail_AccountpageProfileMenu}
    wait until element is visible    ${Retail_AccountpageProfileAccountDetails}    10
    click element    ${Retail_AccountpageProfileAccountDetails}
    wait until element is visible    ${Retail_AccountProfileAccountsDetailsPanelContainer}    10
    wait until element is visible    ${Retail_AccountProfileAccountsDetailsPanelHeader}    10
    wait until element is visible    ${Retail_AccountProfileAccountsDetailsFirstNameLabel}    10
    wait until element is visible    ${Retail_AccountProfileAccountsDetailsLastNameLabel}    10
    wait until element is visible    ${Retail_AccountProfileAccountsDetailsEmailLabel}    10
    wait until element is visible    ${Retail_AccountProfileAccountsDetailsPhoneLabel}    10
    wait until element is visible    ${Retail_AccountProfileAccountsDetailsLandlineLabel}    10
    wait until element is visible    ${Retail_AccountProfileAccountsDetailsFirstNameTextBox}    10
    wait until element is visible    ${Retail_AccountProfileAccountsDetailsLastNameTextBox}    10
    wait until element is visible    ${Retail_AccountProfileAccountsDetailsEmailTextBox}    10
    wait until element is visible    ${Retail_AccountProfileAccountsDetailsPhoneTextBox}    10
    wait until element is visible    ${Retail_AccountProfileAccountsDetailsLandlineTextBox}    10
    wait until element is visible    ${Retail_AccountProfileAccountsDetailsCancelButton}    10
    wait until element is visible    ${Retail_AccountProfileAccountsDetailsUpdateButton}    10

    capture element screenshot    ${Retail_AccountProfileAccountsDetailsPanelContainer}
    capture element screenshot    ${Retail_AccountProfileAccountsDetailsFirstNameLabel}
    capture element screenshot    ${Retail_AccountProfileAccountsDetailsLastNameLabel}
    capture element screenshot    ${Retail_AccountProfileAccountsDetailsEmailLabel}
    capture element screenshot    ${Retail_AccountProfileAccountsDetailsPhoneLabel}
    capture element screenshot    ${Retail_AccountProfileAccountsDetailsLandlineLabel}
    capture element screenshot    ${Retail_AccountProfileAccountsDetailsFirstNameTextBox}
    capture element screenshot    ${Retail_AccountProfileAccountsDetailsLastNameTextBox}
    capture element screenshot    ${Retail_AccountProfileAccountsDetailsEmailTextBox}
    capture element screenshot    ${Retail_AccountProfileAccountsDetailsPhoneTextBox}
    capture element screenshot    ${Retail_AccountProfileAccountsDetailsLandlineTextBox}
    capture element screenshot    ${Retail_AccountProfileAccountsDetailsCancelButton}
    capture element screenshot    ${Retail_AccountProfileAccountsDetailsUpdateButton}

    sleep    2

User should be able to edit First name in Retail Account Details Page
    clear element text    ${Retail_AccountProfileAccountsDetailsFirstNameTextBox}
    input text    ${Retail_AccountProfileAccountsDetailsFirstNameTextBox}    ${Retail_AccountProfileAccountsDetailsFirstNameValue}
    capture element screenshot    ${Retail_AccountProfileAccountsDetailsFirstNameTextBox}
    sleep    2

User should be able to edit Last name in Retail Account Details Page
    clear element text    ${Retail_AccountProfileAccountsDetailsLastNameTextBox}
    input text    ${Retail_AccountProfileAccountsDetailsLastNameTextBox}    ${Retail_AccountProfileAccountsDetailsLastNameValue}
    capture element screenshot    ${Retail_AccountProfileAccountsDetailsLastNameTextBox}
    sleep    2


User should be able to edit Phone Number in Retail Account Details Page
    clear element text    ${Retail_AccountProfileAccountsDetailsPhoneTextBox}
    input text    ${Retail_AccountProfileAccountsDetailsPhoneTextBox}    ${Retail_AccountProfileAccountsDetailsPhoneValue}
    capture element screenshot    ${Retail_AccountProfileAccountsDetailsPhoneTextBox}
    sleep    2

User should be able to edit Phone Number in HK Retail Account Details Page
    clear element text    ${Retail_AccountProfileAccountsDetailsPhoneTextBox}
    input text    ${Retail_AccountProfileAccountsDetailsPhoneTextBox}    ${Retail_HK_AccountProfileAccountsDetails_Phone_Value}
    capture element screenshot    ${Retail_AccountProfileAccountsDetailsPhoneTextBox}
    sleep    2

User should be able to edit Landline Number in Retail Account Details Page
    clear element text    ${Retail_AccountProfileAccountsDetailsLandlineTextBox}
    input text    ${Retail_AccountProfileAccountsDetailsLandlineTextBox}    ${Retail_AccountProfileAccountsDetailsLandlineValue}
    capture element screenshot    ${Retail_AccountProfileAccountsDetailsLandlineTextBox}
    sleep    2

User should be able to edit Landline Number in HK Retail Account Details Page
    clear element text    ${Retail_AccountProfileAccountsDetailsLandlineTextBox}
    input text    ${Retail_AccountProfileAccountsDetailsLandlineTextBox}    ${Retail_HK_AccountProfileAccountsDetails_Landline_Value}
    capture element screenshot    ${Retail_AccountProfileAccountsDetailsLandlineTextBox}
    sleep    2

User should be able to click Cancel in Retail Account Details Page
    wait until element is visible    ${Retail_AccountProfileAccountsDetailsCancelButton}    10
    capture element screenshot    ${Retail_AccountProfileAccountsDetailsCancelButton}
    click element    ${Retail_AccountProfileAccountsDetailsCancelButton}
    sleep    2

User should be able to click Update in Retail Account Details Page
    wait until element is visible    ${Retail_AccountProfileAccountsDetailsUpdateButton}    10
    capture element screenshot    ${Retail_AccountProfileAccountsDetailsUpdateButton}
    click element    ${Retail_AccountProfileAccountsDetailsUpdateButton}
    wait until element is visible    ${Retail_AccountProfileAccountsDetailsConfirmationYesButton}    10
    click element    ${Retail_AccountProfileAccountsDetailsConfirmationYesButton}
    sleep    2

User should be able to view update confirmation modal in Retail Account Details Page
    wait until element is visible    ${Retail_AccountProfileAccountsDetailsConfirmationContainer}    10
    capture element screenshot    ${Retail_AccountProfileAccountsDetailsConfirmationContainer}
    sleep    2

User should be able to click Yes on update confirmation modal in Retail Account Details Page
    wait until element is visible    ${Retail_AccountProfileAccountsDetailsConfirmationYesButton}    10
    capture element screenshot    ${Retail_AccountProfileAccountsDetailsConfirmationYesButton}
    click element    ${Retail_AccountProfileAccountsDetailsConfirmationYesButton}
    sleep    2

User should be able to click No on update confirmation modal in Retail Account Details Page
    wait until element is visible    ${Retail_AccountProfileAccountsDetailsConfirmationNoButton}    10
    capture element screenshot    ${Retail_AccountProfileAccountsDetailsConfirmationNoButton}
    click element    ${Retail_AccountProfileAccountsDetailsConfirmationNoButton}
    sleep    2

User should be able to view invalid phone number error in Retail Account Details Page
    clear element text    ${Retail_AccountProfileAccountsDetailsPhoneTextBox}
    input text    ${Retail_AccountProfileAccountsDetailsPhoneTextBox}    ${Retail_AccountProfileAccountsDetailsPhoneInvalidValue}
    wait until element is visible    ${Retail_AccountProfileAccountsDetailsPhoneError}    10
    capture element screenshot    ${Retail_AccountProfileAccountsDetailsPhoneError}
    sleep    2

User should be able to view invalid landline number error in Retail Account Details Page
    clear element text    ${Retail_AccountProfileAccountsDetailsLandlineTextBox}
    input text    ${Retail_AccountProfileAccountsDetailsLandlineTextBox}    ${Retail_AccountProfileAccountsDetailsLandlineInvalidValue}
    wait until element is visible    ${Retail_AccountProfileAccountsDetailsLandlineError}   10
    capture element screenshot    ${Retail_AccountProfileAccountsDetailsLandlineError}
    sleep    2

User First Name should not move to Last Name
   wait until element is visible    ${Retail_AccountProfileAccountsDetailsLastNameTextBox}    10
   capture element screenshot    ${Retail_AccountProfileAccountsDetailsLastNameTextBox}
   ${NameString}    get text   ${Retail_AccountProfileAccountsDetailsLastNameTextBox}
   log    ${NameString}
   ${NameLength}    get length    ${NameString}
   log     ${NameLength}
   ${NameCount}    set variable    2
   run keyword and continue on failure    should be equal    ${NameLength}     ${NameCount}