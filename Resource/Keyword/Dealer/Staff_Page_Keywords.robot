*** Settings ***
Documentation    Suite description

Library    SeleniumLibrary

#Resource    ../../../Resource/testdata/config.robot
Resource    ../../../Resource/testdata/Dealer/Dealer_Variable.robot
Resource    ../../../Resource/testdata/credentials.robot



*** Keywords ***
#-----------------------------------------------------Dealer Staff Page-------------------------------------------------
User should be able to view staff page
    wait until element is visible    ${StaffPagePanelContainer}    10
    wait until element is visible    ${StaffPagePanelHeader}    10
    capture page screenshot
    sleep    2

User should be able to click add new staff in Dealer Staff Page
    wait until element is visible    ${StaffPageAddButton}    10
    capture element screenshot    ${StaffPageAddButton}
    click element    ${StaffPageAddButton}
    sleep    2

User should be able to add new staff details in Dealer Staff Page
    input text    ${StaffPageFirstNameAddTextBox}    ${StaffPageFirstNameValue}
    input text    ${StaffPageLastNameAddTextBox}    ${StaffPageLastNameValue}
    input text    ${StaffPageEmailAddTextBox}    ${StaffPageEmailValue}
    input text    ${StaffPagePhoneNumAddTextBox}    ${StaffPagePhoneNumValue}

    capture element screenshot    ${StaffPageFirstNameAddTextBox}
    capture element screenshot    ${StaffPageLastNameAddTextBox}
    capture element screenshot    ${StaffPageEmailAddTextBox}
    capture element screenshot    ${StaffPagePhoneNumAddTextBox}

    sleep    2

User should be able to click active checkbox at add new staff in Dealer Staff Page
    wait until element is visible    ${StaffPageActiveAddCheckBox}    10
    click element    ${StaffPageActiveAddCheckBox}
    capture element screenshot    ${StaffPageActiveAddCheckBox}
    sleep    2

User should be able to click cancel add new staff in Dealer Staff Page
    wait until element is visible    ${StaffPageCancelAddButton}    10
    capture element screenshot    ${StaffPageCancelAddButton}
    click element    ${StaffPageCancelAddButton}
    sleep    2

User should be able to click save add new staff in Dealer Staff Page
    wait until element is visible    ${StaffPageUpdateButton}    10
    capture element screenshot    ${StaffPageUpdateButton}
    click element    ${StaffPageUpdateButton}
    sleep    2

User should be able to click edit staff button in Dealer Staff Page
    wait until element is visible    ${StaffPageEditButton}    10
    capture element screenshot    ${StaffPageEditButton}
    click element    ${StaffPageEditButton}
    sleep    2

User should be able to edit First Name in Dealer Staff Page
    wait until element is visible    ${StaffPageFirstNameTextBox}    10
    clear element text    ${StaffPageFirstNameTextBox}
    input text    ${StaffPageFirstNameTextBox}    ${StaffPageFirstNameValue}
    sleep    2

User should be able to edit Last Name in Dealer Staff Page
    wait until element is visible    ${StaffPageLastNameTextBox}    10
    clear element text    ${StaffPageLastNameTextBox}
    input text    ${StaffPageLastNameTextBox}    ${StaffPageLastNameValue}
    sleep    2

User should be able to edit Phone Number in Dealer Staff Page
    wait until element is visible    ${StaffPagePhoneNumTextBox}    10
    clear element text    ${StaffPagePhoneNumTextBox}
    input text    ${StaffPagePhoneNumTextBox}    ${StaffPagePhoneNumValue}
    sleep    2

User should be able to click active checkbox in Dealer Staff Page
    wait until element is visible    ${StaffPageActiveCheckBox}    10
    click element    ${StaffPageActiveCheckBox}
    capture element screenshot    ${StaffPageActiveCheckBox}
    sleep    2

User should be able to view error messages in Dealer Staff Page
    clear element text    ${StaffPageFirstNameTextBox}
    clear element text    ${StaffPageLastNameTextBox}
    clear element text    ${StaffPagePhoneNumTextBox}

    click element    ${StaffPageUpdateButton}

    wait until element is visible    ${StaffPageFNErrorMessage}    10
    wait until element is visible    ${StaffPageLNErrorMessage}    10
    wait until element is visible    ${StaffPagePhoneNumErrorMessage}    10

    sleep    2

User should ba able to click cancel in Dealer Staff Page
    wait until element is visible    ${StaffPageCancelButton}    10
    capture element screenshot    ${StaffPageCancelButton}
    click element    ${StaffPageCancelButton}
    sleep    2

User should ba able to click save in Dealer Staff Page
    wait until element is visible    ${StaffPageUpdateButton}    10
    capture element screenshot    ${StaffPageUpdateButton}
    click element    ${StaffPageUpdateButton}
    sleep    2

User should be able to click no in the confirmation in Dealer Staff Page
    wait until element is visible    ${StaffPageNoButton}    10
    capture element screenshot    ${StaffPageNoButton}
    click element    ${StaffPageNoButton}
    sleep    2

User should be able to click yes in the confirmation in Dealer Staff Page
    wait until element is visible    ${StaffPageYesButton}    10
    capture element screenshot    ${StaffPageYesButton}
    click element    ${StaffPageYesButton}
    sleep    2


