*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary

Resource  ../../../Resource/testdata/config.robot
Resource  ../../../Resource/testdata/Retail/Retail_Variable.robot
Resource  ../../../Resource/testdata/credentials.robot


*** Keywords ***
#-----------------------------------------------------Retail Account Staff Page-------------------------------------------------
User should be able to view staff page
    wait until element is visible    ${Retail_AccountpageCompanyMenu}    10
    click element    ${Retail_AccountpageCompanyMenu}
    wait until element is visible    ${Retail_AccountpageCompanyStaff}    10
    click element    ${Retail_AccountpageCompanyStaff}
    wait until element is visible    ${Retail_AccountStaffPagePanelContainer}    10
    wait until element is visible    ${Retail_AccountStaffPagePanelHeader}    10
    capture page screenshot
    sleep    2

User should be able to click add new staff in Retail Account Staff Page
    wait until element is visible    ${Retail_AccountStaffPageAddButton}    10
    capture element screenshot    ${Retail_AccountStaffPageAddButton}
    click element    ${Retail_AccountStaffPageAddButton}
    sleep    2

User should be able to add new staff details in Retail Account Staff Page
    input text    ${Retail_AccountStaffPageFirstNameAddTextBox}    ${Retail_AccountStaffPageFirstNameValue}
    input text    ${Retail_AccountStaffPageLastNameAddTextBox}    ${Retail_AccountStaffPageLastNameValue}
    input text    ${Retail_AccountStaffPageEmailAddTextBox}    ${Retail_AccountStaffPageEmailValue}
    input text    ${Retail_AccountStaffPagePhoneNumAddTextBox}    ${Retail_AccountStaffPagePhoneNumValue}

    capture element screenshot    ${Retail_AccountStaffPageFirstNameAddTextBox}
    capture element screenshot    ${Retail_AccountStaffPageLastNameAddTextBox}
    capture element screenshot    ${Retail_AccountStaffPageEmailAddTextBox}
    capture element screenshot    ${Retail_AccountStaffPagePhoneNumAddTextBox}

    sleep    2

User should be able to add new staff details in HK Retail Account Staff Page
    input text    ${Retail_AccountStaffPageFirstNameAddTextBox}    ${Retail_AccountStaffPageFirstNameValue}
    input text    ${Retail_AccountStaffPageLastNameAddTextBox}    ${Retail_AccountStaffPageLastNameValue}
    input text    ${Retail_AccountStaffPageEmailAddTextBox}    ${Retail_AccountStaffPageEmailValue}
    input text    ${Retail_HK_AccountStaffPage_PhoneNum_Add_TextBox}    ${Retail_HK_AccountStaffPage_PhoneNum_Add_Value}

    capture element screenshot    ${Retail_AccountStaffPageFirstNameAddTextBox}
    capture element screenshot    ${Retail_AccountStaffPageLastNameAddTextBox}
    capture element screenshot    ${Retail_AccountStaffPageEmailAddTextBox}
    capture element screenshot    ${Retail_HK_AccountStaffPage_PhoneNum_Add_TextBox}

    sleep    2

User should be able to click active checkbox at add new staff in Retail Account Staff Page
    wait until element is visible    ${Retail_AccountStaffPageActiveAddCheckBox}    10
    click element    ${Retail_AccountStaffPageActiveAddCheckBox}
    capture element screenshot    ${Retail_AccountStaffPageActiveAddCheckBox}
    sleep    2

User should be able to click cancel add new staff in Retail Account Staff Page
    wait until element is visible    ${Retail_AccountStaffPageCancelButton}    10
    capture element screenshot    ${Retail_AccountStaffPageCancelButton}
    click element    ${Retail_AccountStaffPageCancelButton}
    sleep    2

User should be able to click save add new staff in Retail Account Staff Page
    wait until element is visible    ${Retail_AccountStaffPageUpdateButton}    10
    capture element screenshot    ${Retail_AccountStaffPageUpdateButton}
    click element    ${Retail_AccountStaffPageUpdateButton}
    sleep    2

