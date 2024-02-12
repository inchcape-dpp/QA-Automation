*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary

#Resource  ../../../Resource/testdata/config.robot
Resource  ../../../Resource/testdata/Retail/Retail_Variable.robot
Resource  ../../../Resource/testdata/credentials.robot


*** Keywords ***
User should be albe to view Registration Page
    wait until element is visible    ${Retail_RegistrationPageBackToLoginButton}    10
    wait until element is visible    ${Retail_RegistrationPageLogo}    10
    wait until element is visible    ${Retail_RegistrationJoinPartsLaneHeader}    10
    wait until element is visible    ${Retail_RegistrationRegisteredSupplierLabel}    10
    wait until element is visible    ${Retail_RegistrationYesAccountLabel}    10
    wait until element is visible    ${Retail_RegistrationYesAccountSelectSupplierLabel}    10
    wait until element is visible    ${Retail_RegistrationNoAccountLabel}    10
    wait until element is visible    ${Retail_RegistrationNoAccountSelectSupplierLabel}    10

    wait until element is visible    ${Retail_RegistrationYesAccountComboBox}    10
    wait until element is visible    ${Retail_RegistrationNoAccountComboBox}    10

    capture element screenshot    ${Retail_RegistrationPageBackToLoginButton}
    capture element screenshot    ${Retail_RegistrationPageLogo}
    capture element screenshot    ${Retail_RegistrationJoinPartsLaneHeader}
    capture element screenshot    ${Retail_RegistrationRegisteredSupplierLabel}
    capture element screenshot    ${Retail_RegistrationYesAccountLabel}
    capture element screenshot    ${Retail_RegistrationYesAccountSelectSupplierLabel}
    capture element screenshot    ${Retail_RegistrationNoAccountLabel}
    capture element screenshot    ${Retail_RegistrationNoAccountSelectSupplierLabel}

    capture element screenshot    ${Retail_RegistrationYesAccountComboBox}
    capture element screenshot    ${Retail_RegistrationNoAccountComboBox}

User should be able to click select supplier dropdown
    wait until element is visible    ${Retail_RegistrationYesAccountComboBox}    10
    scroll element into view    ${Retail_RegistrationYesAccountComboBox}
    capture element screenshot    ${Retail_RegistrationYesAccountComboBox}
    click element    ${Retail_RegistrationYesAccountComboBox}
    sleep    2

User should be able to click select supplier to contact dropdown
    wait until element is visible    ${Retail_RegistrationNoAccountComboBox}    10
    scroll element into view    ${Retail_RegistrationNoAccountComboBox}
    capture element screenshot    ${Retail_RegistrationNoAccountComboBox}
    click element    ${Retail_RegistrationNoAccountComboBox}
    sleep    2

User should be able to select option from select supplier dropdown
    wait until element is visible    ${Retail_RegistrationYesAccountComboBoxOption1}    10
    capture element screenshot    ${Retail_RegistrationYesAccountComboBoxOption1}
    click element    ${Retail_RegistrationYesAccountComboBoxOption1}
    sleep    2

User should be able to select option from select supplier to contact dropdown
    wait until element is visible    ${Retail_RegistrationNoAccountComboBoxOption1}    10
    capture element screenshot    ${Retail_RegistrationNoAccountComboBoxOption1}
    click element    ${Retail_RegistrationNoAccountComboBoxOption1}
    sleep    2

User should be able to click Next Button
    wait until element is visible    ${Retail_RegistrationYesAccountNextButton}    10
    capture element screenshot    ${Retail_RegistrationYesAccountNextButton}
    click element    ${Retail_RegistrationYesAccountNextButton}
    sleep    2

