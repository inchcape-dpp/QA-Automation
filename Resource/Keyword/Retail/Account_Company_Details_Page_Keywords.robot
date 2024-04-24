*** Settings ***
Documentation    Suite description

Library    SeleniumLibrary

#Resource    ../../../Resource/testdata/config.robot
Resource    ../../../Resource/testdata/Retail/Retail_Variable.robot
Resource    ../../../Resource/testdata/credentials.robot


*** Keywords ***
#-----------------------------------------------------Retail Company Details Page---------------------------------------
User should be able to view company details page
    wait until element is visible    ${Retail_AccountpageCompanyMenu}    10
    click element    ${Retail_AccountpageCompanyMenu}
    wait until element is visible    ${Retail_AccountpageCompanyDetails}    10
    click element    ${Retail_AccountpageCompanyDetails}
    wait until element is visible    ${Retail_AccountCompanyDetailsPagePanelContainer}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPagePanelHeader}    10

    wait until element is visible    ${Retail_AccountCompanyDetailsPagePrefSupplierLabel}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPageAccNumLabel}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPageCompanyNameLabel}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPageTradingNameLabel}    10
	wait until element is visible    ${Retail_AccountCompanyDetailsPagePostalAddressLabel}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPagePostalAddressAddLine1Label}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPagePostalAddressAddLine2Label}    10

    wait until element is visible    ${Retail_AccountCompanyDetailsPageAccNumTextBox}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPageCompanyNameTextBox}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPageTradingNameTextBox}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPagePostalAddressAddLine1TextBox}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPagePostalAddressAddLine2TextBox}    10

    wait until element is visible    ${Retail_AccountCompanyDetailsPagePreferredSupplierComboBox}    10

    capture element screenshot    ${Retail_AccountCompanyDetailsPageCompanyNameLabel}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageTradingNameLabel}
    capture element screenshot    ${Retail_AccountCompanyDetailsPagePostalAddressLabel}
    capture element screenshot    ${Retail_AccountCompanyDetailsPagePostalAddressAddLine1Label}
    capture element screenshot    ${Retail_AccountCompanyDetailsPagePostalAddressAddLine2Label}

    capture element screenshot    ${Retail_AccountCompanyDetailsPageCompanyNameTextBox}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageTradingNameTextBox}
    capture element screenshot    ${Retail_AccountCompanyDetailsPagePostalAddressAddLine1TextBox}
    capture element screenshot    ${Retail_AccountCompanyDetailsPagePostalAddressAddLine2TextBox}

    capture element screenshot    ${Retail_AccountCompanyDetailsPagePreferredSupplierComboBox}

    capture page screenshot

    scroll element into view    ${Retail_AccountCompanyDetailsPageEmailAddLabel}

    wait until element is visible    ${Retail_AccountCompanyDetailsPagePostalAddressSuburbLabel}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPagePostalAddressPostalCodeLabel}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPagePostalAddressStateLabel}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPageDelSameAsPostalLabel}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPageDelAddressLabel}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPageDelAddressAddLine1Label}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPageDelAddressAddLine2Label}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPageDelAddressSuburbLabel}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPageDelAddressPostalCodeLabel}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPageDelAddressStateLabel}    10

    wait until element is visible    ${Retail_AccountCompanyDetailsPagePostalAddressSuburbTextBox}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPagePostalAddressPostalCodeTextBox}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPageDelAddressAddLine1TextBox}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPageDelAddressAddLine2TextBox}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPageDelAddressSuburbTextBox}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPageDelAddressPostalCodeTextBox}    10

    wait until element is visible    ${Retail_AccountCompanyDetailsPageDelSameAsPostalCheckBox}    10

    wait until element is visible    ${Retail_AccountCompanyDetailsPagePostalStateComboBox}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPagePostalStateComboBoxArrow}    10

    wait until element is visible    ${Retail_AccountCompanyDetailsPageDelStateComboBox}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPageDelStateComboBoxArrow}    10

    capture element screenshot    ${Retail_AccountCompanyDetailsPagePostalAddressSuburbLabel}
    capture element screenshot    ${Retail_AccountCompanyDetailsPagePostalAddressPostalCodeLabel}
    capture element screenshot    ${Retail_AccountCompanyDetailsPagePostalAddressStateLabel}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageDelSameAsPostalLabel}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageDelAddressLabel}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageDelAddressAddLine1Label}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageDelAddressAddLine2Label}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageDelAddressSuburbLabel}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageDelAddressPostalCodeLabel}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageDelAddressStateLabel}

    capture element screenshot    ${Retail_AccountCompanyDetailsPagePostalAddressSuburbTextBox}
    capture element screenshot    ${Retail_AccountCompanyDetailsPagePostalAddressPostalCodeTextBox}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageDelAddressAddLine1TextBox}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageDelAddressAddLine2TextBox}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageDelAddressSuburbTextBox}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageDelAddressPostalCodeTextBox}

    capture element screenshot    ${Retail_AccountCompanyDetailsPageDelSameAsPostalCheckBox}

    capture element screenshot    ${Retail_AccountCompanyDetailsPagePostalStateComboBox}
    capture element screenshot    ${Retail_AccountCompanyDetailsPagePostalStateComboBoxArrow}

    capture element screenshot    ${Retail_AccountCompanyDetailsPageDelStateComboBox}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageDelStateComboBoxArrow}

    capture page screenshot

    scroll element into view    ${Retail_AccountCompanyDetailsPageOpeningHoursComboBox}

    wait until element is visible    ${Retail_AccountCompanyDetailsPageEmailAddLabel}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPageCompPhoneNumLabel}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPageContFNLabel}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPageContLNLabel}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPageRadioABNLabel}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPageRadioACNLabel}    10
