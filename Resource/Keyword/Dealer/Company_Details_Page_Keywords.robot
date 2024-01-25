*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary

Resource  ../../../Resource/testdata/config.robot
Resource  ../../../Resource/testdata/Dealer/Dealer_Variable.robot
Resource  ../../../Resource/testdata/credentials.robot



*** Keywords ***
#-----------------------------------------------------Dealer Company Details Page---------------------------------------
User should be able to view company details page
    wait until element is visible    ${CompanyDetailsPagePanelContainer}    10
    wait until element is visible    ${CompanyDetailsPagePanelHeader}    10
    wait until element is visible    ${CompanyDetailsPageCompanyNameLabel}    10
    wait until element is visible    ${CompanyDetailsPageTradingNameLabel}    10
	wait until element is visible    ${CompanyDetailsPagePostalAddressLabel}    10
    wait until element is visible    ${CompanyDetailsPagePostalAddressAddLine1Label}    10
    wait until element is visible    ${CompanyDetailsPagePostalAddressAddLine2Label}    10

    wait until element is visible    ${CompanyDetailsPageCompanyNameTextBox}    10
    wait until element is visible    ${CompanyDetailsPageTradingNameTextBox}    10
    wait until element is visible    ${CompanyDetailsPagePostalAddressAddLine1TextBox}    10
    wait until element is visible    ${CompanyDetailsPagePostalAddressAddLine2TextBox}    10

    capture element screenshot    ${CompanyDetailsPageCompanyNameLabel}
    capture element screenshot    ${CompanyDetailsPageTradingNameLabel}
    capture element screenshot    ${CompanyDetailsPagePostalAddressLabel}
    capture element screenshot    ${CompanyDetailsPagePostalAddressAddLine1Label}
    capture element screenshot    ${CompanyDetailsPagePostalAddressAddLine2Label}

    capture element screenshot    ${CompanyDetailsPageCompanyNameTextBox}
    capture element screenshot    ${CompanyDetailsPageTradingNameTextBox}
    capture element screenshot    ${CompanyDetailsPagePostalAddressAddLine1TextBox}
    capture element screenshot    ${CompanyDetailsPagePostalAddressAddLine2TextBox}

    capture page screenshot

    scroll element into view    ${CompanyDetailsPageEmailAddLabel}