User should be able to view Registration Form Page
    wait until element is visible    ${Retail_RegistrationJoinPartsLaneHeader}    10
    scroll element into view    ${Retail_RegistrationPostalSuburbTextbox}

    wait until element is visible    ${Retail_RegistrationPrefSuppLabel}    10
    wait until element is visible    ${Retail_RegistrationAccNumLabel}    10
    wait until element is visible    ${Retail_RegistrationCompNameLabel}    10
    wait until element is visible    ${Retail_RegistrationTradenameLabel}    10

    wait until element is visible    ${Retail_RegistrationPostalAddLabel}    10
    wait until element is visible    ${Retail_RegistrationPostalAddLine1Label}    10
    wait until element is visible    ${Retail_RegistrationPostalAddLine2Label}    10
    wait until element is visible    ${Retail_RegistrationPostalSuburbLabel}    10
    wait until element is visible    ${Retail_RegistrationPostalPostalCodeLabel}    10
    wait until element is visible    ${Retail_RegistrationPostalStateLabel}    10

    wait until element is visible    ${Retail_RegistrationAccNumTextbox}    10
    wait until element is visible    ${Retail_RegistrationCompNameTextbox}    10
    wait until element is visible    ${Retail_RegistrationTradenameTextbox}    10

    wait until element is visible    ${Retail_RegistrationPostalAddLine1Textbox}    10
    wait until element is visible    ${Retail_RegistrationPostalAddLine2Textbox}    10
    wait until element is visible    ${Retail_RegistrationPostalSuburbTextbox}    10
    wait until element is visible    ${Retail_RegistrationPostalPostalCodeTextbox}    10

    wait until element is visible    ${Retail_RegistrationPrefSuppComboBox}    10

    wait until element is visible    ${Retail_RegistrationPostalStateComboBox}    10

    capture element screenshot    ${Retail_RegistrationPrefSuppLabel}
    capture element screenshot    ${Retail_RegistrationAccNumLabel}
    capture element screenshot    ${Retail_RegistrationCompNameLabel}
    capture element screenshot    ${Retail_RegistrationTradenameLabel}

    capture element screenshot    ${Retail_RegistrationPostalAddLabel}
    capture element screenshot    ${Retail_RegistrationPostalAddLine1Label}
    capture element screenshot    ${Retail_RegistrationPostalAddLine2Label}
    capture element screenshot    ${Retail_RegistrationPostalSuburbLabel}
    capture element screenshot    ${Retail_RegistrationPostalPostalCodeLabel}
    capture element screenshot    ${Retail_RegistrationPostalStateLabel}

    capture element screenshot    ${Retail_RegistrationAccNumTextbox}
    capture element screenshot    ${Retail_RegistrationCompNameTextbox}
    capture element screenshot    ${Retail_RegistrationTradenameTextbox}

    capture element screenshot    ${Retail_RegistrationPostalAddLine1Textbox}
    capture element screenshot    ${Retail_RegistrationPostalAddLine2Textbox}
    capture element screenshot    ${Retail_RegistrationPostalSuburbTextbox}
    capture element screenshot    ${Retail_RegistrationPostalPostalCodeTextbox}

    capture element screenshot    ${Retail_RegistrationPrefSuppComboBox}

    capture element screenshot    ${Retail_RegistrationPostalStateComboBox}

    scroll element into view    ${Retail_RegistrationABN/ACNTextBox}

    wait until element is visible    ${Retail_RegistrationDelAddSameAsPostalLabel}    10

    wait until element is visible    ${Retail_RegistrationDelAddLabel}    10
    wait until element is visible    ${Retail_RegistrationDelAddLine1Label}    10
    wait until element is visible    ${Retail_RegistrationDelAddLine2Label}    10
    wait until element is visible    ${Retail_RegistrationDelSuburbLabel}    10
    wait until element is visible    ${Retail_RegistrationDelPostalCodeLabel}    10
    wait until element is visible    ${Retail_RegistrationDelStateLabel}    10

    wait until element is visible    ${Retail_RegistrationABNRadioLabel}    10
    wait until element is visible    ${Retail_RegistrationACNRadioLabel}    10

    wait until element is visible    ${Retail_RegistrationABN/ACNLabel}    10

    wait until element is visible    ${Retail_RegistrationDelAddLine1Textbox}    10
    wait until element is visible    ${Retail_RegistrationDelAddLine2Textbox}    10
    wait until element is visible    ${Retail_RegistrationDelSuburbTextbox}    10
    wait until element is visible    ${Retail_RegistrationDelPostalCodeTextbox}    10

    wait until element is visible    ${Retail_RegistrationDelStateComboBox}    10

    wait until element is visible    ${Retail_RegistrationABNRadioButton}    10
    wait until element is visible    ${Retail_RegistrationACNRadioButton}    10

    wait until element is visible    ${Retail_RegistrationABN/ACNTextBox}    10

    capture element screenshot    ${Retail_RegistrationDelAddSameAsPostalLabel}

    capture element screenshot    ${Retail_RegistrationDelAddLabel}
    capture element screenshot    ${Retail_RegistrationDelAddLine1Label}
    capture element screenshot    ${Retail_RegistrationDelAddLine2Label}
    capture element screenshot    ${Retail_RegistrationDelSuburbLabel}
    capture element screenshot    ${Retail_RegistrationDelPostalCodeLabel}
    capture element screenshot    ${Retail_RegistrationDelStateLabel}

    capture element screenshot    ${Retail_RegistrationABNRadioLabel}
    capture element screenshot    ${Retail_RegistrationACNRadioLabel}

    capture element screenshot    ${Retail_RegistrationABN/ACNLabel}

    capture element screenshot    ${Retail_RegistrationDelAddLine1Textbox}
    capture element screenshot    ${Retail_RegistrationDelAddLine2Textbox}
    capture element screenshot    ${Retail_RegistrationDelSuburbTextbox}
    capture element screenshot    ${Retail_RegistrationDelPostalCodeTextbox}

    capture element screenshot    ${Retail_RegistrationDelStateComboBox}

    capture element screenshot    ${Retail_RegistrationABN/ACNTextBox}

    scroll element into view    ${Retail_RegistrationTNC&PNLabel}

    wait until element is visible    ${Retail_RegistrationOpeningLabel}    10
    wait until element is visible    ${Retail_RegistrationClosingLabel}    10

    wait until element is visible    ${Retail_RegistrationContactFNLabel}    10
    wait until element is visible    ${Retail_RegistrationContactLNLabel}    10
    wait until element is visible    ${Retail_RegistrationContactEmailLabel}    10
    wait until element is visible    ${Retail_RegistrationContactCompanyPhoneNumLabel}    10
    wait until element is visible    ${Retail_RegistrationContactLandlineLabel}    10

    wait until element is visible    ${Retail_RegistrationTNC&PNLabel}    10

    wait until element is visible    ${Retail_RegistrationContactFNTextBox}    10
    wait until element is visible    ${Retail_RegistrationContactLNTextBox}    10
    wait until element is visible    ${Retail_RegistrationContactEmailTextBox}    10
    wait until element is visible    ${Retail_RegistrationContactCompanyPhoneNumTextBox}    10
    wait until element is visible    ${Retail_RegistrationContactLandlineTextBox}    10

    wait until element is visible    ${Retail_RegistrationOpeningHoursComboBox}    10
    wait until element is visible    ${Retail_RegistrationClosingHoursComboBox}    10

    wait until element is visible    ${Retail_RegistrationTNCButton}   10
    wait until element is visible    ${Retail_RegistrationPNButton}    10

    capture element screenshot    ${Retail_RegistrationOpeningLabel}
    capture element screenshot    	${Retail_RegistrationClosingLabel}

    capture element screenshot    ${Retail_RegistrationContactFNLabel}
    capture element screenshot    ${Retail_RegistrationContactLNLabel}
    capture element screenshot    ${Retail_RegistrationContactEmailLabel}
    capture element screenshot    ${Retail_RegistrationContactCompanyPhoneNumLabel}
    capture element screenshot    ${Retail_RegistrationContactLandlineLabel}

    capture element screenshot    ${Retail_RegistrationTNC&PNLabel}

    capture element screenshot    ${Retail_RegistrationContactFNTextBox}
    capture element screenshot    ${Retail_RegistrationContactLNTextBox}
    capture element screenshot    ${Retail_RegistrationContactEmailTextBox}
    capture element screenshot    ${Retail_RegistrationContactCompanyPhoneNumTextBox}
    capture element screenshot    ${Retail_RegistrationContactLandlineTextBox}

    capture element screenshot    ${Retail_RegistrationOpeningHoursComboBox}
    capture element screenshot    ${Retail_RegistrationClosingHoursComboBox}

    capture element screenshot    ${Retail_RegistrationABNRadioButton}
    capture element screenshot    ${Retail_RegistrationABNRadioButton}

    capture element screenshot    ${Retail_RegistrationTNCButton}
    capture element screenshot    ${Retail_RegistrationPNButton}

    scroll element into view    ${Retail_RegistrationSubmitButton}

    wait until element is visible    ${Retail_RegistrationSubmitButton}    10

    capture element screenshot    ${Retail_RegistrationSubmitButton}