#    wait until element is visible    ${Retail_AccountCompanyDetailsPageABNLabel}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPageOpeningLabel}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPageClosingLabel}    10

    wait until element is visible    ${Retail_AccountCompanyDetailsPageEmailAddTextBox}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPageCompPhoneNumTextBox}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPageContFNTextBox}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPageContLNTextBox}    10
#    wait until element is visible    ${Retail_AccountCompanyDetailsPageABNTextBox}    10

    wait until element is visible    ${Retail_AccountCompanyDetailsPageRadioABNRadioButton}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPageRadioACNRadioButton}    10

#    wait until element is visible    ${Retail_AccountCompanyDetailsPageCancelButton}    10
#    wait until element is visible    ${Retail_AccountCompanyDetailsPageSubmitButton}    10

    capture element screenshot    ${Retail_AccountCompanyDetailsPageEmailAddLabel}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageCompPhoneNumLabel}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageContFNLabel}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageContLNLabel}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageRadioABNLabel}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageRadioACNLabel}
#    capture element screenshot    ${Retail_AccountCompanyDetailsPageABNLabel}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageOpeningLabel}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageClosingLabel}

    capture element screenshot    ${Retail_AccountCompanyDetailsPageEmailAddTextBox}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageCompPhoneNumTextBox}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageContFNTextBox}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageContLNTextBox}
#    capture element screenshot    ${Retail_AccountCompanyDetailsPageABNTextBox}

    capture element screenshot    ${Retail_AccountCompanyDetailsPageRadioABNRadioButton}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageRadioACNRadioButton}

#    capture element screenshot    ${Retail_AccountCompanyDetailsPageCancelButton}
#    capture element screenshot    ${Retail_AccountCompanyDetailsPageSubmitButton}

    capture page screenshot
    sleep    2


User should be able to input valid Account number in Retail Account Company Details Page
    wait until element is visible    ${Retail_AccountCompanyDetailsPageAccNumTextBox}    10
    clear element text    ${Retail_AccountCompanyDetailsPageAccNumTextBox}
    input text    ${Retail_AccountCompanyDetailsPageAccNumTextBox}    ${Retail_AccountCompanyDetailsPageAccountNumberTextBoxValidText}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageAccNumTextBox}
    sleep    2

User should be able to input valid Company name in Retail Account Company Details Page
    wait until element is visible    ${Retail_AccountCompanyDetailsPageCompanyNameTextBox}    10
    clear element text    ${Retail_AccountCompanyDetailsPageCompanyNameTextBox}
    input text    ${Retail_AccountCompanyDetailsPageCompanyNameTextBox}    ${Retail_AccountCompanyDetailsPageCompanyNameTextBoxValidText}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageCompanyNameTextBox}
    sleep    2

User should be able to input valid Trading Name in Retail Account Company Details Page
    wait until element is visible    ${Retail_AccountCompanyDetailsPageTradingNameTextBox}    10
    clear element text    ${Retail_AccountCompanyDetailsPageTradingNameTextBox}
    input text    ${Retail_AccountCompanyDetailsPageTradingNameTextBox}    ${Retail_AccountCompanyDetailsPageTradingNameTextBoxValidText}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageTradingNameTextBox}
    sleep    2

User should be able to input valid Postal Address Line 1 in Retail Account Company Details Page
    wait until element is visible    ${Retail_AccountCompanyDetailsPagePostalAddressAddLine1TextBox}    10
    clear element text    ${Retail_AccountCompanyDetailsPagePostalAddressAddLine1TextBox}
    input text    ${Retail_AccountCompanyDetailsPagePostalAddressAddLine1TextBox}    ${Retail_AccountCompanyDetailsPagePostalAddressAddLine1ValidText}
    capture element screenshot    ${Retail_AccountCompanyDetailsPagePostalAddressAddLine1TextBox}
    sleep    2

User should be able to input valid Postal Address Line 2 in Retail Account Company Details Page
    wait until element is visible    ${Retail_AccountCompanyDetailsPagePostalAddressAddLine2TextBox}    10
    clear element text    ${Retail_AccountCompanyDetailsPagePostalAddressAddLine2TextBox}
    input text    ${Retail_AccountCompanyDetailsPagePostalAddressAddLine2TextBox}    ${Retail_AccountCompanyDetailsPagePostalAddressAddLine2ValidText}
    capture element screenshot    ${Retail_AccountCompanyDetailsPagePostalAddressAddLine2TextBox}
    sleep    2

User should be able to input valid Postal Suburb in Retail Account Company Details Page
    wait until element is visible    ${Retail_AccountCompanyDetailsPagePostalAddressSuburbTextBox}    10
    clear element text    ${Retail_AccountCompanyDetailsPagePostalAddressSuburbTextBox}
    input text    ${Retail_AccountCompanyDetailsPagePostalAddressSuburbTextBox}    ${Retail_AccountCompanyDetailsPagePostalAddressSuburbValidText}
    capture element screenshot    ${Retail_AccountCompanyDetailsPagePostalAddressSuburbTextBox}
    sleep    2