#    run keyword and continue on failure    User should be able to check/uncheck Del Add Same As Postal Add Checkbox in Dealer Company Details Page

    wait until element is visible    ${CompanyDetailsPagePostalAddressSuburbLabel}    10
    wait until element is visible    ${CompanyDetailsPagePostalAddressPostalCodeLabel}    10
    wait until element is visible    ${CompanyDetailsPagePostalAddressStateLabel}    10
    wait until element is visible    ${CompanyDetailsPageDelSameAsPostalLabel}    10
    wait until element is visible    ${CompanyDetailsPageDelAddressLabel}    10
    wait until element is visible    ${CompanyDetailsPageDelAddressAddLine1Label}    10
    wait until element is visible    ${CompanyDetailsPageDelAddressAddLine2Label}    10
    wait until element is visible    ${CompanyDetailsPageDelAddressSuburbLabel}    10
    wait until element is visible    ${CompanyDetailsPageDelAddressPostalCodeLabel}    10
    wait until element is visible    ${CompanyDetailsPageDelAddressStateLabel}    10

    wait until element is visible    ${CompanyDetailsPagePostalAddressSuburbTextBox}    10
    wait until element is visible    ${CompanyDetailsPagePostalAddressPostalCodeTextBox}    10
    wait until element is visible    ${CompanyDetailsPageDelAddressAddLine1TextBox}    10
    wait until element is visible    ${CompanyDetailsPageDelAddressAddLine2TextBox}    10
    wait until element is visible    ${CompanyDetailsPageDelAddressSuburbTextBox}    10
    wait until element is visible    ${CompanyDetailsPageDelAddressPostalCodeTextBox}    10

    wait until element is visible    ${CompanyDetailsPageDelSameAsPostalCheckBox}    10


    wait until element is visible    ${CompanyDetailsPagePostalStateComboBox}    10
    wait until element is visible    ${CompanyDetailsPagePostalStateComboBoxArrow}    10

    wait until element is visible    ${CompanyDetailsPageDelStateComboBox}    10
    wait until element is visible    ${CompanyDetailsPageDelStateComboBoxArrow}    10

    capture element screenshot    ${CompanyDetailsPagePostalAddressSuburbLabel}
    capture element screenshot    ${CompanyDetailsPagePostalAddressPostalCodeLabel}
    capture element screenshot    ${CompanyDetailsPagePostalAddressStateLabel}
    capture element screenshot    ${CompanyDetailsPageDelSameAsPostalLabel}
    capture element screenshot    ${CompanyDetailsPageDelAddressLabel}
    capture element screenshot    ${CompanyDetailsPageDelAddressAddLine1Label}
    capture element screenshot    ${CompanyDetailsPageDelAddressAddLine2Label}
    capture element screenshot    ${CompanyDetailsPageDelAddressSuburbLabel}
    capture element screenshot    ${CompanyDetailsPageDelAddressPostalCodeLabel}
    capture element screenshot    ${CompanyDetailsPageDelAddressStateLabel}

    capture element screenshot    ${CompanyDetailsPagePostalAddressSuburbTextBox}
    capture element screenshot    ${CompanyDetailsPagePostalAddressPostalCodeTextBox}
    capture element screenshot    ${CompanyDetailsPageDelAddressAddLine1TextBox}
    capture element screenshot    ${CompanyDetailsPageDelAddressAddLine2TextBox}
    capture element screenshot    ${CompanyDetailsPageDelAddressSuburbTextBox}
    capture element screenshot    ${CompanyDetailsPageDelAddressPostalCodeTextBox}

    capture element screenshot    ${CompanyDetailsPageDelSameAsPostalCheckBox}

    capture element screenshot    ${CompanyDetailsPagePostalStateComboBox}
    capture element screenshot    ${CompanyDetailsPagePostalStateComboBoxArrow}

    capture element screenshot    ${CompanyDetailsPageDelStateComboBox}
    capture element screenshot    ${CompanyDetailsPageDelStateComboBoxArrow}

    capture page screenshot

    scroll element into view    ${CompanyDetailsPageClosingHoursComboBox}

    wait until element is visible    ${CompanyDetailsPageEmailAddLabel}    10
    wait until element is visible    ${CompanyDetailsPageCompPhoneNumLabel}    10
    wait until element is visible    ${CompanyDetailsPageContFNLabel}    10
    wait until element is visible    ${CompanyDetailsPageContLNLabel}    10
    wait until element is visible    ${CompanyDetailsPageRadioABNLabel}    10
    wait until element is visible    ${CompanyDetailsPageRadioACNLabel}    10
    wait until element is visible    ${CompanyDetailsPageABNLabel}    10
    wait until element is visible    ${CompanyDetailsPageOpeningLabel}    10
    wait until element is visible    ${CompanyDetailsPageClosingLabel}    10

    wait until element is visible    ${CompanyDetailsPageEmailAddTextBox}    10
    wait until element is visible    ${CompanyDetailsPageCompPhoneNumTextBox}    10
    wait until element is visible    ${CompanyDetailsPageContFNTextBox}    10
    wait until element is visible    ${CompanyDetailsPageContLNTextBox}    10
    wait until element is visible    ${CompanyDetailsPageABNTextBox}    10

    wait until element is visible    ${CompanyDetailsPageRadioABNRadioButton}    10
    wait until element is visible    ${CompanyDetailsPageRadioACNRadioButton}    10

    wait until element is visible    ${CompanyDetailsPageCancelButton}    10
    wait until element is visible    ${CompanyDetailsPageSubmitButton}    10

    capture element screenshot    ${CompanyDetailsPageEmailAddLabel}
    capture element screenshot    ${CompanyDetailsPageCompPhoneNumLabel}
    capture element screenshot    ${CompanyDetailsPageContFNLabel}
    capture element screenshot    ${CompanyDetailsPageContLNLabel}
    capture element screenshot    ${CompanyDetailsPageRadioABNLabel}
    capture element screenshot    ${CompanyDetailsPageRadioACNLabel}
    capture element screenshot    ${CompanyDetailsPageABNLabel}
    capture element screenshot    ${CompanyDetailsPageOpeningLabel}
    capture element screenshot    ${CompanyDetailsPageClosingLabel}

    capture element screenshot    ${CompanyDetailsPageEmailAddTextBox}
    capture element screenshot    ${CompanyDetailsPageCompPhoneNumTextBox}
    capture element screenshot    ${CompanyDetailsPageContFNTextBox}
    capture element screenshot    ${CompanyDetailsPageContLNTextBox}
    capture element screenshot    ${CompanyDetailsPageABNTextBox}

    capture element screenshot    ${CompanyDetailsPageRadioABNRadioButton}
    capture element screenshot    ${CompanyDetailsPageRadioACNRadioButton}

    capture element screenshot    ${CompanyDetailsPageCancelButton}
    capture element screenshot    ${CompanyDetailsPageSubmitButton}

    capture page screenshot

    sleep    2