User should be able to click Preferred Supplier
    scroll element into view    ${Retail_RegistrationPrefSuppComboBox}
    wait until element is visible    ${Retail_RegistrationPrefSuppComboBox}    10
    capture element screenshot    ${Retail_RegistrationPrefSuppComboBox}
    click element    ${Retail_RegistrationPrefSuppComboBox}
    sleep    2

User should be able to select Preferred Supplier
    wait until element is visible    ${Retail_RegistrationPrefSuppComboBoxValue1}    10
    capture element screenshot    ${Retail_RegistrationPrefSuppComboBoxValue1}
    click element    ${Retail_RegistrationPrefSuppComboBoxValue1}
    sleep    2

User should be able to input Account Number
    scroll element into view    ${Retail_RegistrationAccNumTextbox}
    wait until element is visible    ${Retail_RegistrationAccNumTextbox}    10
    clear element text    ${Retail_RegistrationAccNumTextbox}
    input text    ${Retail_RegistrationAccNumTextbox}    ${Retail_RegistrationAccNumValue}
    capture element screenshot    ${Retail_RegistrationAccNumTextbox}
    sleep    2

User should be able to input Company Name
    scroll element into view    ${Retail_RegistrationCompNameTextbox}
    wait until element is visible    ${Retail_RegistrationCompNameTextbox}    10
    clear element text    ${Retail_RegistrationCompNameTextbox}
    input text    ${Retail_RegistrationCompNameTextbox}    ${Retail_RegistrationCompNameValue}
    capture element screenshot    ${Retail_RegistrationCompNameTextbox}
    sleep    2

User should be able to input Trading Name
    scroll element into view    ${Retail_RegistrationTradenameTextbox}
    wait until element is visible    ${Retail_RegistrationTradenameTextbox}    10
    clear element text    ${Retail_RegistrationTradenameTextbox}
    input text    ${Retail_RegistrationTradenameTextbox}    ${Retail_RegistrationTradingNameValue}
    capture element screenshot    ${Retail_RegistrationTradenameTextbox}
    sleep    2

User should be able to input Postal Address Line 1
    scroll element into view    ${Retail_RegistrationPostalAddLine1Textbox}
    wait until element is visible    ${Retail_RegistrationPostalAddLine1Textbox}    10
    clear element text    ${Retail_RegistrationPostalAddLine1Textbox}
    input text    ${Retail_RegistrationPostalAddLine1Textbox}   ${Retail_RegistrationPostalAddLine1Value}
    capture element screenshot    ${Retail_RegistrationPostalAddLine1Textbox}
    sleep    2

User should be able to input Postal Address Line 2
    scroll element into view    ${Retail_RegistrationPostalAddLine2Textbox}
    wait until element is visible    ${Retail_RegistrationPostalAddLine2Textbox}    10
    clear element text    ${Retail_RegistrationPostalAddLine2Textbox}
    input text    ${Retail_RegistrationPostalAddLine2Textbox}   ${Retail_RegistrationPostalAddLine2Value}
    capture element screenshot    ${Retail_RegistrationPostalAddLine2Textbox}
    sleep    2

User should be able to input Postal Suburb
    scroll element into view    ${Retail_RegistrationPostalSuburbTextbox}
    wait until element is visible    ${Retail_RegistrationPostalSuburbTextbox}    10
    clear element text    ${Retail_RegistrationPostalSuburbTextbox}
    input text    ${Retail_RegistrationPostalSuburbTextbox}   ${Retail_RegistrationPostalSuburbValue}
    capture element screenshot    ${Retail_RegistrationPostalSuburbTextbox}
    sleep    2

User should be able to input Postal Code
    scroll element into view    ${Retail_RegistrationPostalPostalCodeTextbox}
    wait until element is visible   ${Retail_RegistrationPostalPostalCodeTextbox}    10
    clear element text    ${Retail_RegistrationPostalPostalCodeTextbox}
    input text    ${Retail_RegistrationPostalPostalCodeTextbox}   ${Retail_RegistrationPostalPostalCodevalue}
    capture element screenshot    ${Retail_RegistrationPostalPostalCodeTextbox}
    sleep    2

User should be able to click Postal State
    scroll element into view    ${Retail_RegistrationPostalStateComboBox}
    wait until element is visible    ${Retail_RegistrationPostalStateComboBox}    10
    capture element screenshot    ${Retail_RegistrationPostalStateComboBox}
    click element    ${Retail_RegistrationPostalStateComboBox}
    sleep    2

User should be able to select Postal State
    wait until element is visible    ${Retail_RegistrationPostalStateValue}    10
    capture element screenshot    ${Retail_RegistrationPostalStateValue}
    click element    ${Retail_RegistrationPostalStateValue}
    sleep    2