User should be able to input valid Postal Code in Retail Account Company Details Page
    wait until element is visible    ${Retail_AccountCompanyDetailsPagePostalAddressPostalCodeTextBox}    10
    clear element text    ${Retail_AccountCompanyDetailsPagePostalAddressPostalCodeTextBox}
    input text    ${Retail_AccountCompanyDetailsPagePostalAddressPostalCodeTextBox}    ${Retail_AccountCompanyDetailsPagePostalAddressPostalCodeValidText}
    capture element screenshot    ${Retail_AccountCompanyDetailsPagePostalAddressPostalCodeTextBox}
    sleep    2

User should be able to input valid Delivery Address Line 1 in Retail Account Company Details Page
    wait until element is visible    ${Retail_AccountCompanyDetailsPageDelAddressAddLine1TextBox}    10
    clear element text    ${Retail_AccountCompanyDetailsPageDelAddressAddLine1TextBox}
    input text    ${Retail_AccountCompanyDetailsPageDelAddressAddLine1TextBox}    ${Retail_AccountCompanyDetailsPageDelAddressAddLine1ValidText}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageDelAddressAddLine1TextBox}
    sleep    2

User should be able to input valid Delivery Address Line 2 in Retail Account Company Details Page
    wait until element is visible    ${Retail_AccountCompanyDetailsPageDelAddressAddLine2TextBox}    10
    clear element text    ${Retail_AccountCompanyDetailsPageDelAddressAddLine2TextBox}
    input text    ${Retail_AccountCompanyDetailsPageDelAddressAddLine2TextBox}    ${Retail_AccountCompanyDetailsPageDelAddressAddLine2ValidText}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageDelAddressAddLine2TextBox}
    sleep    2

User should be able to input valid Delivery Suburb in Retail Account Company Details Page
    wait until element is visible    ${Retail_AccountCompanyDetailsPageDelAddressSuburbTextBox}    10
    clear element text    ${Retail_AccountCompanyDetailsPageDelAddressSuburbTextBox}
    input text    ${Retail_AccountCompanyDetailsPageDelAddressSuburbTextBox}    ${Retail_AccountCompanyDetailsPageDelAddressSuburbValidText}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageDelAddressSuburbTextBox}
    sleep    2

User should be able to input valid Delivery Code in Retail Account Company Details Page
    wait until element is visible    ${Retail_AccountCompanyDetailsPageDelAddressPostalCodeTextBox}    10
    clear element text    ${Retail_AccountCompanyDetailsPageDelAddressPostalCodeTextBox}
    input text    ${Retail_AccountCompanyDetailsPageDelAddressPostalCodeTextBox}    ${Retail_AccountCompanyDetailsPageDelAddressPostalCodeValidText}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageDelAddressPostalCodeTextBox}
    sleep    2

User should be able to input valid Email Address in Retail Account Company Details Page
    wait until element is visible    ${Retail_AccountCompanyDetailsPageEmailAddTextBox}    10
    clear element text    ${Retail_AccountCompanyDetailsPageEmailAddTextBox}
    input text    ${Retail_AccountCompanyDetailsPageEmailAddTextBox}     ${Retail_AccountCompanyDetailsPageEmailAddValidText}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageEmailAddTextBox}
    sleep    2

User should be able to input valid Company Phone Number in Retail Account Company Details Page
    wait until element is visible    ${Retail_AccountCompanyDetailsPageCompPhoneNumTextBox}    10
    clear element text    ${Retail_AccountCompanyDetailsPageCompPhoneNumTextBox}
    input text    ${Retail_AccountCompanyDetailsPageCompPhoneNumTextBox}    ${Retail_AccountCompanyDetailsPageCompPhoneNumValidText}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageCompPhoneNumTextBox}
    sleep    2

User should be able to input valid First Name in Retail Account Company Details Page
    wait until element is visible    ${Retail_AccountCompanyDetailsPageContFNTextBox}    10
    clear element text    ${Retail_AccountCompanyDetailsPageContFNTextBox}
    input text    ${Retail_AccountCompanyDetailsPageContFNTextBox}    ${Retail_AccountCompanyDetailsPageContFNValidText}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageContFNTextBox}
    sleep    2

User should be able to input valid Last Name in Retail Account Company Details Page
    wait until element is visible    ${Retail_AccountCompanyDetailsPageContLNTextBox}    10
    clear element text    ${Retail_AccountCompanyDetailsPageContLNTextBox}
    input text    ${Retail_AccountCompanyDetailsPageContLNTextBox}    ${Retail_AccountCompanyDetailsPageContLNValidText}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageContLNTextBox}
    sleep    2

User should be able to click Postal Address State Drop Down in Retail Account Company Details Page
    wait until element is visible    ${Retail_AccountCompanyDetailsPagePostalStateComboBox}    10
    click element    ${Retail_AccountCompanyDetailsPagePostalStateComboBox}
    capture element screenshot    ${Retail_AccountCompanyDetailsPagePostalStateComboBox}
    sleep    2