User should be able to click edit staff button in Retail Account Staff Page
    wait until element is visible    ${Retail_AccountStaffPageEditButton}    10
    capture element screenshot    ${Retail_AccountStaffPageEditButton}
    click element    ${Retail_AccountStaffPageEditButton}
    sleep    2

User should be able to edit First Name in Retail Account Staff Page
    wait until element is visible    ${Retail_AccountStaffPageFirstNameTextBox}    10
    clear element text    ${Retail_AccountStaffPageFirstNameTextBox}
    input text    ${Retail_AccountStaffPageFirstNameTextBox}    ${Retail_AccountStaffPageFirstNameValue}
    sleep    2

User should be able to edit Last Name in Retail Account Staff Page
    wait until element is visible    ${Retail_AccountStaffPageLastNameTextBox}    10
    clear element text    ${Retail_AccountStaffPageLastNameTextBox}
    input text    ${Retail_AccountStaffPageLastNameTextBox}    ${Retail_AccountStaffPageLastNameValue}
    sleep    2

User should be able to edit Phone Number in Retail Account Staff Page
    wait until element is visible    ${Retail_AccountStaffPagePhoneNumTextBox}    10
    clear element text    ${Retail_AccountStaffPagePhoneNumTextBox}
    input text    ${Retail_AccountStaffPagePhoneNumTextBox}    ${Retail_AccountStaffPagePhoneNumValue}
    sleep    2

User should be able to edit Phone Number in HK Retail Account Staff Page
    wait until element is visible    ${Retail_AccountStaffPagePhoneNumTextBox}    10
    clear element text    ${Retail_AccountStaffPagePhoneNumTextBox}
    input text    ${Retail_HK_AccountStaffPage_PhoneNum_TextBox}    ${Retail_HKAccountStaffPage_PhoneNum_Value}
    sleep    2

User should be able to click active checkbox in Retail Account Staff Page
    wait until element is visible    ${Retail_AccountStaffPageActiveCheckBox}    10
    click element    ${Retail_AccountStaffPageActiveCheckBox}
    capture element screenshot    ${Retail_AccountStaffPageActiveCheckBox}
    sleep    2

User should be able to view error messages in Retail Account Staff Page
    clear element text    ${Retail_AccountStaffPageFirstNameTextBox}
    clear element text    ${Retail_AccountStaffPageLastNameTextBox}
    clear element text    ${Retail_AccountStaffPagePhoneNumTextBox}

    wait until element is visible    ${Retail_AccountStaffPageFNErrorMessage}
    wait until element is visible    ${Retail_AccountStaffPageLNErrorMessage}
    wait until element is visible    ${Retail_AccountStaffPagePhoneNumErrorMessage}

User should ba able to click cancel in Retail Account Staff Page
    wait until element is visible    ${Retail_AccountStaffPageCancelButton}    10
    capture element screenshot    ${Retail_AccountStaffPageCancelButton}
    click element    ${Retail_AccountStaffPageCancelButton}
    sleep    2

User should ba able to click save in Retail Account Staff Page
    wait until element is visible    ${Retail_AccountStaffPageUpdateButton}    10
    capture element screenshot    ${Retail_AccountStaffPageUpdateButton}
    click element    ${Retail_AccountStaffPageUpdateButton}
    sleep    2

User should be able to click no in the confirmation in Retail Account Staff Page
    wait until element is visible    ${Retail_AccountStaffPageNoButton}    10
    capture element screenshot    ${Retail_AccountStaffPageNoButton}
    click element    ${Retail_AccountStaffPageNoButton}
    sleep    2

User should be able to click yes in the confirmation in Retail Account Staff Page
    wait until element is visible    ${Retail_AccountStaffPageYesButton}    10
    capture element screenshot    ${Retail_AccountStaffPageYesButton}
    click element    ${Retail_AccountStaffPageYesButton}
    sleep    2