User should be able to input Delivery Address Line 1
    scroll element into view    ${Retail_RegistrationDelAddLine1Textbox}
    wait until element is visible   ${Retail_RegistrationDelAddLine1Textbox}    10
    clear element text    ${Retail_RegistrationDelAddLine1Textbox}
    input text    ${Retail_RegistrationDelAddLine1Textbox}   ${Retail_RegistrationDelAddLine1Value}
    capture element screenshot    ${Retail_RegistrationDelAddLine1Textbox}
    sleep    2

User should be able to input Delivery Address Line 2
    scroll element into view    ${Retail_RegistrationDelAddLine2Textbox}
    wait until element is visible   ${Retail_RegistrationDelAddLine2Textbox}    10
    clear element text    ${Retail_RegistrationDelAddLine2Textbox}
    input text    ${Retail_RegistrationDelAddLine2Textbox}   ${Retail_RegistrationDelAddLine2Value}
    capture element screenshot    ${Retail_RegistrationDelAddLine2Textbox}
    sleep    2

User should be able to input Delivery Suburb
    scroll element into view    ${Retail_RegistrationDelSuburbTextbox}
    wait until element is visible    ${Retail_RegistrationDelSuburbTextbox}    10
    clear element text    ${Retail_RegistrationDelSuburbTextbox}
    input text    ${Retail_RegistrationDelSuburbTextbox}   ${Retail_RegistrationDelSuburbValue}
    capture element screenshot    ${Retail_RegistrationDelSuburbTextbox}
    sleep    2

User should be able to input Delivery Code
    scroll element into view    ${Retail_RegistrationDelPostalCodeTextbox}
    wait until element is visible   ${Retail_RegistrationDelPostalCodeTextbox}    10
    clear element text    ${Retail_RegistrationDelPostalCodeTextbox}
    input text    ${Retail_RegistrationDelPostalCodeTextbox}   ${Retail_RegistrationDelPostalCodevalue}
    capture element screenshot    ${Retail_RegistrationDelPostalCodeTextbox}
    sleep    2

User should be able to click Delivery State
    scroll element into view    ${Retail_RegistrationDelStateComboBox}
    wait until element is visible    ${Retail_RegistrationDelStateComboBox}    10
    capture element screenshot    ${Retail_RegistrationDelStateComboBox}
    click element    ${Retail_RegistrationDelStateComboBox}
    sleep    2

User should be able to select Delivery State
    wait until element is visible    ${Retail_RegistrationDelStateValue}    10
    capture element screenshot    ${Retail_RegistrationDelStateValue}
    click element    ${Retail_RegistrationDelStateValue}
    sleep    2

User should be able to click ACN Button
    scroll element into view    ${Retail_RegistrationACNRadioButton}
    wait until element is visible    ${Retail_RegistrationACNRadioButton}    10
    capture element screenshot    ${Retail_RegistrationACNRadioButton}
    click element    ${Retail_RegistrationACNRadioButton}
    sleep    2

User should be able to click ABN Button
    scroll element into view    ${Retail_RegistrationABNRadioButton}
    wait until element is visible    ${Retail_RegistrationABNRadioButton}    10
    capture element screenshot    ${Retail_RegistrationABNRadioButton}
    click element    ${Retail_RegistrationABNRadioButton}
    sleep    2

User should be albe to input ABN/ACN
    scroll element into view    ${Retail_RegistrationABN/ACNTextBox}
    wait until element is visible   ${Retail_RegistrationABN/ACNTextBox}    10
    clear element text    ${Retail_RegistrationABN/ACNTextBox}
    input text    ${Retail_RegistrationABN/ACNTextBox}   ${Retail_RegistrationABN/ACNValue}
    capture element screenshot    ${Retail_RegistrationABN/ACNTextBox}
    sleep    2

User should be able to click Opening Hours
    scroll element into view    ${Retail_RegistrationOpeningHoursComboBox}
    wait until element is visible    ${Retail_RegistrationOpeningHoursComboBox}    10
    capture element screenshot    ${Retail_RegistrationOpeningHoursComboBox}
    click element    ${Retail_RegistrationOpeningHoursComboBox}
    sleep    2

User should be able to select Opening Hours
    wait until element is visible    ${Retail_RegistrationOpeningHoursComboBoxValue}    10
    capture element screenshot    ${Retail_RegistrationOpeningHoursComboBoxValue}
    click element    ${Retail_RegistrationOpeningHoursComboBoxValue}
    sleep    2

User should be able to click Closing Hours
    scroll element into view    ${Retail_RegistrationClosingHoursComboBox}
    wait until element is visible    ${Retail_RegistrationClosingHoursComboBox}    10
    capture element screenshot    ${Retail_RegistrationClosingHoursComboBox}
    click element    ${Retail_RegistrationClosingHoursComboBox}
    sleep    2

User should be able to select Closing Hours
    wait until element is visible    ${Retail_RegistrationClosingHoursComboBoxValue}    10
    capture element screenshot    ${Retail_RegistrationClosingHoursComboBoxValue}
    click element    ${Retail_RegistrationClosingHoursComboBoxValue}
    sleep    2

User should be able to input Contact First Name
    scroll element into view    ${Retail_RegistrationContactFNTextBox}
    wait until element is visible    ${Retail_RegistrationContactFNTextBox}    10
    clear element text    ${Retail_RegistrationContactFNTextBox}
    input text    ${Retail_RegistrationContactFNTextBox}    ${Retail_RegistrationFNValue}
    capture element screenshot    ${Retail_RegistrationContactFNTextBox}
    sleep    2

User should be able to input Contact Last Name
    scroll element into view    ${Retail_RegistrationContactLNTextBox}
    wait until element is visible    ${Retail_RegistrationContactLNTextBox}    10
    clear element text    ${Retail_RegistrationContactLNTextBox}
    input text    ${Retail_RegistrationContactLNTextBox}    ${Retail_RegistrationLNValue}
    capture element screenshot    ${Retail_RegistrationContactLNTextBox}
    sleep    2

