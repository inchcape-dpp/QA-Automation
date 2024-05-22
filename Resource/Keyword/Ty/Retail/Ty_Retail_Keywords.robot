*** Settings ***
Documentation    Suite description

Library    SeleniumLibrary

#Resource    ../../../Resource/testdata/config.robot
Resource    ../../../../Resource/testdata/Retail/Retail_Variable.robot
Resource    ../../../../Resource/testdata/credentials.robot
Resource    ../../../../Resource/testdata/config.robot
Resource    ../../../../Resource/testdata/Dealer/Dealer_Variable.robot
Resource    ../../../../Resource/testdata/credentials.robot
Resource    ../../../../Resource/testdata/Dealer/Dealer_Resource.robot



*** Keywords ***

#DPP-311207

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
    wait until element is visible    ${Retail_HK_RegistrationContactCompanyPhoneNumLabel}    10
    wait until element is visible    ${Retail_HK_RegistrationContactLandlineLabel}    10
    wait until element is visible    ${Retail_RegistrationContactFNTextBox}    10
    wait until element is visible    ${Retail_RegistrationContactLNTextBox}    10
    wait until element is visible    ${Retail_RegistrationContactEmailTextBox}    10
    wait until element is visible    ${Retail_HK_RegistrationContactCompanyPhoneNumTextBox}    10
    wait until element is visible    ${Retail_HK_RegistrationContactLandlineTextBox}    10
    wait until element is visible    ${Retail_RegistrationTNC&PNLabel}    10

    wait until element is visible    ${Retail_RegistrationSubmitButton}    10

    capture element screenshot    ${Retail_RegistrationContactFNLabel}
    capture element screenshot    ${Retail_RegistrationContactLNLabel}
    capture element screenshot    ${Retail_RegistrationContactEmailLabel}
    capture element screenshot    ${Retail_HK_RegistrationContactCompanyPhoneNumLabel}
    capture element screenshot    ${Retail_HK_RegistrationContactLandlineLabel}
    capture element screenshot    ${Retail_RegistrationContactFNTextBox}
    capture element screenshot    ${Retail_RegistrationContactLNTextBox}
    capture element screenshot    ${Retail_RegistrationContactEmailTextBox}
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

User should be able to input manual text in Postal Address for HK Registration Form
    wait until element is visible    ${Retail_HK_RegistrationPostalAddLine1Texbox}    10
    clear element text    ${Retail_HK_RegistrationPostalAddLine1Texbox}
    input text    ${Retail_HK_RegistrationPostalAddLine1Texbox}    ${Retail_HK_RegistrationManualPostalAddLine1Value}
    capture element screenshot    ${Retail_HK_RegistrationPostalAddLine1Texbox}
    sleep    2

User should be able to click Manual Input Postal Address for HK Registration Form
    wait until element is visible    ${Retail_HK_AccountCompanyDetailsPage_PostalAddress_Options_Container}    10
    capture element screenshot    ${Retail_HK_AccountCompanyDetailsPage_PostalAddress_Options_Container}
    click element    ${Retail_HK_AccountCompanyDetailsPage_PostalAddress_Options_Container}
    sleep    2

User should be able to click Clear Postal Address for HK Registration Form
    wait until element is visible    ${Retail_HK_AccountCompanyDetailsPage_PostalAddress_TextBox_Clear_Button}    10
    capture element screenshot    ${Retail_HK_AccountCompanyDetailsPage_PostalAddress_TextBox_Clear_Button}
    click element    ${Retail_HK_AccountCompanyDetailsPage_PostalAddress_TextBox_Clear_Button}
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

User should be able to input manual text in Deliver Address for HK Registration Form
    wait until element is visible    ${Retail_HK_RegistrationDelAddLine1Texbox}    10
    clear element text    ${Retail_HK_RegistrationDelAddLine1Texbox}
    input text    ${Retail_HK_RegistrationDelAddLine1Texbox}    ${Retail_HK_RegistrationManualDelAddLine1Value}
    capture element screenshot    ${Retail_HK_RegistrationDelAddLine1Texbox}
    sleep    2

User should be able to click Manual Input Deliver Address for HK Registration Form
    wait until element is visible    ${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_Manual_Container}    10
    capture element screenshot    ${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_Manual_Container}
    click element    ${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_Manual_Container}
    sleep    2

User should be able to click Clear Deliver Address for HK Registration Form
    wait until element is visible    ${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_TextBox_Clear_Button}    10
    capture element screenshot    ${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_TextBox_Clear_Button}
    click element    ${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_TextBox_Clear_Button}
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


#DPP-310758

*** Keywords ***
User should be able to input text on search bar
    wait until element is visible    ${HomePageSearhProduct}    10
    click element    ${HomePageSearhProduct}
    input text    ${HomePageSearhProduct}    ${ProdductSearchValue}
    sleep    2

User should be able to click searched text
    wait until element is visible    ${HomePageSearchSuggestion}    10
    click element    ${HomePageSearchSuggestion}
    mouse over    ${HomePageLogo}
    sleep    3

User should be able to input 1 text on search bar
    wait until element is visible    ${HomePageSearhProduct}    10
    click element    ${HomePageSearhProduct}
    input text    ${HomePageSearhProduct}    ${ProdductSearchValue1}
    sleep    2

#DPP-304986
*** Keywords ***
User should be able to input text on search bar
    wait until element is visible    ${HomePageSearhProduct}    10
    click element    ${HomePageSearhProduct}
    input text    ${HomePageSearhProduct}    ${ProdductSearchValue}
    sleep    2

User should be able to click searched text
    wait until element is visible    ${HomePageSearchSuggestion}    10
    click element    ${HomePageSearchSuggestion}
    mouse over    ${HomePageLogo}
    sleep    3

User should be able to input 1 text on search bar
    wait until element is visible    ${HomePageSearhProduct}    10
    click element    ${HomePageSearhProduct}
    input text    ${HomePageSearhProduct}    ${ProdductSearchValue1}
    sleep    2

#DPP-310362
User should be able to view message page
    wait until element is visible    ${MessagePagePanelContainer}    10
    wait until element is visible     ${MessagePagePanelHeader}    10
    capture page screenshot
    sleep    2

User should be able to view read Order Enquiry in Dealer Message Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${ReadOrdEnqStatus}    run keyword and return status    element should be visible    ${MessagePageReadMessagesOrdEnqContainer}
    run keyword if    '${ReadOrdEnqStatus}' == 'False'    User should be able to click next page in Dealer Messages Page
    exit for loop if    '${ReadOrdEnqStatus}' == 'True'
    END
    scroll element into view    ${MessagePageReadMessagesOrdEnqContainer}
    wait until element is visible    ${MessagePageReadMessagesOrdEnqContainer}   10
    capture element screenshot    ${MessagePageReadMessagesOrdEnqContainer}
    sleep    2

User should be able to click read Order Enquiry in Dealer Message Page
    wait until element is visible   ${MessagePageReadMessagesOrdEnqTitle}    10
    click element    ${MessagePageReadMessagesOrdEnqTitle}
    wait until element is visible    ${MessageDetailsPagePanelHeader}
    capture page screenshot
    sleep    2

#DPP-310347