User should be able to input valid Company name in Dealer Company Details Page
    wait until element is visible    ${CompanyDetailsPageCompanyNameTextBox}    10
    clear element text    ${CompanyDetailsPageCompanyNameTextBox}
    input text    ${CompanyDetailsPageCompanyNameTextBox}    ${CompanyDetailsPageCompanyNameTextBoxValidText}
    capture element screenshot    ${CompanyDetailsPageCompanyNameTextBox}
    sleep    2

User should be able to input valid Trading Name in Dealer Company Details Page
    wait until element is visible    ${CompanyDetailsPageTradingNameTextBox}    10
    clear element text    ${CompanyDetailsPageTradingNameTextBox}
    input text    ${CompanyDetailsPageTradingNameTextBox}    ${CompanyDetailsPageTradingNameTextBoxValidText}
    capture element screenshot    ${CompanyDetailsPageTradingNameTextBox}
    sleep    2

User should be able to input valid Postal Address Line 1 in Dealer Company Details Page
    wait until element is visible    ${CompanyDetailsPagePostalAddressAddLine1TextBox}    10
    clear element text    ${CompanyDetailsPagePostalAddressAddLine1TextBox}
    input text    ${CompanyDetailsPagePostalAddressAddLine1TextBox}    ${CompanyDetailsPagePostalAddressAddLine1ValidText}
    capture element screenshot    ${CompanyDetailsPagePostalAddressAddLine1TextBox}
    sleep    2

User should be able to input valid Postal Address Line 2 in Dealer Company Details Page
    wait until element is visible    ${CompanyDetailsPagePostalAddressAddLine2TextBox}    10
    clear element text    ${CompanyDetailsPagePostalAddressAddLine2TextBox}
    input text    ${CompanyDetailsPagePostalAddressAddLine2TextBox}    ${CompanyDetailsPagePostalAddressAddLine2ValidText}
    capture element screenshot    ${CompanyDetailsPagePostalAddressAddLine2TextBox}
    sleep    2

User should be able to input valid Postal Suburb in Dealer Company Details Page
    wait until element is visible    ${CompanyDetailsPagePostalAddressSuburbTextBox}    10
    clear element text    ${CompanyDetailsPagePostalAddressSuburbTextBox}
    input text    ${CompanyDetailsPagePostalAddressSuburbTextBox}    ${CompanyDetailsPagePostalAddressSuburbValidText}
    capture element screenshot    ${CompanyDetailsPagePostalAddressSuburbTextBox}
    sleep    2