User should be able to input Email Address
    scroll element into view    ${Retail_RegistrationContactEmailTextBox}
    wait until element is visible    ${Retail_RegistrationContactEmailTextBox}    10
    clear element text    ${Retail_RegistrationContactEmailTextBox}
    input text    ${Retail_RegistrationContactEmailTextBox}    ${Retail_RegistrationEmailValue}
    capture element screenshot    ${Retail_RegistrationContactEmailTextBox}
    sleep    2

User should be able to input Company Phone Number
    scroll element into view    ${Retail_RegistrationContactCompanyPhoneNumTextBox}
    wait until element is visible    ${Retail_RegistrationContactCompanyPhoneNumTextBox}    10
    clear element text    ${Retail_RegistrationContactCompanyPhoneNumTextBox}
    input text    ${Retail_RegistrationContactCompanyPhoneNumTextBox}    ${Retail_RegistrationCompPhoneNumValue}
    capture element screenshot    ${Retail_RegistrationContactCompanyPhoneNumTextBox}
    sleep    2

User should be able to input Landline Number
    scroll element into view    ${Retail_RegistrationContactLandlineTextBox}
    wait until element is visible    ${Retail_RegistrationContactLandlineTextBox}    10
    clear element text    ${Retail_RegistrationContactLandlineTextBox}
    input text    ${Retail_RegistrationContactLandlineTextBox}    ${Retail_RegistrationLandlineNumValue}
    capture element screenshot    ${Retail_RegistrationContactLandlineTextBox}
    sleep    2

User should be able to click TNC
    scroll element into view    ${Retail_RegistrationTNCButton}
    wait until element is visible    ${Retail_RegistrationTNCButton}    10
    capture element screenshot    ${Retail_RegistrationTNCButton}
    click element    ${Retail_RegistrationTNCButton}
    sleep    2

User should be able to click PN
    scroll element into view    ${Retail_RegistrationPNButton}
    wait until element is visible    ${Retail_RegistrationPNButton}    10
    capture element screenshot    ${Retail_RegistrationPNButton}
    click element    ${Retail_RegistrationPNButton}
    sleep    2

User should be able to click Submit Button
    scroll element into view    ${Retail_RegistrationSubmitButton}
    wait until element is visible    ${Retail_RegistrationSubmitButton}
    capture element screenshot    ${Retail_RegistrationSubmitButton}
    click element    ${Retail_RegistrationSubmitButton}
    sleep    2

User should be able to view Error Messages
    clear element text    ${Retail_RegistrationAccNumTextbox}
    clear element text    ${Retail_RegistrationCompNameTextbox}
    clear element text    ${Retail_RegistrationTradenameTextbox}
    clear element text    ${Retail_RegistrationPostalAddLine1Textbox}
    clear element text    ${Retail_RegistrationPostalAddLine2Textbox}
    clear element text    ${Retail_RegistrationPostalSuburbTextbox}
    clear element text    ${Retail_RegistrationPostalPostalCodeTextbox}
    clear element text    ${Retail_RegistrationDelAddLine1Textbox}
    clear element text    ${Retail_RegistrationDelAddLine2Textbox}
    clear element text    ${Retail_RegistrationDelSuburbTextbox}
    clear element text    ${Retail_RegistrationDelPostalCodeTextbox}
    clear element text    ${Retail_RegistrationABN/ACNTextBox}
    clear element text    ${Retail_RegistrationContactFNTextBox}
    clear element text    ${Retail_RegistrationContactLNTextBox}
    clear element text    ${Retail_RegistrationContactEmailTextBox}
    clear element text    ${Retail_RegistrationContactCompanyPhoneNumTextBox}
    clear element text    ${Retail_RegistrationContactLandlineTextBox}

    wait until element is visible    ${Retail_RegistrationAccNumErrorMessage}
    wait until element is visible    ${Retail_RegistrationCompNameErrorMessage}
    wait until element is visible    ${Retail_RegistrationPostalAddLine1ErrorMessage}
    wait until element is visible    ${Retail_RegistrationPostalSuburbErrorMessage}
    wait until element is visible    ${Retail_RegistrationPostalPostalCodeErrorMessage}
    wait until element is visible    ${Retail_RegistrationDelAddLine1ErrorMessage}
    wait until element is visible    ${Retail_RegistrationDelSuburbErrorMessage}
    wait until element is visible    ${Retail_RegistrationDelPostalCodeErrorMessage}
    wait until element is visible    ${Retail_RegistrationABN/ACNTextErrorMessage}
    wait until element is visible    ${Retail_RegistrationContactFNErrorMessage}
    wait until element is visible    ${Retail_RegistrationContactLNErrorMessage}
    wait until element is visible    ${Retail_RegistrationContactEmailErrorMessage}
    wait until element is visible    ${Retail_RegistrationContactCompanyPhoneNumErrorMessage}

    capture element screenshot    ${Retail_RegistrationAccNumErrorMessage}
    capture element screenshot    ${Retail_RegistrationCompNameErrorMessage}
    capture element screenshot    ${Retail_RegistrationPostalAddLine1ErrorMessage}
    capture element screenshot    ${Retail_RegistrationPostalSuburbErrorMessage}
    capture element screenshot    ${Retail_RegistrationPostalPostalCodeErrorMessage}
    capture element screenshot    ${Retail_RegistrationDelAddLine1ErrorMessage}
    capture element screenshot    ${Retail_RegistrationDelSuburbErrorMessage}
    capture element screenshot    ${Retail_RegistrationDelPostalCodeErrorMessage}
    capture element screenshot    ${Retail_RegistrationABN/ACNTextErrorMessage}
    capture element screenshot    ${Retail_RegistrationContactFNErrorMessage}
    capture element screenshot    ${Retail_RegistrationContactLNErrorMessage}
    capture element screenshot    ${Retail_RegistrationContactEmailErrorMessage}
    capture element screenshot    ${Retail_RegistrationContactCompanyPhoneNumErrorMessage}

    sleep    2