User should be able to click Delivery Address State Drop Down in Retail Account Company Details Page
    wait until element is visible    ${Retail_AccountCompanyDetailsPageDelStateComboBox}    10
    click element    ${Retail_AccountCompanyDetailsPageDelStateComboBox}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageDelStateComboBox}
    sleep    2

User should be able to select Postal Address State in Retail Account Company Details Page
    wait until element is visible    ${Retail_AccountCompanyDetailsPagePostalStateValue}    10
    click element    ${Retail_AccountCompanyDetailsPagePostalStateValue}
#    capture element screenshot    ${Retail_AccountCompanyDetailsPagePostalStateValue}
    sleep    2

User should be able to select Postal Address District in HK Retail Account Company Details Page
    wait until element is visible    ${Retail_HK_AccountCompanyDetailsPagePostalDistrictValue}    10
    click element    ${Retail_HK_AccountCompanyDetailsPagePostalDistrictValue}
#    capture element screenshot    ${Retail_AccountCompanyDetailsPagePostalStateValue}
    sleep    2

User should be able to select Delivery Address State in Retail Account Company Details Page
    wait until element is visible    ${Retail_AccountCompanyDetailsPageDelStateValue}    10
    click element    ${Retail_AccountCompanyDetailsPageDelStateValue}
#    capture element screenshot    ${Retail_AccountCompanyDetailsPageDelStateValue}
    sleep    2

User should be able to select Delivery Address District in HK Retail Account Company Details Page
    wait until element is visible    ${Retail_HK_AccountCompanyDetailsPageDelDistrictValue}    10
    click element    ${Retail_HK_AccountCompanyDetailsPageDelDistrictValue}
#    capture element screenshot    ${Retail_AccountCompanyDetailsPagePostalStateValue}
    sleep    2

User should be able to check/uncheck Del Add Same As Postal Add Checkbox in Retail Account Company Details Page
    wait until element is visible    ${Retail_AccountCompanyDetailsPageDelSameAsPostalCheckBox}    10
    click element    ${Retail_AccountCompanyDetailsPageDelSameAsPostalCheckBox}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageDelSameAsPostalCheckBox}
    sleep    2

User should be able to click opening hours in Retail Account Company Details Page
    wait until element is visible    ${Retail_AccountCompanyDetailsPageOpeningHoursComboBox}    10
    click element    ${Retail_AccountCompanyDetailsPageOpeningHoursComboBox}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageOpeningHoursComboBox}
    sleep    2

User should be able to click closing hours in Retail Account Company Details Page
    wait until element is visible    ${Retail_AccountCompanyDetailsPageClosingHoursComboBox}    10
    click element    ${Retail_AccountCompanyDetailsPageClosingHoursComboBox}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageClosingHoursComboBox}
    sleep    2

User should be able to select opening hours value in Retail Account Company Details Page
    wait until element is visible    ${Retail_AccountCompanyDetailsPageOpeningHoursComboBoxValue}    10
    click element    ${Retail_AccountCompanyDetailsPageOpeningHoursComboBoxValue}
#    capture element screenshot    ${Retail_AccountCompanyDetailsPageOpeningHoursComboBoxValue}
    sleep    2

User should be able to select closing hours value in Retail Account Company Details Page
    wait until element is visible    ${Retail_AccountCompanyDetailsPageClosingHoursComboBoxValue}    10
    click element    ${Retail_AccountCompanyDetailsPageClosingHoursComboBoxValue}
#    capture element screenshot    ${Retail_AccountCompanyDetailsPageClosingHoursComboBoxValue}
    sleep    2

User should be able to click cancel button in Retail Account Company Details Page
    wait until element is visible    ${Retail_AccountCompanyDetailsPageCancelButton}    10
    click element    ${Retail_AccountCompanyDetailsPageCancelButton}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageCancelButton}
    sleep    2

User should be able to click save button in Retail Account Company Details Page
    wait until element is visible    ${Retail_AccountCompanyDetailsPageSubmitButton}    10
    click element    ${Retail_AccountCompanyDetailsPageSubmitButton}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageSubmitButton}
    sleep    2

User should be able to click no on update cofirmation modal in Retail Account Company Details Page
    wait until element is visible    ${Retail_AccountCompanyDetailsPageConfirmationNoButton}    10
    capture element screenshot    ${Retail_AccountCompanyDetailsPageConfirmationNoButton}
    click element    ${Retail_AccountCompanyDetailsPageConfirmationNoButton}
    sleep    2

User should be able to click yes on update cofirmation modal in Retail Account Company Details Page
    wait until element is visible    ${Retail_AccountCompanyDetailsPagesConfirmationYesButton}    10
    capture element screenshot    ${Retail_AccountCompanyDetailsPagesConfirmationYesButton}
    click element    ${Retail_AccountCompanyDetailsPagesConfirmationYesButton}
    sleep    2