User should be able to input valid Postal Code in Dealer Company Details Page
    wait until element is visible    ${CompanyDetailsPagePostalAddressPostalCodeTextBox}    10
    clear element text    ${CompanyDetailsPagePostalAddressPostalCodeTextBox}
    input text    ${CompanyDetailsPagePostalAddressPostalCodeTextBox}    ${CompanyDetailsPagePostalAddressPostalCodeValidText}
    capture element screenshot    ${CompanyDetailsPagePostalAddressPostalCodeTextBox}
    sleep    2

User should be able to input valid Delivery Address Line 1 in Dealer Company Details Page
    wait until element is visible    ${CompanyDetailsPageDelAddressAddLine1TextBox}    10
    clear element text    ${CompanyDetailsPageDelAddressAddLine1TextBox}
    input text    ${CompanyDetailsPageDelAddressAddLine1TextBox}    ${CompanyDetailsPageDelAddressAddLine1ValidText}
    capture element screenshot    ${CompanyDetailsPageDelAddressAddLine1TextBox}
    sleep    2

User should be able to input valid Delivery Address Line 2 in Dealer Company Details Page
    wait until element is visible    ${CompanyDetailsPageDelAddressAddLine2TextBox}    10
    clear element text    ${CompanyDetailsPageDelAddressAddLine2TextBox}
    input text    ${CompanyDetailsPageDelAddressAddLine2TextBox}    ${CompanyDetailsPageDelAddressAddLine2ValidText}
    capture element screenshot    ${CompanyDetailsPageDelAddressAddLine2TextBox}
    sleep    2

User should be able to input valid Delivery Suburb in Dealer Company Details Page
    wait until element is visible    ${CompanyDetailsPageDelAddressSuburbTextBox}    10
    clear element text    ${CompanyDetailsPageDelAddressSuburbTextBox}
    input text    ${CompanyDetailsPageDelAddressSuburbTextBox}    ${CompanyDetailsPageDelAddressSuburbValidText}
    capture element screenshot    ${CompanyDetailsPageDelAddressSuburbTextBox}
    sleep    2

User should be able to input valid Delivery Code in Dealer Company Details Page
    wait until element is visible    ${CompanyDetailsPageDelAddressPostalCodeTextBox}    10
    clear element text    ${CompanyDetailsPageDelAddressPostalCodeTextBox}
    input text    ${CompanyDetailsPageDelAddressPostalCodeTextBox}    ${CompanyDetailsPageDelAddressPostalCodeValidText}
    capture element screenshot    ${CompanyDetailsPageDelAddressPostalCodeTextBox}
    sleep    2

User should be able to input valid Company Phone Number in Dealer Company Details Page
    wait until element is visible    ${CompanyDetailsPageCompPhoneNumTextBox}    10
    clear element text    ${CompanyDetailsPageCompPhoneNumTextBox}
    input text    ${CompanyDetailsPageCompPhoneNumTextBox}    ${CompanyDetailsPageCompPhoneNumValidText}
    capture element screenshot    ${CompanyDetailsPageCompPhoneNumTextBox}
    sleep    2

User should be able to input valid First Name in Dealer Company Details Page
    wait until element is visible    ${CompanyDetailsPageContFNTextBox}    10
    clear element text    ${CompanyDetailsPageContFNTextBox}
    input text    ${CompanyDetailsPageContFNTextBox}    ${CompanyDetailsPageContFNValidText}
    capture element screenshot    ${CompanyDetailsPageContFNTextBox}
    sleep    2

User should be able to input valid Last Name in Dealer Company Details Page
    wait until element is visible    ${CompanyDetailsPageContLNTextBox}    10
    clear element text    ${CompanyDetailsPageContLNTextBox}
    input text    ${CompanyDetailsPageContLNTextBox}    ${CompanyDetailsPageContLNValidText}
    capture element screenshot    ${CompanyDetailsPageContLNTextBox}
    sleep    2

User should be able to click Postal Address State Drop Down in Dealer Company Details Page
    wait until element is visible    ${CompanyDetailsPagePostalStateComboBox}    10
    click element    ${CompanyDetailsPagePostalStateComboBox}
    capture element screenshot    ${CompanyDetailsPagePostalStateComboBox}
    sleep    2