User should be able to click Back to Login Button
    wait until element is visible    ${Retail_RegistrationBackToLoginButton}    10
    scroll element into view    ${Retail_RegistrationBackToLoginButton}
    capture element screenshot    ${Retail_RegistrationBackToLoginButton}
    click element    ${Retail_RegistrationBackToLoginButton}
    sleep    2

#----------------------------------------------------------HK-----------------------------------------------------------
User should be able to view HK Registration Form
    wait until element is visible    ${Retail_RegistrationPageBackToLoginButton}    10
    wait until element is visible    ${Retail_RegistrationJoinPartsLaneHeader}    10
    wait until element is visible    ${Retail_RegistrationCompNameLabel}    10
    wait until element is visible    ${Retail_RegistrationPostalAddLabel}    10
    wait until element is visible    ${Retail_RegistrationPostalAddLine2Label}    10
    wait until element is visible    ${Retail_HK_RegistrationPostalAreaLabel}    10
    wait until element is visible    ${Retail_HK_RegistrationPostalDistrictLabel}    10

#    wait until element is visible    ${Retail_RegistrationPrefSuppComboBox}    10
    wait until element is visible    ${Retail_RegistrationCompNameTextbox}    10
    wait until element is visible    ${Retail_HK_RegistrationPostalAddLine1ComboBox}    10
    wait until element is visible    ${Retail_RegistrationPostalAddLine2Textbox}    10
    wait until element is visible    ${Retail_HK_RegistrationPostalAreaComboBox}    10
    wait until element is visible    ${Retail_HK_RegistrationPostalDistrictComboBox}    10

    capture element screenshot    ${Retail_RegistrationPageBackToLoginButton}
    capture element screenshot    ${Retail_RegistrationJoinPartsLaneHeader}
    capture element screenshot    ${Retail_RegistrationCompNameLabel}
    capture element screenshot    ${Retail_RegistrationPostalAddLabel}
    capture element screenshot    ${Retail_RegistrationPostalAddLine2Label}
    capture element screenshot    ${Retail_HK_RegistrationPostalAreaLabel}
    capture element screenshot    ${Retail_HK_RegistrationPostalDistrictLabel}

#    capture element screenshot    ${Retail_RegistrationPrefSuppComboBox}
    capture element screenshot    ${Retail_RegistrationCompNameTextbox}
    capture element screenshot    ${Retail_HK_RegistrationPostalAddLine1ComboBox}
    capture element screenshot    ${Retail_RegistrationPostalAddLine2Textbox}
    capture element screenshot    ${Retail_HK_RegistrationPostalAreaComboBox}
    capture element screenshot    ${Retail_HK_RegistrationPostalDistrictComboBox}

    scroll element into view    ${Retail_RegistrationContactFNLabel}

    wait until element is visible    ${Retail_RegistrationDelAddSameAsPostalLabel}    10
    wait until element is visible    ${Retail_RegistrationDelAddLabel}    10
    wait until element is visible    ${Retail_RegistrationDelAddLine2Label}    10
    wait until element is visible    ${Retail_HK_RegistrationDelAreaLabel}    10
    wait until element is visible    ${Retail_HK_RegistrationDelDistrictLabel}    10
    wait until element is visible    ${Retail_RegistrationOpeningLabel}    10
    wait until element is visible    ${Retail_RegistrationClosingLabel}    10

    wait until element is visible    ${Retail_HK_RegistrationDelAddLine1ComboBox}    10
    wait until element is visible    ${Retail_RegistrationDelAddLine2Textbox}    10
    wait until element is visible    ${Retail_HK_RegistrationDelAreaComboBox}    10
    wait until element is visible    ${Retail_HK_RegistrationDelDistrictComboBox}    10
    wait until element is visible    ${Retail_RegistrationOpeningHoursComboBox}    10
    wait until element is visible    ${Retail_RegistrationClosingHoursComboBox}    10

    capture element screenshot    ${Retail_RegistrationDelAddSameAsPostalLabel}
    capture element screenshot    ${Retail_RegistrationDelAddLabel}
    capture element screenshot    ${Retail_RegistrationDelAddLine2Label}
    capture element screenshot    ${Retail_HK_RegistrationDelAreaLabel}
    capture element screenshot    ${Retail_HK_RegistrationDelDistrictLabel}
    capture element screenshot    ${Retail_RegistrationOpeningLabel}
    capture element screenshot    ${Retail_RegistrationClosingLabel}

    capture element screenshot    ${Retail_HK_RegistrationDelAddLine1ComboBox}
    capture element screenshot    ${Retail_RegistrationDelAddLine2Textbox}
    capture element screenshot    ${Retail_HK_RegistrationDelAreaComboBox}
    capture element screenshot    ${Retail_HK_RegistrationDelDistrictComboBox}
    capture element screenshot    ${Retail_RegistrationOpeningHoursComboBox}
    capture element screenshot    ${Retail_RegistrationClosingHoursComboBox}

    scroll element into view    ${Retail_RegistrationSubmitButton}

    wait until element is visible    ${Retail_RegistrationContactFNLabel}    10
    wait until element is visible    ${Retail_RegistrationContactLNLabel}    10
    wait until element is visible    ${Retail_RegistrationContactEmailLabel}    10
    wait until element is visible    ${Retail_HK_RegistrationContactCompanyPhoneNumTextBox}    10
    wait until element is visible    ${Retail_HK_RegistrationContactLandlineTextBox}    10
    wait until element is visible    ${Retail_RegistrationTNC&PNLabel}    10

    wait until element is visible    ${Retail_RegistrationSubmitButton}    10

    capture element screenshot    ${Retail_RegistrationContactFNLabel}
    capture element screenshot    ${Retail_RegistrationContactLNLabel}
    capture element screenshot    ${Retail_RegistrationContactEmailLabel}
    capture element screenshot    ${Retail_HK_RegistrationContactCompanyPhoneNumTextBox}
    capture element screenshot    ${Retail_HK_RegistrationContactCompanyPhoneNumTextBox}
    capture element screenshot    ${Retail_RegistrationTNC&PNLabel}

    capture element screenshot    ${Retail_RegistrationSubmitButton}

    scroll element into view    ${Retail_RegistrationJoinPartsLaneHeader}