User should be able to view error messages in Retail Account Company Details Page
    clear element text    ${Retail_AccountCompanyDetailsPageCompanyNameTextBox}
    clear element text    ${Retail_AccountCompanyDetailsPagePostalAddressAddLine1TextBox}
    clear element text    ${Retail_AccountCompanyDetailsPagePostalAddressSuburbTextBox}
    clear element text    ${Retail_AccountCompanyDetailsPagePostalAddressPostalCodeTextBox}
    clear element text    ${Retail_AccountCompanyDetailsPageDelAddressAddLine1TextBox}
    clear element text    ${Retail_AccountCompanyDetailsPageDelAddressSuburbTextBox}
    clear element text    ${Retail_AccountCompanyDetailsPageDelAddressPostalCodeTextBox}
    clear element text    ${Retail_AccountCompanyDetailsPageCompPhoneNumTextBox}
    clear element text    ${Retail_AccountCompanyDetailsPageContFNTextBox}
    clear element text    ${Retail_AccountCompanyDetailsPageContLNTextBox}

    wait until element is visible    ${Retail_AccountCompanyDetailsPageCompanyNameErrorMessage}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPagePostalAddressAddLine1ErrorMessage}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPagePostalAddressSuburbErrorMessage}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPagePostalAddressPostalCodeErrorMessage}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPageDelAddressAddLine1ErrorMessage}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPageDelAddressSuburbErrorMessage}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPageDelAddressPostalCodeErrorMessage}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPageCompPhoneNumErrorMessage}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPageContFNErrorMessage}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPageContLNErrorMessage}    10

    capture element screenshot    ${Retail_AccountCompanyDetailsPageCompanyNameErrorMessage}
    capture element screenshot    ${Retail_AccountCompanyDetailsPagePostalAddressAddLine1ErrorMessage}
    capture element screenshot    ${Retail_AccountCompanyDetailsPagePostalAddressSuburbErrorMessage}
    capture element screenshot    ${Retail_AccountCompanyDetailsPagePostalAddressPostalCodeErrorMessage}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageDelAddressAddLine1ErrorMessage}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageDelAddressSuburbErrorMessage}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageDelAddressPostalCodeErrorMessage}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageCompPhoneNumErrorMessage}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageContFNErrorMessage}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageContLNErrorMessage}

    sleep    2


#----------------------------------------------------------HK-----------------------------------------------------------
User should be able to view HK company details page
    wait until element is visible    ${Retail_AccountpageCompanyMenu}    10
    click element    ${Retail_AccountpageCompanyMenu}
    wait until element is visible    ${Retail_AccountpageCompanyDetails}    10
    click element    ${Retail_AccountpageCompanyDetails}
    wait until element is visible    ${Retail_AccountCompanyDetailsPagePanelContainer}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPagePanelHeader}    10

    scroll element into view    ${Retail_AccountCompanyDetailsPagePanelHeader}

    wait until element is visible    ${Retail_AccountCompanyDetailsPageAccNumLabel}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPageCompanyNameLabel}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPagePostalAddressLabel}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPagePostalAddressAddLine2Label}    10
    wait until element is visible    ${Retail_HK_AccountCompanyDetailsPage_PostalAddress_Area_Label}    10
    wait until element is visible    ${Retail_HK_AccountCompanyDetailsPage_PostalAddress_District_Label}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPageDelSameAsPostalLabel}    10

    wait until element is visible    ${Retail_HK_AccountCompanyDetailsPage_MemberNumber_TextBox}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPageCompanyNameTextBox}    10
    wait until element is visible    ${Retail_HK_AccountCompanyDetailsPage_PostalAddress_TextBox}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPagePostalAddressAddLine2TextBox}    10

    wait until element is visible    ${Retail_HK_AccountCompanyDetailsPage_Postal_Area_ComboBox}    10
    wait until element is visible    ${Retail_HK_AccountCompanyDetailsPage_Postal_District_ComboBox}    10

    capture element screenshot    ${Retail_AccountCompanyDetailsPageAccNumLabel}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageCompanyNameLabel}
    capture element screenshot    ${Retail_AccountCompanyDetailsPagePostalAddressLabel}
    capture element screenshot    ${Retail_AccountCompanyDetailsPagePostalAddressAddLine2Label}
    capture element screenshot    ${Retail_HK_AccountCompanyDetailsPage_PostalAddress_Area_Label}
    capture element screenshot    ${Retail_HK_AccountCompanyDetailsPage_PostalAddress_District_Label}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageDelSameAsPostalLabel}

    capture element screenshot    ${Retail_HK_AccountCompanyDetailsPage_MemberNumber_TextBox}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageCompanyNameTextBox}
    capture element screenshot    ${Retail_HK_AccountCompanyDetailsPage_PostalAddress_TextBox}
    capture element screenshot    ${Retail_AccountCompanyDetailsPagePostalAddressAddLine2TextBox}

    capture element screenshot    ${Retail_HK_AccountCompanyDetailsPage_Postal_Area_ComboBox}
    capture element screenshot    ${Retail_HK_AccountCompanyDetailsPage_Postal_District_ComboBox}