User should be able to click Delivery Address State Drop Down in Dealer Company Details Page
    wait until element is visible    ${CompanyDetailsPageDelStateComboBox}    10
    click element    ${CompanyDetailsPageDelStateComboBox}
    capture element screenshot    ${CompanyDetailsPageDelStateComboBox}
    sleep    2

User should be able to select Postal Address State in Dealer Company Details Page
    wait until element is visible    ${CompanyDetailsPagePostalStateValue}    10
    capture element screenshot    ${CompanyDetailsPagePostalStateValue}
    click element    ${CompanyDetailsPagePostalStateValue}
    capture element screenshot    ${CompanyDetailsPagePostalStateComboBox}
    sleep    2

User should be able to select Delivery Address State in Dealer Company Details Page
    wait until element is visible    ${CompanyDetailsPageDelStateValue}    10
    capture element screenshot    ${CompanyDetailsPageDelStateValue}
    click element    ${CompanyDetailsPageDelStateValue}
    capture element screenshot    ${CompanyDetailsPageDelStateComboBox}
    sleep    2

User should be able to check/uncheck Del Add Same As Postal Add Checkbox in Dealer Company Details Page
    wait until element is visible    ${CompanyDetailsPageDelSameAsPostalCheckBox}    10
    click element    ${CompanyDetailsPageDelSameAsPostalCheckBox}
    capture element screenshot    ${CompanyDetailsPageDelSameAsPostalCheckBox}
    sleep    2

User should be able to click opening hours in Dealer Company Details Page
    wait until element is visible    ${CompanyDetailsPageOpeningHoursComboBox}    10
    click element    ${CompanyDetailsPageOpeningHoursComboBox}
    capture element screenshot    ${CompanyDetailsPageOpeningHoursComboBox}
    sleep    2

User should be able to click closing hours in Dealer Company Details Page
    wait until element is visible    ${CompanyDetailsPageClosingHoursComboBox}    10
    click element    ${CompanyDetailsPageClosingHoursComboBox}
    capture element screenshot    ${CompanyDetailsPageClosingHoursComboBox}
    sleep    2

User should be able to select opening hours value in Dealer Company Details Page
    scroll element into view    ${CompanyDetailsPageOpeningHoursComboBoxValue}
    wait until element is visible    ${CompanyDetailsPageOpeningHoursComboBoxValue}    10
    capture element screenshot    ${CompanyDetailsPageOpeningHoursComboBoxValue}
    click element    ${CompanyDetailsPageOpeningHoursComboBoxValue}
    sleep    2

User should be able to select closing hours value in Dealer Company Details Page
    scroll element into view    ${CompanyDetailsPageClosingHoursComboBoxValue}
    wait until element is visible    ${CompanyDetailsPageClosingHoursComboBoxValue}    10
    capture element screenshot    ${CompanyDetailsPageClosingHoursComboBoxValue}
    click element    ${CompanyDetailsPageClosingHoursComboBoxValue}
    sleep    2

User should be able to click cancel button in Dealer Company Details Page
    wait until element is visible    ${CompanyDetailsPageCancelButton}    10
    click element    ${CompanyDetailsPageCancelButton}
    capture element screenshot    ${CompanyDetailsPageCancelButton}
    sleep    2

User should be able to click save button in Dealer Company Details Page
    wait until element is visible    ${CompanyDetailsPageSubmitButton}    10
    click element    ${CompanyDetailsPageSubmitButton}
    capture element screenshot    ${CompanyDetailsPageSubmitButton}
    sleep    2

User should be able to click no on update cofirmation modal in Dealer Company Details Page
    wait until element is visible    ${CompanyDetailsPageConfirmationNoButton}    10
    capture element screenshot    ${CompanyDetailsPageConfirmationNoButton}
    click element    ${CompanyDetailsPageConfirmationNoButton}
    sleep    2