User should be able to click Preferred Supplier Dropdown for HK Registration Form
    wait until element is visible    ${Retail_RegistrationPrefSuppComboBox}    10
    scroll element into view    ${Retail_RegistrationPrefSuppComboBox}
    capture element screenshot    ${Retail_RegistrationPrefSuppComboBox}
    click element    ${Retail_RegistrationPrefSuppComboBox}
    sleep    2

User should be able to select 1 Preferred Supplier from Dropdown for HK Registration Form
    wait until element is visible    ${Retail_RegistrationPrefSuppComboBoxValue1}    10
    capture element screenshot    ${Retail_RegistrationPrefSuppComboBoxValue1}
    click element    ${Retail_RegistrationPrefSuppComboBoxValue1}
    sleep    2

User should be able to click Postal Address Dropdown for HK Registration Form
    wait until element is visible    ${Retail_HK_RegistrationPostalAddLine1ComboBox}    10
    capture element screenshot    ${Retail_HK_RegistrationPostalAddLine1ComboBox}
    click element    ${Retail_HK_RegistrationPostalAddLine1ComboBox}
    sleep    2

User should be able to input text in Postal Address for HK Registration Form
    wait until element is visible    ${Retail_HK_RegistrationPostalAddLine1Texbox}    10
    clear element text    ${Retail_HK_RegistrationPostalAddLine1Texbox}
    input text    ${Retail_HK_RegistrationPostalAddLine1Texbox}    ${Retail_HK_RegistrationPostalAddLine1Value}
    capture element screenshot    ${Retail_HK_RegistrationPostalAddLine1Texbox}
    sleep    2

