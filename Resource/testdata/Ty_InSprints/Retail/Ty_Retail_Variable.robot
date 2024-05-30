*** Settings ***
Documentation       Suite description

Resource  ../../../../Resource/testdata/config.robot

*** Variables ***

${Retail_HK_RegistrationPostalAreaLabel}    //form//div[@formgroupname='postalAddress']//div[@class='col-6']//ng-select[@formcontrolname='area']/preceding-sibling::span[@class='label-content' or @class='label-content has-error' or @class='label-content color-grey' or @class='label-container']
${Retail_HK_RegistrationPostalDistrictLabel}    //form//div[@formgroupname='postalAddress']//div[@class='col-6']//ng-select[@formcontrolname='district']/preceding-sibling::span[@class='label-content' or @class='label-content has-error' or @class='label-content color-grey' or @class='label-container']

${Retail_HK_RegistrationDelAreaLabel}    //form//div[@formgroupname='deliveryAddress']//div[@class='col-6']//ng-select[@formcontrolname='area']/preceding-sibling::span[@class='label-content' or @class='label-content has-error' or @class='label-content color-grey' or @class='label-container']
${Retail_HK_RegistrationDelDistrictLabel}    //form//div[@formgroupname='deliveryAddress']//div[@class='col-6']//ng-select[@formcontrolname='district']/preceding-sibling::label//span[@class='label-content' or @class='label-content has-error' or @class='label-content color-grey']|//form//div[@formgroupname='deliveryAddress']//div[@class='col-6']//ng-select[@formcontrolname='district']/preceding-sibling::span[@class='label-container']

${Retail_HK_RegistrationContactCompanyPhoneNumLabel}    //form//div[@class='form-group']//label//span[contains(text(),'Company Phone Number') or contains(text(),'公司電話號碼')]
${Retail_HK_RegistrationContactLandlineLabel}    //form//div[@class='form-group']//label//span[contains(text(),'Landline Number') or contains(text(),'座機號碼')]

${Retail_HK_RegistrationPostalAddLine1Texbox}    //form//div[@formgroupname='postalAddress']//div[@class='col-12']//dpp-autocomplete-search[@formcontrolname='addressLine1']//input

${Retail_HK_RegistrationDelAddLine1Texbox}    //form//div[@formgroupname='deliveryAddress']//div[@class='col-12']//dpp-autocomplete-search[@formcontrolname='addressLine1']//input

${Retail_HK_RegistrationContactCompanyPhoneNumTextBox}    //form//div[@class='form-group']//label//span[contains(text(),'Company Phone Number') or contains(text(),'公司電話號碼')]/parent::label/following-sibling::dpp-input-contact-number//input
${Retail_HK_RegistrationContactLandlineTextBox}    //form//div[@class='form-group']//label//span[contains(text(),'Landline Number') or contains(text(),'座機號碼')]/parent::label/following-sibling::dpp-input-contact-number//input

${Retail_HK_RegistrationPostalAddLine1ComboBox}    //form//div[@formgroupname='postalAddress']//div[@class='col-12']//div[@role='combobox']
${Retail_HK_RegistrationPostalAddLine1ComboBoxOptionsContainer}    (//form//div[@formgroupname='postalAddress']//ng-dropdown-panel//div//div[@role='option'])

${Retail_HK_RegistrationPostalAreaComboBox}    (//form//div[@formgroupname='postalAddress']//div[@class='col-6']//ng-select[@formcontrolname='area']//div[@class='ng-select-container' or @class='ng-select-container ng-has-value'])
${Retail_HK_RegistrationPostalAreaComboBoxOptionsContainer}    (//form//div[@formgroupname='postalAddress']//ng-select[@formcontrolname='area']//ng-dropdown-panel//div//div[@role='option'])

${Retail_HK_RegistrationPostalDistrictComboBox}    (//form//div[@formgroupname='postalAddress']//div[@class='col-6']//ng-select[@formcontrolname='district']//div[@class='ng-select-container' or @class='ng-select-container ng-has-value'])
${Retail_HK_RegistrationPostalDistrictComboBoxOptionsContainer}    (//form//div[@formgroupname='postalAddress']//ng-select[@formcontrolname='district']//ng-dropdown-panel//div//div[@role='option'])

${Retail_HK_RegistrationDelAddLine1ComboBox}    //form//div[@formgroupname='deliveryAddress']//div[@class='col-12']//div[@role='combobox']
${Retail_HK_RegistrationDelAddLine1ComboBoxOptionsContainer}    (//form//div[@formgroupname='deliveryAddress']//ng-dropdown-panel//div//div[@role='option'])

${Retail_HK_RegistrationDelAreaComboBox}    (//form//div[@formgroupname='deliveryAddress']//div[@class='col-6']//ng-select[@formcontrolname='area']//div[@class='ng-select-container' or @class='ng-select-container ng-has-value'])
${Retail_HK_RegistrationDelAreaComboBoxOptionsContainer}    (//form//div[@formgroupname='deliveryAddress']//ng-select[@formcontrolname='area']//ng-dropdown-panel//div//div[@role='option'])

${Retail_HK_RegistrationDelDistrictComboBox}    (//form//div[@formgroupname='deliveryAddress']//div[@class='col-6']//ng-select[@formcontrolname='district']//div[@class='ng-select-container' or @class='ng-select-container ng-has-value'])
${Retail_HK_RegistrationDelDistrictComboBoxOptionsContainer}    (//form//div[@formgroupname='deliveryAddress']//ng-select[@formcontrolname='district']//ng-dropdown-panel//div//div[@role='option'])

${Retail_RegistrationAccNumValue}    000000001
${Retail_RegistrationCompNameValue}    Tyler Autoparts
${Retail_RegistrationTradingNameValue}    Branch X
${Retail_HK_RegistrationPostalAddLine1Value}    Kowloon City
${Retail_HK_RegistrationManualPostalAddLine1Value}    Tsim Yung
${Retail_HK_RegistrationDelAddLine1Value}    Kennedy Bay
${Retail_HK_RegistrationManualDelAddLine1Value}    Shangri La
${Retail_RegistrationFNValue}    Tyler
${Retail_RegistrationLNValue}    QA
${Retail_RegistrationEmailValue}    tyqatest@yopmail.com
${Retail_HK_Registration_MobileNumber_Value}    12121212
${Retail_HK_Registration_LandlineNumber_Value}    13131313