#    run keyword and continue on failure    User should be able to check/uncheck Del Add Same As Postal Add Checkbox in Retail Account Company Details Page

    scroll element into view    ${Retail_AccountCompanyDetailsPageOpeningHoursComboBox}

    wait until element is visible    ${Retail_AccountCompanyDetailsPageDelAddressLabel}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPageDelAddressAddLine2Label}    10
    wait until element is visible    ${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_Area_Label}    10
    wait until element is visible    ${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_District_Label}    10

    wait until element is visible    ${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_TextBox}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPageDelAddressAddLine2TextBox}    10

    wait until element is visible    ${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_Area_ComboBox}    10
    wait until element is visible    ${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_District_ComboBox}     10

    capture element screenshot    ${Retail_AccountCompanyDetailsPageDelAddressLabel}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageDelAddressAddLine2Label}
    capture element screenshot    ${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_Area_Label}
    capture element screenshot    ${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_District_Label}

    capture element screenshot    ${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_TextBox}
    capture element screenshot     ${Retail_AccountCompanyDetailsPageDelAddressAddLine2TextBox}

    capture element screenshot    ${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_Area_ComboBox}
    capture element screenshot    ${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_District_ComboBox}

    scroll element into view    ${Retail_AccountCompanyDetailsPageCancelButton}

    wait until element is visible    ${Retail_AccountCompanyDetailsPageOpeningLabel}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPageClosingLabel}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPageContFNLabel}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPageContLNLabel}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPageEmailAddLabel}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPageCompPhoneNumLabel}    10
    wait until element is visible    ${Retail_HK_AccountCompanyDetailsPage_Landline_Label}    10

    wait until element is visible    ${Retail_AccountCompanyDetailsPageOpeningHoursComboBox}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPageClosingHoursComboBox}    10

    wait until element is visible    ${Retail_AccountCompanyDetailsPageContFNTextBox}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPageContLNTextBox}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPageEmailAddTextBox}    10
    wait until element is visible    ${Retail_HK_AccountCompanyDetailsPage_CompanyPhone_TextBox}    10
    wait until element is visible    ${Retail_HK_AccountCompanyDetailsPage_Landline_TextBox}    10

    wait until element is visible    ${Retail_AccountCompanyDetailsPageCancelButton}    10
    wait until element is visible    ${Retail_AccountCompanyDetailsPageSubmitButton}    10

    capture element screenshot    ${Retail_AccountCompanyDetailsPageOpeningLabel}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageClosingLabel}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageContFNLabel}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageContLNLabel}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageEmailAddLabel}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageCompPhoneNumLabel}
    capture element screenshot    ${Retail_HK_AccountCompanyDetailsPage_Landline_Label}

    capture element screenshot    ${Retail_AccountCompanyDetailsPageOpeningHoursComboBox}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageClosingHoursComboBox}

    capture element screenshot    ${Retail_AccountCompanyDetailsPageContFNTextBox}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageContLNTextBox}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageEmailAddTextBox}
    capture element screenshot    ${Retail_HK_AccountCompanyDetailsPage_CompanyPhone_TextBox}
    capture element screenshot    ${Retail_HK_AccountCompanyDetailsPage_Landline_TextBox}

    capture element screenshot    ${Retail_AccountCompanyDetailsPageCancelButton}
    capture element screenshot    ${Retail_AccountCompanyDetailsPageSubmitButton}

    scroll element into view    ${Retail_AccountCompanyDetailsPagePanelHeader}

    sleep    2

User should be able to click Postal Address Dropdown for HK Retail Account Company Details Page
    wait until element is visible    ${Retail_HK_AccountCompanyDetailsPage_PostalAddress_TextBox}    10
    capture element screenshot    ${Retail_HK_AccountCompanyDetailsPage_PostalAddress_TextBox}
    click element    ${Retail_HK_AccountCompanyDetailsPage_PostalAddress_TextBox}
    sleep    2

User should be able to click clear Postal Address Dropdown for HK Retail Account Company Details Page
    wait until element is visible    ${Retail_HK_AccountCompanyDetailsPage_PostalAddress_TextBox_Clear_Button}    10
    capture element screenshot    ${Retail_HK_AccountCompanyDetailsPage_PostalAddress_TextBox_Clear_Button}
    click element    ${Retail_HK_AccountCompanyDetailsPage_PostalAddress_TextBox_Clear_Button}
    sleep    2

User should be able to input text in Postal Address for HK Retail Account Company Details Page
    wait until element is visible    ${Retail_HK_AccountCompanyDetailsPage_PostalAddress_TextBox}    10
    clear element text    ${Retail_HK_AccountCompanyDetailsPage_PostalAddress_TextBox}
    input text    ${Retail_HK_AccountCompanyDetailsPage_PostalAddress_TextBox}    ${Retail_HK_RegistrationPostalAddLine1Value}
    capture element screenshot    ${Retail_HK_AccountCompanyDetailsPage_PostalAddress_TextBox}
    sleep    2

User should be able to input manual text in Postal Address for HK Retail Account Company Details Page
    wait until element is visible    ${Retail_HK_AccountCompanyDetailsPage_PostalAddress_TextBox}    10
    clear element text    ${Retail_HK_AccountCompanyDetailsPage_PostalAddress_TextBox}
    input text    ${Retail_HK_AccountCompanyDetailsPage_PostalAddress_TextBox}    ${Retail_HK_RegistrationManualPostalAddLine1Value}
    capture element screenshot    ${Retail_HK_AccountCompanyDetailsPage_PostalAddress_TextBox}
    sleep    2

User should be able to click manual Postal Address Dropdown for HK Retail Account Company Details Page
    wait until element is visible    ${Retail_HK_AccountCompanyDetailsPage_PostalAddress_Manual_Container}    10
    capture element screenshot    ${Retail_HK_AccountCompanyDetailsPage_PostalAddress_Manual_Container}
    click element    ${Retail_HK_AccountCompanyDetailsPage_PostalAddress_Manual_Container}
    sleep    2