User should be able to select Random Postal Address from suggestions for HK Registration Form
    wait until element is visible    ${Retail_HK_RegistrationPostalAddLine1ComboBoxOptionsContainer}    10
    ${PostalAddressCount}    get element count    ${Retail_HK_RegistrationPostalAddLine1ComboBoxOptionsContainer}
    ${PostalAddressRanIndex}    evaluate    random.randint(1,${PostalAddressCount})
    mouse over    ${Retail_HK_RegistrationPostalAddLine1ComboBoxOptionsContainer}
    scroll element into view    (//form//div[@formgroupname='postalAddress']//ng-dropdown-panel//div//div[@role='option'])[${PostalAddressRanIndex}]
    capture element screenshot    (//form//div[@formgroupname='postalAddress']//ng-dropdown-panel//div//div[@role='option'])[${PostalAddressRanIndex}]
    click element    (//form//div[@formgroupname='postalAddress']//ng-dropdown-panel//div//div[@role='option'])[${PostalAddressRanIndex}]
    sleep    2

User should be able to click Area Dropdown in Postal Address for HK Registration Form
    wait until element is visible    ${Retail_HK_RegistrationPostalAreaComboBox}    10
    capture element screenshot    ${Retail_HK_RegistrationPostalAreaComboBox}
    click element    ${Retail_HK_RegistrationPostalAreaComboBox}
    sleep    2

User should be able to select Random Postal Address Area for HK Registration Form
    wait until element is visible    ${Retail_HK_RegistrationPostalAreaComboBoxOptionsContainer}    10
    ${PostalAreaCount}    get element count    ${Retail_HK_RegistrationPostalAreaComboBoxOptionsContainer}
    ${PostalAreaRanIndex}    evaluate    random.randint(1,${PostalAreaCount})
    mouse over    ${Retail_HK_RegistrationPostalAreaComboBoxOptionsContainer}
    scroll element into view    (//form//div[@formgroupname='postalAddress']//ng-select[@formcontrolname='area']//ng-dropdown-panel//div//div[@role='option'])[${PostalAreaRanIndex}]
    capture element screenshot    (//form//div[@formgroupname='postalAddress']//ng-select[@formcontrolname='area']//ng-dropdown-panel//div//div[@role='option'])[${PostalAreaRanIndex}]
    click element    (//form//div[@formgroupname='postalAddress']//ng-select[@formcontrolname='area']//ng-dropdown-panel//div//div[@role='option'])[${PostalAreaRanIndex}]
    sleep    2

User should be able to click District Dropdown in Postal Address for HK Registration Form
    wait until element is visible    ${Retail_HK_RegistrationPostalDistrictComboBox}    10
    capture element screenshot    ${Retail_HK_RegistrationPostalDistrictComboBox}
    click element    ${Retail_HK_RegistrationPostalDistrictComboBox}
    sleep    2

User should be able to select Random Postal Address District for HK Registration Form
    wait until element is visible    ${Retail_HK_RegistrationPostalDistrictComboBoxOptionsContainer}    10
    ${PostalDistrictCount}    get element count    ${Retail_HK_RegistrationPostalDistrictComboBoxOptionsContainer}
    ${PostalDistrictRanIndex}    evaluate    random.randint(1,${PostalDistrictCount})
    mouse over    ${Retail_HK_RegistrationPostalDistrictComboBoxOptionsContainer}
    scroll element into view    (//form//div[@formgroupname='postalAddress']//ng-select[@formcontrolname='district']//ng-dropdown-panel//div//div[@role='option'])[${PostalDistrictRanIndex}]
    capture element screenshot    (//form//div[@formgroupname='postalAddress']//ng-select[@formcontrolname='district']//ng-dropdown-panel//div//div[@role='option'])[${PostalDistrictRanIndex}]
    click element    (//form//div[@formgroupname='postalAddress']//ng-select[@formcontrolname='district']//ng-dropdown-panel//div//div[@role='option'])[${PostalDistrictRanIndex}]
    sleep    2

User should be able to click Delivery Address Dropdown for HK Registration Form
    wait until element is visible    ${Retail_HK_RegistrationDelAddLine1ComboBox}    10
    capture element screenshot    ${Retail_HK_RegistrationDelAddLine1ComboBox}
    click element    ${Retail_HK_RegistrationDelAddLine1ComboBox}
    sleep    2

User should be able to input text in Deliver Address for HK Registration Form
    wait until element is visible    ${Retail_HK_RegistrationDelAddLine1Texbox}    10
    clear element text    ${Retail_HK_RegistrationDelAddLine1Texbox}
    input text    ${Retail_HK_RegistrationDelAddLine1Texbox}    ${Retail_HK_RegistrationDelAddLine1Value}
    capture element screenshot    ${Retail_HK_RegistrationDelAddLine1Texbox}
    sleep    2

User should be able to select Random Delivery Address from suggestions for HK Registration Form
    wait until element is visible    ${Retail_HK_RegistrationDelAddLine1ComboBoxOptionsContainer}    10
    ${DelAddressCount}    get element count    ${Retail_HK_RegistrationDelAddLine1ComboBoxOptionsContainer}
    ${DelAddressRanIndex}    evaluate    random.randint(1,${DelAddressCount})
    mouse over    ${Retail_HK_RegistrationDelAddLine1ComboBoxOptionsContainer}
    scroll element into view    (//form//div[@formgroupname='deliveryAddress']//ng-dropdown-panel//div//div[@role='option'])[${DelAddressRanIndex}]
    capture element screenshot    (//form//div[@formgroupname='deliveryAddress']//ng-dropdown-panel//div//div[@role='option'])[${DelAddressRanIndex}]
    click element    (//form//div[@formgroupname='deliveryAddress']//ng-dropdown-panel//div//div[@role='option'])[${DelAddressRanIndex}]
    sleep    2

User should be able to click Area Dropdown in Delivery Address for HK Registration Form
    wait until element is visible    ${Retail_HK_RegistrationDelAreaComboBox}    10
    capture element screenshot    ${Retail_HK_RegistrationDelAreaComboBox}
    click element    ${Retail_HK_RegistrationDelAreaComboBox}
    sleep    2

User should be able to select Random Delivery Address Area for HK Registration Form
    wait until element is visible    ${Retail_HK_RegistrationDelAreaComboBoxOptionsContainer}    10
    ${DelAreaCount}    get element count    ${Retail_HK_RegistrationDelAreaComboBoxOptionsContainer}
    ${DelAreaRanIndex}    evaluate    random.randint(1,${DelAreaCount})
    mouse over    ${Retail_HK_RegistrationDelAreaComboBoxOptionsContainer}
    scroll element into view    (//form//div[@formgroupname='deliveryAddress']//ng-select[@formcontrolname='area']//ng-dropdown-panel//div//div[@role='option'])[${DelAreaRanIndex}]
    capture element screenshot    (//form//div[@formgroupname='deliveryAddress']//ng-select[@formcontrolname='area']//ng-dropdown-panel//div//div[@role='option'])[${DelAreaRanIndex}]
    click element    (//form//div[@formgroupname='deliveryAddress']//ng-select[@formcontrolname='area']//ng-dropdown-panel//div//div[@role='option'])[${DelAreaRanIndex}]
    sleep    2

User should be able to click District Dropdown in Delivery Address for HK Registration Form
    wait until element is visible    ${Retail_HK_RegistrationDelDistrictComboBox}    10
    capture element screenshot    ${Retail_HK_RegistrationDelDistrictComboBox}
    click element    ${Retail_HK_RegistrationDelDistrictComboBox}
    sleep    2

User should be able to select Random Delivery Address District for HK Registration Form
    wait until element is visible    ${Retail_HK_RegistrationDelDistrictComboBoxOptionsContainer}    10
    ${DelDistrictCount}    get element count    ${Retail_HK_RegistrationDelDistrictComboBoxOptionsContainer}
    ${DelDistrictRanIndex}    evaluate    random.randint(1,${DelDistrictCount})
    mouse over    ${Retail_HK_RegistrationDelDistrictComboBoxOptionsContainer}
    scroll element into view    (//form//div[@formgroupname='deliveryAddress']//ng-select[@formcontrolname='district']//ng-dropdown-panel//div//div[@role='option'])[${DelDistrictRanIndex}]
    capture element screenshot    (//form//div[@formgroupname='deliveryAddress']//ng-select[@formcontrolname='district']//ng-dropdown-panel//div//div[@role='option'])[${DelDistrictRanIndex}]
    click element    (//form//div[@formgroupname='deliveryAddress']//ng-select[@formcontrolname='district']//ng-dropdown-panel//div//div[@role='option'])[${DelDistrictRanIndex}]
    sleep    2


User should be able to input Company Phone Number for HK Registration Form
    scroll element into view    ${Retail_HK_RegistrationContactCompanyPhoneNumTextBox}
    wait until element is visible    ${Retail_HK_RegistrationContactCompanyPhoneNumTextBox}    10
    clear element text    ${Retail_HK_RegistrationContactCompanyPhoneNumTextBox}
    input text    ${Retail_HK_RegistrationContactCompanyPhoneNumTextBox}    ${Retail_RegistrationCompPhoneNumValue}
    capture element screenshot    ${Retail_HK_RegistrationContactCompanyPhoneNumTextBox}
    sleep    2

User should be able to input Landline Number for HK Registration Form
    scroll element into view    ${Retail_HK_RegistrationContactLandlineTextBox}
    wait until element is visible    ${Retail_HK_RegistrationContactLandlineTextBox}    10
    clear element text    ${Retail_HK_RegistrationContactLandlineTextBox}
    input text    ${Retail_HK_RegistrationContactLandlineTextBox}    ${Retail_RegistrationLandlineNumValue}
    capture element screenshot    ${Retail_HK_RegistrationContactLandlineTextBox}
    sleep    2