User should be able to click yes on update cofirmation modal in Dealer Company Details Page
    wait until element is visible    ${CompanyDetailsPagesConfirmationYesButton}    10
    capture element screenshot    ${CompanyDetailsPagesConfirmationYesButton}
    click element    ${CompanyDetailsPagesConfirmationYesButton}
    sleep    2

User should be able to view error messages in Dealer Company Details Page
    clear element text    ${CompanyDetailsPageCompanyNameTextBox}
    clear element text    ${CompanyDetailsPagePostalAddressAddLine1TextBox}
    clear element text    ${CompanyDetailsPagePostalAddressSuburbTextBox}
    clear element text    ${CompanyDetailsPagePostalAddressPostalCodeTextBox}
    clear element text    ${CompanyDetailsPageDelAddressAddLine1TextBox}
    clear element text    ${CompanyDetailsPageDelAddressSuburbTextBox}
    clear element text    ${CompanyDetailsPageDelAddressPostalCodeTextBox}
    clear element text    ${CompanyDetailsPageCompPhoneNumTextBox}
    clear element text    ${CompanyDetailsPageContFNTextBox}
    clear element text    ${CompanyDetailsPageContLNTextBox}

    scroll element into view    ${CompanyDetailsPageCompanyNameErrorMessage}
    wait until element is visible    ${CompanyDetailsPageCompanyNameErrorMessage}    10
    capture element screenshot    ${CompanyDetailsPageCompanyNameErrorMessage}

    scroll element into view    ${CompanyDetailsPagePostalAddressAddLine1ErrorMessage}
    wait until element is visible    ${CompanyDetailsPagePostalAddressAddLine1ErrorMessage}    10
    capture element screenshot    ${CompanyDetailsPagePostalAddressAddLine1ErrorMessage}

    scroll element into view    ${CompanyDetailsPagePostalAddressSuburbErrorMessage}
    wait until element is visible    ${CompanyDetailsPagePostalAddressSuburbErrorMessage}    10
    capture element screenshot    ${CompanyDetailsPagePostalAddressSuburbErrorMessage}

    scroll element into view    ${CompanyDetailsPagePostalAddressPostalCodeErrorMessage}
    wait until element is visible    ${CompanyDetailsPagePostalAddressPostalCodeErrorMessage}    10
    capture element screenshot    ${CompanyDetailsPagePostalAddressPostalCodeErrorMessage}

    scroll element into view    ${CompanyDetailsPageDelAddressAddLine1ErrorMessage}
    wait until element is visible    ${CompanyDetailsPageDelAddressAddLine1ErrorMessage}    10
    capture element screenshot    ${CompanyDetailsPageDelAddressAddLine1ErrorMessage}

    scroll element into view    ${CompanyDetailsPageDelAddressSuburbErrorMessage}
    wait until element is visible    ${CompanyDetailsPageDelAddressSuburbErrorMessage}    10
    capture element screenshot    ${CompanyDetailsPageDelAddressSuburbErrorMessage}

    scroll element into view    ${CompanyDetailsPageDelAddressPostalCodeErrorMessage}
    wait until element is visible    ${CompanyDetailsPageDelAddressPostalCodeErrorMessage}   10
    capture element screenshot    ${CompanyDetailsPageDelAddressPostalCodeErrorMessage}

    scroll element into view    ${CompanyDetailsPageCompPhoneNumErrorMessage}
    wait until element is visible    ${CompanyDetailsPageCompPhoneNumErrorMessage}    10
    capture element screenshot    ${CompanyDetailsPageCompPhoneNumErrorMessage}

    scroll element into view    ${CompanyDetailsPageContFNErrorMessage}
    wait until element is visible    ${CompanyDetailsPageContFNErrorMessage}    10
    capture element screenshot    ${CompanyDetailsPageContFNErrorMessage}

    scroll element into view    ${CompanyDetailsPageContLNErrorMessage}
    wait until element is visible    ${CompanyDetailsPageContLNErrorMessage}    10
    capture element screenshot    ${CompanyDetailsPageContLNErrorMessage}

    sleep    2