User should be able to select Random Postal Address from suggestions for HK Retail Account Company Details Page
    wait until element is visible    ${Retail_HK_AccountCompanyDetailsPage_PostalAddress_Options_Container}    10
    ${PostalAddressCount}    get element count    ${Retail_HK_AccountCompanyDetailsPage_PostalAddress_Options_Container}
    ${PostalAddressRanIndex}    evaluate    random.randint(2,${PostalAddressCount})
    mouse over    ${Retail_HK_AccountCompanyDetailsPage_PostalAddress_Options_Container}
    scroll element into view    (//form//div[@formgroupname='postalAddress']//ng-dropdown-panel//div//div[@role='option'])[${PostalAddressRanIndex}]
    capture element screenshot    (//form//div[@formgroupname='postalAddress']//ng-dropdown-panel//div//div[@role='option'])[${PostalAddressRanIndex}]
    click element    (//form//div[@formgroupname='postalAddress']//ng-dropdown-panel//div//div[@role='option'])[${PostalAddressRanIndex}]
    sleep    2

User should be able to click Area Dropdown in Postal Address for HK Retail Account Company Details Page
    wait until element is visible    ${Retail_HK_AccountCompanyDetailsPage_Postal_Area_ComboBox}    10
    capture element screenshot    ${Retail_HK_AccountCompanyDetailsPage_Postal_Area_ComboBox}
    click element    ${Retail_HK_AccountCompanyDetailsPage_Postal_Area_ComboBox}
    sleep    2

User should be able to select Random Postal Address Area for HK Retail Account Company Details Page
    wait until element is visible    ${Retail_HK_AccountCompanyDetailsPage_Postal_Area_ComboBox_Container}    10
    ${PostalAreaCount}    get element count    ${Retail_HK_AccountCompanyDetailsPage_Postal_Area_ComboBox_Container}
    ${PostalAreaRanIndex}    evaluate    random.randint(1,${PostalAreaCount})
    mouse over    ${Retail_HK_AccountCompanyDetailsPage_Postal_Area_ComboBox_Container}
    scroll element into view    (//form//div[@formgroupname='postalAddress']//ng-select[@formcontrolname='area']//ng-dropdown-panel//div//div[@role='option'])[${PostalAreaRanIndex}]
    capture element screenshot    (//form//div[@formgroupname='postalAddress']//ng-select[@formcontrolname='area']//ng-dropdown-panel//div//div[@role='option'])[${PostalAreaRanIndex}]
    click element    (//form//div[@formgroupname='postalAddress']//ng-select[@formcontrolname='area']//ng-dropdown-panel//div//div[@role='option'])[${PostalAreaRanIndex}]
    sleep    2

User should be able to click District Dropdown in Postal Address for HK Retail Account Company Details Page
    wait until element is visible    ${Retail_HK_AccountCompanyDetailsPage_Postal_District_ComboBox}    10
    capture element screenshot    ${Retail_HK_AccountCompanyDetailsPage_Postal_District_ComboBox}
    click element    ${Retail_HK_AccountCompanyDetailsPage_Postal_District_ComboBox}
    sleep    2

User should be able to select Random Postal Address District for HK Retail Account Company Details Page
    wait until element is visible    ${Retail_HK_AccountCompanyDetailsPage_Postal_District_ComboBox_Container}    10
    ${PostalDistrictCount}    get element count    ${Retail_HK_AccountCompanyDetailsPage_Postal_District_ComboBox_Container}
    ${PostalDistrictRanIndex}    evaluate    random.randint(1,${PostalDistrictCount})
    mouse over    ${Retail_HK_AccountCompanyDetailsPage_Postal_District_ComboBox_Container}
    scroll element into view    (//form//div[@formgroupname='postalAddress']//ng-select[@formcontrolname='district']//ng-dropdown-panel//div//div[@role='option'])[${PostalDistrictRanIndex}]
    capture element screenshot    (//form//div[@formgroupname='postalAddress']//ng-select[@formcontrolname='district']//ng-dropdown-panel//div//div[@role='option'])[${PostalDistrictRanIndex}]
    click element    (//form//div[@formgroupname='postalAddress']//ng-select[@formcontrolname='district']//ng-dropdown-panel//div//div[@role='option'])[${PostalDistrictRanIndex}]
    sleep    2

User should be able to click Delivery Address Dropdown for HK Retail Account Company Details Page
    wait until element is visible    ${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_TextBox}   10
    capture element screenshot    ${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_TextBox}
    click element    ${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_TextBox}
    sleep    2

User should be able to click clear Delivery Address Dropdown for HK Retail Account Company Details Page
    wait until element is visible    ${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_TextBox_Clear_Button}    10
    capture element screenshot    ${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_TextBox_Clear_Button}
    click element    ${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_TextBox_Clear_Button}
    sleep    2

User should be able to input text in Deliver Address for HK Retail Account Company Details Page
    wait until element is visible    ${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_TextBox}    10
    clear element text    ${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_TextBox}
    input text    ${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_TextBox}    ${Retail_HK_RegistrationDelAddLine1Value}
    capture element screenshot    ${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_TextBox}
    sleep    2

User should be able to input manual text in Deliver Address for HK Retail Account Company Details Page
    wait until element is visible    ${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_TextBox}    10
    clear element text    ${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_TextBox}
    input text    ${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_TextBox}    ${Retail_HK_RegistrationManualDelAddLine1Value}
    capture element screenshot    ${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_TextBox}
    sleep    2

User should be able to click manual Deliver Address Dropdown for HK Retail Account Company Details Page
    wait until element is visible    ${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_Manual_Container}    10
    capture element screenshot    ${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_Manual_Container}
    click element    ${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_Manual_Container}
    sleep    2

User should be able to select Random Delivery Address from suggestions for HK Retail Account Company Details Page
    wait until element is visible    ${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_Options_Container}    10
    ${DelAddressCount}    get element count    ${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_Options_Container}
    ${DelAddressRanIndex}    evaluate    random.randint(2,${DelAddressCount})
    mouse over    ${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_Options_Container}
    scroll element into view    (//form//div[@formgroupname='deliveryAddress']//ng-dropdown-panel//div//div[@role='option'])[${DelAddressRanIndex}]
    capture element screenshot    (//form//div[@formgroupname='deliveryAddress']//ng-dropdown-panel//div//div[@role='option'])[${DelAddressRanIndex}]
    click element    (//form//div[@formgroupname='deliveryAddress']//ng-dropdown-panel//div//div[@role='option'])[${DelAddressRanIndex}]
    sleep    2

User should be able to click Area Dropdown in Delivery Address for HK Retail Account Company Details Page
    wait until element is visible    ${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_Area_ComboBox}    10
    capture element screenshot    ${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_Area_ComboBox}
    click element    ${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_Area_ComboBox}
    sleep    2

User should be able to select Random Delivery Address Area for HK Retail Account Company Details Page
    wait until element is visible    ${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_Area_ComboBox_Container}    10
    ${DelAreaCount}    get element count    ${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_Area_ComboBox_Container}
    ${DelAreaRanIndex}    evaluate    random.randint(1,${DelAreaCount})
    mouse over    ${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_Area_ComboBox_Container}
    scroll element into view    (//form//div[@formgroupname='deliveryAddress']//ng-select[@formcontrolname='area']//ng-dropdown-panel//div//div[@role='option'])[${DelAreaRanIndex}]
    capture element screenshot    (//form//div[@formgroupname='deliveryAddress']//ng-select[@formcontrolname='area']//ng-dropdown-panel//div//div[@role='option'])[${DelAreaRanIndex}]
    click element    (//form//div[@formgroupname='deliveryAddress']//ng-select[@formcontrolname='area']//ng-dropdown-panel//div//div[@role='option'])[${DelAreaRanIndex}]
    sleep    2

User should be able to click District Dropdown in Delivery Address for HK Retail Account Company Details Page
    wait until element is visible    ${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_District_ComboBox}    10
    capture element screenshot    ${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_District_ComboBox}
    click element    ${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_District_ComboBox}
    sleep    2

User should be able to select Random Delivery Address District for HK Retail Account Company Details Page
    wait until element is visible    ${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_District_ComboBox_Container}    10
    ${DelDistrictCount}    get element count    ${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_District_ComboBox_Container}
    ${DelDistrictRanIndex}    evaluate    random.randint(1,${DelDistrictCount})
    mouse over    ${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_District_ComboBox_Container}
    scroll element into view    (//form//div[@formgroupname='deliveryAddress']//ng-select[@formcontrolname='district']//ng-dropdown-panel//div//div[@role='option'])[${DelDistrictRanIndex}]
    capture element screenshot    (//form//div[@formgroupname='deliveryAddress']//ng-select[@formcontrolname='district']//ng-dropdown-panel//div//div[@role='option'])[${DelDistrictRanIndex}]
    click element    (//form//div[@formgroupname='deliveryAddress']//ng-select[@formcontrolname='district']//ng-dropdown-panel//div//div[@role='option'])[${DelDistrictRanIndex}]
    sleep    2

User should be able to input Company Phone Number for HK Retail Account Company Details Page
    scroll element into view    ${Retail_HK_AccountCompanyDetailsPage_CompanyPhone_TextBox}
    wait until element is visible    ${Retail_HK_AccountCompanyDetailsPage_CompanyPhone_TextBox}    10
    clear element text    ${Retail_HK_AccountCompanyDetailsPage_CompanyPhone_TextBox}
    input text    ${Retail_HK_AccountCompanyDetailsPage_CompanyPhone_TextBox}    ${Retail_HK_AccountCompanyDetailsPage_CompPhoneNumber_Valid_Text}
    capture element screenshot    ${Retail_HK_AccountCompanyDetailsPage_CompanyPhone_TextBox}
    sleep    2

User should be able to input Landline Number for HK Retail Account Company Details Page
    scroll element into view    ${Retail_HK_AccountCompanyDetailsPage_Landline_TextBox}
    wait until element is visible    ${Retail_HK_AccountCompanyDetailsPage_Landline_TextBox}    10
    clear element text    ${Retail_HK_AccountCompanyDetailsPage_Landline_TextBox}
    input text    ${Retail_HK_AccountCompanyDetailsPage_Landline_TextBox}    ${Retail_HK_AccountCompanyDetailsPage_LandlineNumber_Valid_Text}
    capture element screenshot    ${Retail_HK_AccountCompanyDetailsPage_Landline_TextBox}
    sleep    2















