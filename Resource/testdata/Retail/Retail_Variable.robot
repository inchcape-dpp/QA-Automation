*** Settings ***
Documentation       Suite description

#Resource  ../../../../../Resource/testdata/Retail/AU_Config/AU_S2_Config.robot

*** Variables ***
#-----------------------------------------------------Retail Login Page-------------------------------------------------
${Logo}    //*[@class='logo is-initialized']
${Header}    //div[@class='heading' and (contains(text(),'Login') or (contains(text(),'客戶登入')))]
${Email}    //*[@type='email']
${Pass}    //*[@type='password']
${Remember}    //*[(contains(text(),'Remember Me') or contains(text(),'記住此帳戶'))]
${RememberCheck}    //input[@type='checkbox']
${Forgot}    //a[(contains(text(),'Forgot Password')) or contains(text(),'忘記密碼')]
${LoginButton}    //button[@type='submit' and (contains(text(),'Login') or (contains(text(),' 登入 ')))]
${NoAccount}    //*[(contains(text(),'No Account?')) or contains(text(),'沒有帳戶?')]
${CreateAccount}    //*[(contains(text(),'Create Account')) or contains(text(),'註冊帳戶')]
${FooterLogo}    //div[@class='footer-logo']
${ShippingPolicy}    //*[(contains(text(),' Shipping Policy ') or contains(text(),'運送政策'))]
${PN}    //*[(contains(text(),' Privacy Policy ') or contains(text(),'私隱條款'))]
${TnC}    //*[contains(text(),' Terms & Conditions ') or contains(text(),'條款及細則')]
${CopyRight}    //*[contains(text(),' © 2024 PartsLane. All Rights Reserved.') or contains(text(),'2024 Partslane. 保留所有權利.')]/parent::*
${About Us}     //*[contains(text(),' About Us') or contains(text(),'關於我們')]
${Frequently Asked Questions}     //*[contains(text(),' Frequently Asked Questions') or contains(text(),'常見問題')]
${Contact Us}     //*[contains(text(),' Contact Us') or contains(text(),'聯絡我們')]
${PrivacyHeader}    //span[@style='font-size: 16pt; line-height: 107%']|//cx-page-layout[@class='PrivacyPolicyPageTemplate']//div/h1[contains(text(),'Privacy Policy')]
${T&CHeader}    //span[@style='font-size:16pt']|//cx-page-layout[@class='TermsAndConditionsPageTemplate']//div/h1[contains(text(),'Terms and Conditions')]
${DeliveryHeader}    //cx-page-layout[@class='ShippingPolicyPageTemplate']//div/h1[contains(text(),'Delivery Coverage')]
${AboutUsHeader}    //cx-page-layout[@class='AboutUsPageTemplate']//div/h1[contains(text(),'About Us')]
${ContactUsHeader}    //cx-page-layout[@class='FooterContactUsPageTemplate']//div/h3
${EyeIcon}    //dpp-login-form//cx-icon[@class='eye cx-icon dpp-icons__eye-on' or @class='eye cx-icon dpp-icons__eye-off']

${InvalidEmailMessage}    //*[(contains(text(),'Please enter a valid email address') or contains(text(),'請輸入正確的電子郵件'))]
${InvalidEmailPassMessage}    //div[@class='alert alert-danger']
${InvalidPassMessage}    //*[(contains(text(),'Password is a required field') or contains(text(),'密碼是必填項目'))]


${InvalidEmail}    Hello
${InvalidPass}    Hello


${Retail_HK_LoginPage_English_Button}    //dpp-language-toggle//span[contains(text(),'EN')]
${Retail_HK_LoginPage_Chinese_Button}    //dpp-language-toggle//span[contains(text(),'中文')]


#-----------------------------------------------------Retail Forgot Password Page---------------------------------------
${Retail_ForgotPasswordPageContainer}    //dpp-forgot-password
${Retail_ForgotPasswordPageLogo}    //dpp-forgot-password//*[@class='logo is-initialized']
${Retail_ForgotPasswordPageHeader}    //dpp-forgot-password//div[@class='heading'][contains(text(),'Reset Password') or (contains(text(),'重設密碼'))]
${Retail_ForgotPasswordPageSubheader}    //dpp-forgot-password//div[@class='subheading'][contains(text(),'Please enter your account email address. Instructions on how to Reset your Password will be sent to this address') or (contains(text(),'請輸入您的帳戶電子郵件地址。將向此地址發送有關如何重設密碼的說明'))]
${Retail_ForgotPasswordPageEmailTextBox}    //dpp-forgot-password//input[@formcontrolname='userEmail']
${Retail_ForgotPasswordPageSubmitButton}    //dpp-forgot-password//button[@type='submit']
${Retail_ForgotPasswordPageCreateAccountButton}    //dpp-forgot-password//a[@class='create-account']
${Retail_ForgotPasswordPageEmailErrorMessage}    //dpp-forgot-password//div[@class='form-errors']


#-----------------------------------------------------Retail Registration Page------------------------------------------


${Retail_RegistrationPageBackToLoginButton}    //div[@class='col-sm-12 col-md-7 p-0']//label[@class='cx-section pb-0 form-section__back']//a|//div[@class='col-8 p-0']//a[(contains(text(),'Back to Login') or contains(text(),' 返回登錄'))]
${Retail_RegistrationPageLogo}    (//cx-media[@class='logo is-initialized']//img)[1]
${Retail_RegistrationJoinPartsLaneHeader}    //div[@class='cx-section']//*[contains(text(),'Join PartsLane') or contains(text(),'加入PartsLane')]
${Retail_RegistrationRegisteredSupplierLabel}    //div[@class='cx-section']//*[@class='mb-5']
${Retail_RegistrationYesAccountLabel}    //div[@class='col-md-6 option-wrapper input-group'][1]//span[@class='option']
${Retail_RegistrationYesAccountSelectSupplierLabel}    //div[@class='col-md-6 option-wrapper input-group'][1]//span[@class='option-label']
${Retail_RegistrationNoAccountLabel}    //div[@class='col-md-6 option-wrapper input-group'][2]//span[@class='option']
${Retail_RegistrationNoAccountSelectSupplierLabel}    //div[@class='col-md-6 option-wrapper input-group'][2]//span[@class='option-label']

${Retail_RegistrationYesAccountComboBox}    //div[@class='col-md-6 option-wrapper input-group'][1]//div[@role='combobox']
${Retail_RegistrationNoAccountComboBox}    //div[@class='col-md-6 option-wrapper input-group'][2]//div[@role='combobox']

${Retail_RegistrationYesAccountComboBoxOption1}    //div[@class='col-md-6 option-wrapper input-group'][1]//ng-dropdown-panel[@role='listbox']//div[@role='option'][1]
${Retail_RegistrationNoAccountComboBoxOption1}    //div[@class='col-md-6 option-wrapper input-group'][2]//ng-dropdown-panel[@role='listbox']//div[@role='option'][1]

${Retail_RegistrationNoAccountSupplierEmailLabel}    //div[@class='col-md-6 option-wrapper input-group']//span[@class='supplier-email']|//span[@class='supplier-email ml-2']

${Retail_RegistrationYesAccountNextButton}    //div[@class='col-md-6 option-wrapper input-group']//button

#-----------------------------------------------------Retail Registration Page Labels
${Retail_RegistrationPrefSuppLabel}    //form//div[@class='col-md-6']//ng-select[@formcontrolname='preferredSeller']/preceding-sibling::span[@class='label-content']|//form//div[@class='col-12']//ng-select[@formcontrolname='preferredSeller']/preceding-sibling::span[@class='label-content']
${Retail_RegistrationAccNumLabel}    //form//div[@class='col-md-6']//input[@formcontrolname='accountNumber']/preceding-sibling::span[@class='label-content']
${Retail_RegistrationCompNameLabel}    //form//div[@class='col-md-6']//input[@formcontrolname='companyName']/preceding-sibling::span[@class='label-content']|//form//div[@class='col-12']//input[@formcontrolname='companyName']/preceding-sibling::span[@class='label-content']
${Retail_RegistrationTradenameLabel}    //form//div[@class='col-md-6']//input[@formcontrolname='tradingName']/preceding-sibling::span[@class='label-content']

${Retail_RegistrationPostalAddLabel}    //form//div[@formgroupname='postalAddress']//div[@class='col-md-12 mb-2']//span[@class='label-content']|//form//div[@formgroupname='postalAddress']//div[@class='col-12 mb-2']//span[@class='label-content' or @class='label-container']
${Retail_RegistrationPostalAddLine1Label}    //form//div[@formgroupname='postalAddress']//div[@class='col-12' or @class='col-md-12']//*[@formcontrolname='addressLine1']/preceding-sibling::*[self::span[contains(text(),'Address Line 1')] or self::label//span[contains(text(),'Address Line 1') or contains(text(),'地址第一行')]]
${Retail_RegistrationPostalAddLine2Label}    //form//div[@formgroupname='postalAddress']//div[@class='col-12' or @class='col-md-12']//*[@formcontrolname='addressLine2']/preceding-sibling::*[contains(text(),'Address Line 2') or contains(text(),'地址第二行') ]
${Retail_RegistrationPostalSuburbLabel}    //form//div[@formgroupname='postalAddress']//input[@formcontrolname='suburb']/preceding-sibling::span[@class='label-content' or @class='label-content has-error' or @class='label-content color-grey']
${Retail_RegistrationPostalPostalCodeLabel}    //form//div[@formgroupname='postalAddress']//input[@formcontrolname='postalCode']/preceding-sibling::span[@class='label-content' or @class='label-content has-error' or @class='label-content color-grey']
${Retail_RegistrationPostalStateLabel}    //form//div[@formgroupname='postalAddress']//ng-select[@formcontrolname='region']/preceding-sibling::span[@class='label-content' or @class='label-content has-error' or @class='label-content color-grey']

${Retail_HK_RegistrationPostalAreaLabel}    //form//div[@formgroupname='postalAddress']//div[@class='col-6']//ng-select[@formcontrolname='area']/preceding-sibling::span[contains(text(),'Area') or (contains(text(),'地區'))]
${Retail_HK_RegistrationPostalDistrictLabel}    //form//div[@formgroupname='postalAddress']//div[@class='col-6']//ng-select[@formcontrolname='district']/preceding-sibling::span[contains(text(),'District') or (contains(text(),' 區'))]

${Retail_RegistrationDelAddSameAsPostalLabel}     //form//input[@type='checkbox']/following-sibling::span[contains(text(),'Delivery Address is the same as Postal Address') or (contains(text(),'收件地址與聯絡地址相同'))]

${Retail_RegistrationDelAddLabel}     //form//div[@formgroupname='deliveryAddress']//div[@class='col-md-12 mb-2']//span[@class='label-content']|//form//div[@formgroupname='deliveryAddress']//div[@class='col-12 mb-2']//span[@class='label-content' or @class='label-container'][contains(text(),'Delivery Address') or (contains(text(),'收件地址 '))]
${Retail_RegistrationDelAddLine1Label}    //form//div[@formgroupname='deliveryAddress']//div[@class='col-12' or @class='col-md-12']//*[@formcontrolname='addressLine1']/preceding-sibling::*[self::span[contains(text(),'Address Line 1')] or self::label//span[contains(text(),'Address Line 1') or contains(text(),'地址第一行')]]
${Retail_RegistrationDelAddLine2Label}    //form//div[@formgroupname='deliveryAddress']//div[@class='col-12' or @class='col-md-12']//*[@formcontrolname='addressLine2']/preceding-sibling::*[contains(text(),'Address Line 2') or contains(text(),'地址第二行') ]
${Retail_RegistrationDelSuburbLabel}    //form//div[@formgroupname='deliveryAddress']//input[@formcontrolname='suburb']/preceding-sibling::span[@class='label-content' or @class='label-content has-error' or @class='label-content color-grey']
${Retail_RegistrationDelPostalCodeLabel}    //form//div[@formgroupname='deliveryAddress']//input[@formcontrolname='postalCode']/preceding-sibling::span[@class='label-content' or @class='label-content has-error' or @class='label-content color-grey']
${Retail_RegistrationDelStateLabel}    //form//div[@formgroupname='deliveryAddress']//ng-select[@formcontrolname='region']/preceding-sibling::label//span[@class='label-content' or @class='label-content has-error' or @class='label-content color-grey']

${Retail_HK_RegistrationDelAreaLabel}    //form//div[@formgroupname='deliveryAddress']//div[@class='col-6']//ng-select[@formcontrolname='area']/preceding-sibling::span[contains(text(),'Area') or (contains(text(),'地區'))]
${Retail_HK_RegistrationDelDistrictLabel}    //form//div[@formgroupname='deliveryAddress']//div[@class='col-6']//ng-select[@formcontrolname='district']/preceding-sibling::span[contains(text(),'District') or (contains(text(),' 區'))]

${Retail_RegistrationABNRadioLabel}    //form//div[@class='row']//input[@type='radio']/following-sibling::label[@for='abn']
${Retail_RegistrationACNRadioLabel}    //form//div[@class='row']//input[@type='radio']/following-sibling::label[@for='acn']

${Retail_RegistrationABN/ACNLabel}    //form//div[@class='form-group']//input[@formcontrolname='number']/preceding-sibling::span

${Retail_RegistrationOpeningLabel}     //form//div[@class='form-group']//ng-select[@formcontrolname='openingHours']/preceding-sibling::span[contains(text(),'Opening Hours') or (contains(text(),'營業時間'))]
${Retail_RegistrationClosingLabel}    //form//div[@class='form-group']//ng-select[@formcontrolname='closingHours']/preceding-sibling::span[contains(text(),'Closing Hours') or (contains(text(),'關閉時間'))]


${Retail_RegistrationContactFNLabel}    //form//div[@class='form-group']//input[@formcontrolname='contactFirstName']/preceding-sibling::span[contains(text(),'Contact First Name') or (contains(text(),'聯絡人名字'))]
${Retail_RegistrationContactLNLabel}    //form//div[@class='form-group']//input[@formcontrolname='contactLastName']/preceding-sibling::span[contains(text(),'Contact Last Name') or (contains(text(),'聯絡人姓氏'))]
${Retail_RegistrationContactEmailLabel}    //form//div[@class='form-group']//input[@formcontrolname='email']/preceding-sibling::span[contains(text(),'Email Address') or (contains(text(),'電郵'))]

${Retail_RegistrationContactCompanyPhoneNumLabel}    //form//div[@class='form-group']//input[@formcontrolname='mobileNumber']/preceding-sibling::span
${Retail_RegistrationContactLandlineLabel}    //form//div[@class='form-group']//input[@formcontrolname='landlineNumber']/preceding-sibling::span

${Retail_HK_RegistrationContactCompanyPhoneNumLabel}    //form//div[@class='form-group']//label//span[contains(text(),'Company Phone Number') or contains(text(),'公司電話號碼')]
${Retail_HK_RegistrationContactLandlineLabel}    //form//div[@class='form-group']//label//span[contains(text(),'Landline Number') or contains(text(),'座機號碼')]

${Retail_RegistrationTNC&PNLabel}    //div[@class='terms-block']|//span[@class='terms-block']

#-----------------------------------------------------Retail Registration Page Textbox
${Retail_RegistrationAccNumTextbox}    //form//div[@class='col-md-6']//input[@formcontrolname='accountNumber']
${Retail_RegistrationCompNameTextbox}    //form//div[@class='col-md-6']//input[@formcontrolname='companyName']|//form//div[@class='col-12']//input[@formcontrolname='companyName']
${Retail_RegistrationTradenameTextbox}    //form//div[@class='col-md-6']//input[@formcontrolname='tradingName']

${Retail_RegistrationPostalAddLine1Textbox}    //form//div[@formgroupname='postalAddress']//div[@class='col-md-12']//input[@formcontrolname='addressLine1']
${Retail_RegistrationPostalAddLine2Textbox}    //form//div[@formgroupname='postalAddress']//div[@class='col-md-12']//input[@formcontrolname='addressLine2']|//form//div[@formgroupname='postalAddress']//div[@class='col-12']//input[@formcontrolname='addressLine2']
${Retail_RegistrationPostalSuburbTextbox}    //form//div[@formgroupname='postalAddress']//input[@formcontrolname='suburb']
${Retail_RegistrationPostalPostalCodeTextbox}    //form//div[@formgroupname='postalAddress']//input[@formcontrolname='postalCode']

${Retail_HK_RegistrationPostalAddLine1Texbox}    //form//div[@formgroupname='postalAddress']//div[@class='col-12']//dpp-autocomplete-search[@formcontrolname='addressLine1']//input

${Retail_RegistrationDelAddLine1Textbox}    //form//div[@formgroupname='deliveryAddress']//div[@class='col-md-12']//input[@formcontrolname='addressLine1']
${Retail_RegistrationDelAddLine2Textbox}    //form//div[@formgroupname='deliveryAddress']//div[@class='col-md-12']//input[@formcontrolname='addressLine2']|//form//div[@formgroupname='deliveryAddress']//div[@class='col-12']//input[@formcontrolname='addressLine2']
${Retail_RegistrationDelSuburbTextbox}    //form//div[@formgroupname='deliveryAddress']//input[@formcontrolname='suburb']
${Retail_RegistrationDelPostalCodeTextbox}    //form//div[@formgroupname='deliveryAddress']//input[@formcontrolname='postalCode']

${Retail_HK_RegistrationDelAddLine1Texbox}    //form//div[@formgroupname='deliveryAddress']//div[@class='col-12']//dpp-autocomplete-search[@formcontrolname='addressLine1']//input

${Retail_RegistrationABN/ACNTextBox}    //form//div[@class='form-group']//input[@formcontrolname='number']

${Retail_RegistrationContactFNTextBox}    //form//div[@class='form-group']//input[@formcontrolname='contactFirstName']
${Retail_RegistrationContactLNTextBox}    //form//div[@class='form-group']//input[@formcontrolname='contactLastName']
${Retail_RegistrationContactEmailTextBox}    //form//div[@class='form-group']//input[@formcontrolname='email']
${Retail_RegistrationContactCompanyPhoneNumTextBox}    //form//div[@class='form-group']//input[@formcontrolname='mobileNumber']
${Retail_RegistrationContactLandlineTextBox}    //form//div[@class='form-group']//input[@formcontrolname='landlineNumber']

${Retail_HK_RegistrationContactCompanyPhoneNumTextBox}    //form//div[@class='form-group']//label//span[contains(text(),'Company Phone Number') or contains(text(),'公司電話號碼')]/parent::label/following-sibling::dpp-input-contact-number//input
${Retail_HK_RegistrationContactLandlineTextBox}    //form//div[@class='form-group']//label//span[contains(text(),'Landline Number') or contains(text(),'座機號碼')]/parent::label/following-sibling::dpp-input-contact-number//input

#-----------------------------------------------------Retail Registration Page Combobox
${Retail_RegistrationPrefSuppComboBox}    //form//div[@class='col-md-6']//ng-select//div[@class='ng-select-container ng-has-value']|//form//div[@class='col-12']//ng-select//div[@class='ng-select-container ng-has-value']
${Retail_RegistrationPrefSuppComboBoxValue1}    //form//div[@class='col-md-6']//ng-select//div[@role='option'][1]|//form//div[@class='col-12']//ng-select//div[@role='option'][1]

${Retail_HK_RegistrationPostalAddLine1ComboBox}    //form//div[@formgroupname='postalAddress']//div[@class='col-12']//div[@role='combobox']
${Retail_HK_RegistrationPostalAddLine1ComboBoxOptionsContainer}    (//form//div[@formgroupname='postalAddress']//ng-dropdown-panel//div//div[@role='option'])

${Retail_HK_RegistrationPostalAreaComboBox}    (//form//div[@formgroupname='postalAddress']//div[@class='col-6']//ng-select[@formcontrolname='area']//div[@class='ng-select-container' or @class='ng-select-container ng-has-value'])
${Retail_HK_RegistrationPostalAreaComboBoxOptionsContainer}    (//form//div[@formgroupname='postalAddress']//ng-select[@formcontrolname='area']//ng-dropdown-panel//div//div[@role='option'])

${Retail_HK_RegistrationPostalDistrictComboBox}    (//form//div[@formgroupname='postalAddress']//div[@class='col-6']//ng-select[@formcontrolname='district']//div[@class='ng-select-container' or @class='ng-select-container ng-has-value'])
${Retail_HK_RegistrationPostalDistrictComboBoxOptionsContainer}    (//form//div[@formgroupname='postalAddress']//ng-select[@formcontrolname='district']//ng-dropdown-panel//div//div[@role='option'])

${Retail_RegistrationPostalStateComboBox}    //form//div[@formgroupname='postalAddress']//ng-select[@formcontrolname='region']//div[@class='ng-select-container ng-has-value']

${Retail_RegistrationStateComboBoxACT}    //div[@class='ng-dropdown-panel-items scroll-host']//div[@role='option']//span[contains(text(),'ACT')]
${Retail_RegistrationStateComboBoxNSW}    //div[@class='ng-dropdown-panel-items scroll-host']//div[@role='option']//span[contains(text(),'NSW')]
${Retail_RegistrationStateComboBoxNT}    //div[@class='ng-dropdown-panel-items scroll-host']//div[@role='option']//span[contains(text(),'NT')]
${Retail_RegistrationStateComboBoxQLD}    //div[@class='ng-dropdown-panel-items scroll-host']//div[@role='option']//span[contains(text(),'QLD')]
${Retail_RegistrationStateComboBoxSA}    //div[@class='ng-dropdown-panel-items scroll-host']//div[@role='option']//span[contains(text(),'SA')]
${Retail_RegistrationStateComboBoxTAS}    //div[@class='ng-dropdown-panel-items scroll-host']//div[@role='option']//span[contains(text(),'TAS')]
${Retail_RegistrationStateComboBoxVIC}    //div[@class='ng-dropdown-panel-items scroll-host']//div[@role='option']//span[contains(text(),'VIC')]
${Retail_RegistrationStateComboBoxWA}    //div[@class='ng-dropdown-panel-items scroll-host']//div[@role='option']//span[contains(text(),'WA')]

${Retail_HK_RegistrationDelAddLine1ComboBox}    //form//div[@formgroupname='deliveryAddress']//div[@class='col-12']//div[@role='combobox']
${Retail_HK_RegistrationDelAddLine1ComboBoxOptionsContainer}    (//form//div[@formgroupname='deliveryAddress']//ng-dropdown-panel//div//div[@role='option'])

${Retail_HK_RegistrationDelAreaComboBox}    (//form//div[@formgroupname='deliveryAddress']//div[@class='col-6']//ng-select[@formcontrolname='area']//div[@class='ng-select-container' or @class='ng-select-container ng-has-value'])
${Retail_HK_RegistrationDelAreaComboBoxOptionsContainer}    (//form//div[@formgroupname='deliveryAddress']//ng-select[@formcontrolname='area']//ng-dropdown-panel//div//div[@role='option'])

${Retail_HK_RegistrationDelDistrictComboBox}    (//form//div[@formgroupname='deliveryAddress']//div[@class='col-6']//ng-select[@formcontrolname='district']//div[@class='ng-select-container' or @class='ng-select-container ng-has-value'])
${Retail_HK_RegistrationDelDistrictComboBoxOptionsContainer}    (//form//div[@formgroupname='deliveryAddress']//ng-select[@formcontrolname='district']//ng-dropdown-panel//div//div[@role='option'])

${Retail_RegistrationDelStateComboBox}    //form//div[@formgroupname='deliveryAddress']//ng-select[@formcontrolname='region']//div[@class='ng-select-container ng-has-value']

${Retail_RegistrationOpeningHoursComboBox}    //ng-select[@formcontrolname='openingHours']//div[@class='ng-select-container ng-has-value']
${Retail_RegistrationClosingHoursComboBox}    //ng-select[@formcontrolname='closingHours']//div[@class='ng-select-container ng-has-value']

${Retail_RegistrationOpeningHoursComboBoxValue}    (//ng-select[@formcontrolname='openingHours']//ng-dropdown-panel//div[@role='option'])[1]    #1-13 from 7AM to 7PM per hour values
${Retail_RegistrationClosingHoursComboBoxValue}    (//ng-select[@formcontrolname='closingHours']//ng-dropdown-panel//div[@role='option'])[10]    #1-13 from 7AM to 7PM per hour values

#-----------------------------------------------------Retail Registration Page Radio Button
${Retail_RegistrationABNRadioButton}    //form//div[@class='row']//label[@for='abn']/preceding-sibling::input[@type='radio']
${Retail_RegistrationACNRadioButton}    //form//div[@class='row']//label[@for='acn']/preceding-sibling::input[@type='radio']

#-----------------------------------------------------Retail Registration Page Checkbox
${Retail_RegistrationDelAddSameAsPostalCheckBox}    //form//input[@type='checkbox']

#-----------------------------------------------------Retail Registration Page Button
${Retail_RegistrationTNCButton}    //form//a[contains(text(),'Terms Of Use')]
${Retail_RegistrationPNButton}    //form//a[contains(text(),'Privacy Policy')]

${Retail_RegistrationBackToLoginButton}    //div[@class='register-form__body']//label[@class='pb-0 form-section__back' or @class='cx-section pb-0 form-section__back']//a

${Retail_RegistrationSubmitButton}    //form//button

#-----------------------------------------------------Retail Registration Page Error Messages
${Retail_RegistrationAccNumErrorMessage}    //form//input[@formcontrolname='accountNumber']/parent::label/following-sibling::div
${Retail_RegistrationCompNameErrorMessage}    //form//input[@formcontrolname='companyName']/parent::label/following-sibling::div

${Retail_RegistrationPostalAddLine1ErrorMessage}    //form//div[@formgroupname='postalAddress']//input[@formcontrolname='addressLine1']/parent::label/following-sibling::div
${Retail_RegistrationPostalSuburbErrorMessage}    //form//div[@formgroupname='postalAddress']//input[@formcontrolname='suburb']/parent::label/following-sibling::div
${Retail_RegistrationPostalPostalCodeErrorMessage}    //form//div[@formgroupname='postalAddress']//input[@formcontrolname='postalCode']/parent::label/following-sibling::div

${Retail_RegistrationDelAddLine1ErrorMessage}    //form//div[@formgroupname='deliveryAddress']//input[@formcontrolname='addressLine1']/parent::label/following-sibling::div
${Retail_RegistrationDelSuburbErrorMessage}    //form//div[@formgroupname='deliveryAddress']//input[@formcontrolname='suburb']/parent::label/following-sibling::div
${Retail_RegistrationDelPostalCodeErrorMessage}    //form//div[@formgroupname='deliveryAddress']//input[@formcontrolname='postalCode']/parent::label/following-sibling::div

${Retail_RegistrationABN/ACNTextErrorMessage}    //form//input[@formcontrolname='number']/parent::label/following-sibling::div

${Retail_RegistrationContactFNErrorMessage}    //form//input[@formcontrolname='contactFirstName']/parent::label/following-sibling::div
${Retail_RegistrationContactLNErrorMessage}    //form//input[@formcontrolname='contactLastName']/parent::label/following-sibling::div
${Retail_RegistrationContactEmailErrorMessage}    //form//input[@formcontrolname='email']/parent::label/following-sibling::div
${Retail_RegistrationContactCompanyPhoneNumErrorMessage}    //form//input[@formcontrolname='mobileNumber']/parent::label/following-sibling::div

#-----------------------------------------------------Retail Registration Page Text Values
${Retail_RegistrationAccNumValue}    123456789
${Retail_RegistrationCompNameValue}    Test Company Name
${Retail_RegistrationTradingNameValue}    Test Trading Name
${Retail_RegistrationPostalAddLine1Value}    Test Postal Address Line 1
${Retail_HK_RegistrationPostalAddLine1Value}    Pok Fu Lam
${Retail_HK_RegistrationManualPostalAddLine1Value}    Test1 Address
${Retail_RegistrationPostalAddLine2Value}    Test Postal Address Line 2
${Retail_RegistrationPostalSuburbValue}    Test Postal Suburb
${Retail_RegistrationPostalPostalCodevalue}    1234
${Retail_RegistrationDelAddLine1Value}    Test Delivery Address Line 1
${Retail_HK_RegistrationDelAddLine1Value}    Kwai Chung
${Retail_HK_RegistrationManualDelAddLine1Value}    Test2 Address
${Retail_RegistrationDelAddLine2Value}    Test Delivery Address Line 2
${Retail_RegistrationDelSuburbValue}    Test Delivery Suburb
${Retail_RegistrationDelPostalCodevalue}    4321
${Retail_RegistrationABN/ACNValue}    12345678912
${Retail_RegistrationFNValue}    Test First Name
${Retail_RegistrationLNValue}    Test Last Name
${Retail_RegistrationEmailValue}    Test@email.com
${Retail_RegistrationCompPhoneNumValue}    0432165498
${Retail_HK_Registration_MobileNumber_Value}    12345678
${Retail_RegistrationLandlineNumValue}    0413245678
${Retail_HK_Registration_LandlineNumber_Value}    12345678
${Retail_RegistrationPostalStateValue}    ${Retail_RegistrationStateComboBoxACT}
${Retail_RegistrationDelStateValue}    ${Retail_RegistrationStateComboBoxTAS}

#-----------------------------------------------------Retail Home Page--------------------------------------------------
${HomePageLogo}    //cx-page-slot[@position='SiteLogo']
${HomePageSelectVehicle}    (//div[@class='custom-header-vehicle'])[1][contains(text(),'Select your vehicle') or (contains(text(),''))]
${HomePageSearhProduct}    //div[@role='search']//input[@type='text']
${HomePageSearhProductIcon}    //div[@role='presentation']
${HomePageProfileIcon}     //dpp-my-accounts-header//cx-icon[@class='header-account-icon cx-icon dpp-icons__user-circle']
${HomePageProfileAccount}    //div[@class='header-account-label']//span[contains(text(),'My Account') or contains(text(),'我的帳戶')]
${HomePageProfileLogout}    //li//a[@href='/dppretail/logout']

${HomePage_DoubleHeader}    //div[@class='double-header--relative']
${HomePage_DoubleHeader_SellerName}    //div[@class='double-header--relative']//div[@class='seller-info']//p[@class='seller-name']
${HomePage_DoubleHeader_MyAccount_Button}    //div[@class='double-header--relative']//cx-generic-link//a[@class='header-account']
${HomePage_DoubleHeader_DropDown_Button}    //div[@class='double-header--relative']//div[@class='header-account-menu']
${HomePage_DoubleHeader_DropDown_Button_Active}    //div[@class='double-header--relative']//div[@class='header-account-menu']//cx-icon[@class='account-caret cx-icon dpp-icons__myaccount-caret-down account-menu--active']

${HomePage_DoubleHeader_Menu_Greet_Label}    //div[@class='menu-content']//div[@class='menu-content__greet']

${HomePage_DoubleHeader_Menu_Order_Button}    //div[@class='menu-content']//ul[@class='menu-content__ul']//li//div[@class='d-flex acc-tab' or @class='acc-tab']//*[contains(text(),'Order')]
${HomePage_DoubleHeader_Menu_ReturnRequest_Button}    //div[@class='menu-content']//ul[@class='menu-content__ul']//li//div[@class='d-flex acc-tab' or @class='acc-tab']//*[contains(text(),'Return Request')]
${HomePage_DoubleHeader_Menu_SavedCarts_Button}    //div[@class='menu-content']//ul[@class='menu-content__ul']//li//div[@class='d-flex acc-tab' or @class='acc-tab']//*[contains(text(),'Saved Carts')]
${HomePage_DoubleHeader_Menu_VehicleListing_Button}    //div[@class='menu-content']//ul[@class='menu-content__ul']//li//div[@class='d-flex acc-tab' or @class='acc-tab']//*[contains(text(),'Vehicle Listing')]
${HomePage_DoubleHeader_Menu_Inbox_Button}    //div[@class='menu-content']//ul[@class='menu-content__ul']//li//div[@class='d-flex acc-tab' or @class='acc-tab']//*[contains(text(),'Inbox') or contains(text(),'Messages')]
${HomePage_DoubleHeader_Menu_Profile_Button}    //div[@class='menu-content']//ul[@class='menu-content__ul']//li//div[@class='d-flex acc-tab' or @class='acc-tab']//*[contains(text(),'Profile')]
${HomePage_DoubleHeader_Menu_Company_Button}    //div[@class='menu-content']//ul[@class='menu-content__ul']//li//div[@class='d-flex acc-tab' or @class='acc-tab']//*[contains(text(),'Company')]

${HomePage_DoubleHeader_Menu_Profile_AccountDetails_Button}    //div[@class='menu-content']//ul[@class='menu-content__ul']//li//div[@class='acc-tab__sub-acc show-item']//*[contains(text(),'Account Details')]
${HomePage_DoubleHeader_Menu_Profile_ChangePassword_Button}    //div[@class='menu-content']//ul[@class='menu-content__ul']//li//div[@class='acc-tab__sub-acc show-item']//*[contains(text(),'Change Password')]
${HomePage_DoubleHeader_Menu_Company_CompanyDetails_Button}    //div[@class='menu-content']//ul[@class='menu-content__ul']//li//div[@class='acc-tab__sub-acc show-item']//*[contains(text(),'Company Details')]
${HomePage_DoubleHeader_Menu_Company_Relationship_Button}    //div[@class='menu-content']//ul[@class='menu-content__ul']//li//div[@class='acc-tab__sub-acc show-item']//*[contains(text(),'Supplier Relationships')]

${HomePage_DoubleHeader_Menu_Logout_Button}    //div[@class='menu-content']//ul[@class='menu-content__ul']//div[@class='logout-item']//a


${Retail_HomePage_HK_EPC_VehicleSearch_PopupModal_Container}    //dpp-vehicle-results-dialog//div[@class='cx-modal-content flex-layout epc']
${Retail_HomePage_HK_EPC_VehicleSearch_PopupModal_VIN_Value}    //dpp-vehicle-results-dialog//div[@class='cx-modal-content flex-layout epc']//div//span[@class='vin-value']
${Retail_HomePage_HK_EPC_VehicleSearch_PopupModal_Car_Model}    //dpp-vehicle-results-dialog//div[@class='cx-modal-content flex-layout epc']//div[@class='vehicle-detail-header']

${Retail_HomePage_HK_EPC_VehicleSearch_PopupModal_Car_ModelCode_Label}    //dpp-vehicle-results-dialog//div[@class='cx-modal-content flex-layout epc']//div[@class='vehicle-detail-container']//div[contains(text(),'Model Code') or contains(text(),'型號代碼')]
${Retail_HomePage_HK_EPC_VehicleSearch_PopupModal_Car_ModelCode_Value}    (//dpp-vehicle-results-dialog//div[@class='cx-modal-content flex-layout epc']//div[@class='vehicle-detail-container']//div[@class='vehicle-detail-body']//div[@class='value'])[1]
${Retail_HomePage_HK_EPC_VehicleSearch_PopupModal_Car_Transmission_Label}    //dpp-vehicle-results-dialog//div[@class='cx-modal-content flex-layout epc']//div[@class='vehicle-detail-container']//div[contains(text(),'Transmission') or contains(text(),'傳染')]
${Retail_HomePage_HK_EPC_VehicleSearch_PopupModal_Car_Transmission_Value}    (//dpp-vehicle-results-dialog//div[@class='cx-modal-content flex-layout epc']//div[@class='vehicle-detail-container']//div[@class='vehicle-detail-body']//div[@class='value'])[2]
${Retail_HomePage_HK_EPC_VehicleSearch_PopupModal_Car_Period_Label}    //dpp-vehicle-results-dialog//div[@class='cx-modal-content flex-layout epc']//div[@class='vehicle-detail-container']//div[contains(text(),'Period') or contains(text(),'時期')]
${Retail_HomePage_HK_EPC_VehicleSearch_PopupModal_Car_Period_Value}    (//dpp-vehicle-results-dialog//div[@class='cx-modal-content flex-layout epc']//div[@class='vehicle-detail-container']//div[@class='vehicle-detail-body']//div[@class='value'])[3]
${Retail_HomePage_HK_EPC_VehicleSearch_PopupModal_Car_Engine_Label}    //dpp-vehicle-results-dialog//div[@class='cx-modal-content flex-layout epc']//div[@class='vehicle-detail-container']//div[contains(text(),'Engine') or contains(text(),'引擎')]
${Retail_HomePage_HK_EPC_VehicleSearch_PopupModal_Car_Engine_Value}    (//dpp-vehicle-results-dialog//div[@class='cx-modal-content flex-layout epc']//div[@class='vehicle-detail-container']//div[@class='vehicle-detail-body']//div[@class='value'])[4]
${Retail_HomePage_HK_EPC_VehicleSearch_PopupModal_Car_ProductionDate_Label}    //dpp-vehicle-results-dialog//div[@class='cx-modal-content flex-layout epc']//div[@class='vehicle-detail-container']//div[contains(text(),'Production Date') or contains(text(),'生產日期')]
${Retail_HomePage_HK_EPC_VehicleSearch_PopupModal_Car_ProductionDate_Value}    (//dpp-vehicle-results-dialog//div[@class='cx-modal-content flex-layout epc']//div[@class='vehicle-detail-container']//div[@class='vehicle-detail-body']//div[@class='value'])[5]

${Retail_HomePage_HK_EPC_VehicleSearch_PopupModal_ShowMore_button}    //dpp-vehicle-results-dialog//div[@class='cx-modal-content flex-layout epc']//div[@class='show-more-details']//span[contains(text(),'顯示更多詳情') or contains(text(),'Show More Details')]

${Retail_HomePage_HK_EPC_VehicleSearch_PopupModal_Car_Body_Label}    //dpp-vehicle-results-dialog//div[@class='cx-modal-content flex-layout epc']//div[@class='vehicle-detail-container']//div[contains(text(),'Body') or contains(text(),'身體')]
${Retail_HomePage_HK_EPC_VehicleSearch_PopupModal_Car_Body_Value}    (//dpp-vehicle-results-dialog//div[@class='cx-modal-content flex-layout epc']//div[@class='vehicle-detail-container']//div[@class='vehicle-detail-body']//div[@class='value'])[6]
${Retail_HomePage_HK_EPC_VehicleSearch_PopupModal_Car_Doors_Label}    //dpp-vehicle-results-dialog//div[@class='cx-modal-content flex-layout epc']//div[@class='vehicle-detail-container']//div[contains(text(),'Doors #') or contains(text(),'門 ＃')]
${Retail_HomePage_HK_EPC_VehicleSearch_PopupModal_Car_Doors_Value}    (//dpp-vehicle-results-dialog//div[@class='cx-modal-content flex-layout epc']//div[@class='vehicle-detail-container']//div[@class='vehicle-detail-body']//div[@class='value'])[7]
${Retail_HomePage_HK_EPC_VehicleSearch_PopupModal_Car_SeatingCapacity_Label}    //dpp-vehicle-results-dialog//div[@class='cx-modal-content flex-layout epc']//div[@class='vehicle-detail-container']//div[contains(text(),'Seating Capacity') or contains(text(),'座位數')]
${Retail_HomePage_HK_EPC_VehicleSearch_PopupModal_Car_SeatingCapacity_Value}    (//dpp-vehicle-results-dialog//div[@class='cx-modal-content flex-layout epc']//div[@class='vehicle-detail-container']//div[@class='vehicle-detail-body']//div[@class='value'])[8]
${Retail_HomePage_HK_EPC_VehicleSearch_PopupModal_Car_Grade_Label}    //dpp-vehicle-results-dialog//div[@class='cx-modal-content flex-layout epc']//div[@class='vehicle-detail-container']//div[contains(text(),'Grade') or contains(text(),'年級')]
${Retail_HomePage_HK_EPC_VehicleSearch_PopupModal_Car_Grade_Value}    (//dpp-vehicle-results-dialog//div[@class='cx-modal-content flex-layout epc']//div[@class='vehicle-detail-container']//div[@class='vehicle-detail-body']//div[@class='value'])[9]
${Retail_HomePage_HK_EPC_VehicleSearch_PopupModal_Car_DriverPosition_Label}    //dpp-vehicle-results-dialog//div[@class='cx-modal-content flex-layout epc']//div[@class='vehicle-detail-container']//div[contains(text(),"Driver's Position") or contains(text(),'駕駛員位置')]
${Retail_HomePage_HK_EPC_VehicleSearch_PopupModal_Car_DriverPosition_Value}    (//dpp-vehicle-results-dialog//div[@class='cx-modal-content flex-layout epc']//div[@class='vehicle-detail-container']//div[@class='vehicle-detail-body']//div[@class='value'])[10]

${Retail_HomePage_HK_EPC_VehicleSearch_PopupModal_SaveShop_button}    //dpp-vehicle-results-dialog//div[@class='cx-modal-content flex-layout epc']//button[@class='btn btn-primary btn-sm btn-block p-1 select-this-vehicle-btn vehicleListing-btn']
${Retail_HomePage_HK_EPC_VehicleSearch_PopupModal_ShopThisVehicle_button}    //dpp-vehicle-results-dialog//div[@class='cx-modal-content flex-layout epc']//button[@class='btn btn-default btn-sm btn-block p-1 select-this-vehicle-btn']
${Retail_HomePage_HK_EPC_VehicleSearch_PopupModal_SearchAgain_button}    //dpp-vehicle-results-dialog//div[@class='cx-modal-content flex-layout epc']//button[@class='btn btn-block btn-default vehicleListing-btn-sm']


${HomePageMessageIcon}    //dpp-message-notification//cx-icon
${HomePageCartIcon}    //dpp-mini-cart//cx-icon
${HomePageCartCountIcon}    (//dpp-mini-cart//div[@class='mini-cart--info']//span[@class='count'])[1]
${HomePageSellerInfo}    //div[@class='mini-cart--seller-info']


#8521458030
#26296SG011
#-----------------------------------------------------Retail Home Page Filters & Oil
${Retail_HomePageFilter&OilCategoryButton}    //dpp-category-navigation//button[@aria-label='Filters & Oil' or @aria-label='油隔及機油']
${Retail_HomePageFilter&OilCategoryList}    //dpp-category-navigation//button[@aria-label='Filters & Oil']/following-sibling::div[@class='wrapper']//li
${Retail_HomePageFilter&OilCategoryAirFilterButton}    //dpp-category-navigation//button[@aria-label='Filters & Oil']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Air Filter ')]
${Retail_HomePageFilter&OilCategoryFuelFilterButton}    //dpp-category-navigation//button[@aria-label='Filters & Oil']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Fuel Filter ')]
${Retail_HomePageFilter&OilCategoryOilFilterButton}    //dpp-category-navigation//button[@aria-label='Filters & Oil']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Oil Filter ')]
${Retail_HomePageFilter&OilCategoryCrankcaseButton}    //dpp-category-navigation//button[@aria-label='Filters & Oil']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Crankcase (PCV) Ventilation ')]
${Retail_HomePageFilter&OilCategoryMiscFilterButton}    //dpp-category-navigation//button[@aria-label='Filters & Oil']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Misc Filters ')]
${Retail_HomePageFilter&OilCategoryTransmissionFilterButton}    //dpp-category-navigation//button[@aria-label='Filters & Oil']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Transmission Filters ')]
${Retail_HomePageFilter&OilCategoryFilterServiceKitButton}    //dpp-category-navigation//button[@aria-label='Filters & Oil']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Filter Service Kit ')]
${Retail_HomePageFilter&OilCategoryCabinAirFilterButton}    //dpp-category-navigation//button[@aria-label='Filters & Oil']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Cabin Air Filter ')]

@{Retail_RandomFilter&OilList}    ${Retail_HomePageFilter&OilCategoryAirFilterButton}    ${Retail_HomePageFilter&OilCategoryFuelFilterButton}    ${Retail_HomePageFilter&OilCategoryOilFilterButton}    ${Retail_HomePageFilter&OilCategoryCrankcaseButton}    ${Retail_HomePageFilter&OilCategoryMiscFilterButton}    ${Retail_HomePageFilter&OilCategoryTransmissionFilterButton}    ${Retail_HomePageFilter&OilCategoryFilterServiceKitButton}    ${Retail_HomePageFilter&OilCategoryCabinAirFilterButton}

#-----------------------------------------------------Retail Home Page Belt & Timing Parts
${Retail_HomePageBelts&TimingPartsCategoryButton}    //dpp-category-navigation//button[@aria-label='Belts & Timing Parts']
${Retail_HomePageBelts&TimingPartsCategoryList}    //dpp-category-navigation//button[@aria-label='Belts & Timing Parts']/following-sibling::div[@class='wrapper']//li
${Retail_HomePageBelts&TimingPartsCategoryDriveBeltButton}    (//dpp-category-navigation//button[@aria-label='Belts & Timing Parts']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Drive Belt ')])[1]
${Retail_HomePageBelts&TimingPartsCategoryDriveBeltTensionerButton}    (//dpp-category-navigation//button[@aria-label='Belts & Timing Parts']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Drive Belt ')])[2]
${Retail_HomePageBelts&TimingPartsCategorySealsButton}    //dpp-category-navigation//button[@aria-label='Belts & Timing Parts']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Seals & Shaft Repair Sleeves ')]

@{Retail_RandomBelts&TimingPartsList}    ${Retail_HomePageBelts&TimingPartsCategoryDriveBeltButton}    ${Retail_HomePageBelts&TimingPartsCategoryDriveBeltTensionerButton}    ${Retail_HomePageBelts&TimingPartsCategorySealsButton}

#-----------------------------------------------------Retail Home Page Cooling
${Retail_HomePageCoolingCategoryButton}    //dpp-category-navigation//button[@aria-label='Cooling']
${Retail_HomePageCoolingCategoryList}    //dpp-category-navigation//button[@aria-label='Cooling']/following-sibling::div[@class='wrapper']//li
${Retail_HomePageCoolingCategoryCoolantHoseButton}    //dpp-category-navigation//button[@aria-label='Cooling']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Coolant Hose Connectors ')]
${Retail_HomePageCoolingCategoryOilATCoolerButton}    //dpp-category-navigation//button[@aria-label='Cooling']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Oil Cooler - Automatic Transmission ')]
${Retail_HomePageCoolingCategoryRadiatorButton}    //dpp-category-navigation//button[@aria-label='Cooling']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Radiator & A/C Fan ')]
${Retail_HomePageCoolingCategoryEngineHosesButton}    //dpp-category-navigation//button[@aria-label='Cooling']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Engine Hoses ')]
${Retail_HomePageCoolingCategoryHeaterHosesButton}    //dpp-category-navigation//button[@aria-label='Cooling']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Heater Hoses ')]
${Retail_HomePageCoolingCategoryWaterPumpButton}    //dpp-category-navigation//button[@aria-label='Cooling']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Water Pump ')]
${Retail_HomePageCoolingCategoryThermostatButton}    //dpp-category-navigation//button[@aria-label='Cooling']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Thermostat ')]
${Retail_HomePageCoolingCategoryOilCoolerEngineButton}    //dpp-category-navigation//button[@aria-label='Cooling']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Oil Cooler - Engine ')]
${Retail_HomePageCoolingCategoryMiscHosesButton}    //dpp-category-navigation//button[@aria-label='Cooling']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Misc Hoses ')]
${Retail_HomePageCoolingCategoryCoolerMiscButton}    //dpp-category-navigation//button[@aria-label='Cooling']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Coolers - Misc ')]

@{Retail_RandomCoolingList}    ${Retail_HomePageCoolingCategoryCoolantHoseButton}    ${Retail_HomePageCoolingCategoryOilATCoolerButton}    ${Retail_HomePageCoolingCategoryRadiatorButton}    ${Retail_HomePageCoolingCategoryEngineHosesButton}    ${Retail_HomePageCoolingCategoryHeaterHosesButton}    ${Retail_HomePageCoolingCategoryWaterPumpButton}    ${Retail_HomePageCoolingCategoryThermostatButton}    ${Retail_HomePageCoolingCategoryOilCoolerEngineButton}    ${Retail_HomePageCoolingCategoryMiscHosesButton}    ${Retail_HomePageCoolingCategoryCoolerMiscButton}

#-----------------------------------------------------Retail Home Page Brakes
${Retail_HomePageBrakesCategoryButton}    //dpp-category-navigation//button[@aria-label='Brakes']
${Retail_HomePageBrakesCategoryList}    //dpp-category-navigation//button[@aria-label='Brakes']/following-sibling::div[@class='wrapper']//li
${Retail_HomePageBrakesCategoryMiscBrakeButton}    //dpp-category-navigation//button[@aria-label='Brakes']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Misc Brake Parts ')]
${Retail_HomePageBrakesCategoryDiscBrakesFrontButton}    //dpp-category-navigation//button[@aria-label='Brakes']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Disc Brakes - Front ')]
${Retail_HomePageBrakesCategoryDiscBrakesBackButton}    //dpp-category-navigation//button[@aria-label='Brakes']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Disc Brakes - Rear ')]
${Retail_HomePageBrakesCategoryABSButton}    //dpp-category-navigation//button[@aria-label='Brakes']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' ABS Parts ')]
${Retail_HomePageBrakesCategoryDrumBrakesRearButton}    //dpp-category-navigation//button[@aria-label='Brakes']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Drum Brakes - Rear ')]
${Retail_HomePageBrakesCategoryBrakeHoseButton}    //dpp-category-navigation//button[@aria-label='Brakes']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Brake Hose ')]
${Retail_HomePageBrakesCategoryPowerBrakeBoosterButton}    //dpp-category-navigation//button[@aria-label='Brakes']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Power Brake Booster ')]
${Retail_HomePageBrakesCategoryParkingBrakeButton}    //dpp-category-navigation//button[@aria-label='Brakes']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Parking Brake ')]

@{Retail_RandomBrakesList}    ${Retail_HomePageBrakesCategoryMiscBrakeButton}    ${Retail_HomePageBrakesCategoryDiscBrakesFrontButton}    ${Retail_HomePageBrakesCategoryDiscBrakesBackButton}    ${Retail_HomePageBrakesCategoryABSButton}    ${Retail_HomePageBrakesCategoryDrumBrakesRearButton}    ${Retail_HomePageBrakesCategoryBrakeHoseButton}    ${Retail_HomePageBrakesCategoryPowerBrakeBoosterButton}    ${Retail_HomePageBrakesCategoryParkingBrakeButton}

#-----------------------------------------------------Retail Home Page Suspension
${Retail_HomePageSuspensionCategoryButton}    //dpp-category-navigation//button[@aria-label='Suspension']
${Retail_HomePageSuspensionCategoryList}    //dpp-category-navigation//button[@aria-label='Suspension']/following-sibling::div[@class='wrapper']//li
${Retail_HomePageSuspensionCategoryAlignmentKitsButton}    //dpp-category-navigation//button[@aria-label='Suspension']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Alignment Kits & Parts ')]
${Retail_HomePageSuspensionCategoryBallJointsButton}    //dpp-category-navigation//button[@aria-label='Suspension']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Ball Joints & Suspension Arms ')]
${Retail_HomePageSuspensionCategoryCoilSpringsButton}    //dpp-category-navigation//button[@aria-label='Suspension']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Coil Springs ')]
${Retail_HomePageSuspensionCategoryShocksButton}    //dpp-category-navigation//button[@aria-label='Suspension']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Shocks and Struts ')]
${Retail_HomePageSuspensionCategorySwayBarButton}    //dpp-category-navigation//button[@aria-label='Suspension']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Sway Bar & Link ')]
${Retail_HomePageSuspensionCategoryFrameButton}    //dpp-category-navigation//button[@aria-label='Suspension']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Frame / Chassis Components ')]
${Retail_HomePageSuspensionCategorySuspensionButton}    //dpp-category-navigation//button[@aria-label='Suspension']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Suspension Bushes ')]

@{Retail_RandomSuspensionList}    ${Retail_HomePageSuspensionCategoryAlignmentKitsButton}    ${Retail_HomePageSuspensionCategoryBallJointsButton}    ${Retail_HomePageSuspensionCategoryCoilSpringsButton}    ${Retail_HomePageSuspensionCategoryShocksButton}    ${Retail_HomePageSuspensionCategorySwayBarButton}    ${Retail_HomePageSuspensionCategoryFrameButton}    ${Retail_HomePageSuspensionCategorySuspensionButton}

#-----------------------------------------------------Retail Home Page Electrical
${Retail_HomePageElectricalCategoryButton}    //dpp-category-navigation//button[@aria-label='Electrical']
${Retail_HomePageElectricalCategoryList}    //dpp-category-navigation//button[@aria-label='Electrical']/following-sibling::div[@class='wrapper']//li
${Retail_HomePageElectricalCategoryMiscElectButton}    //dpp-category-navigation//button[@aria-label='Electrical']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Misc Electrical ')]
${Retail_HomePageElectricalCategoryBatteryButton}    //dpp-category-navigation//button[@aria-label='Electrical']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Battery ')]
${Retail_HomePageElectricalCategoryEngineElectButton}    //dpp-category-navigation//button[@aria-label='Electrical']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Engine Electrical ')]
${Retail_HomePageElectricalCategoryCoolingElectButton}    //dpp-category-navigation//button[@aria-label='Electrical']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Cooling Electrical ')]
${Retail_HomePageElectricalCategoryTransmissionElectButton}    //dpp-category-navigation//button[@aria-label='Electrical']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Transmission Electrical ')]
${Retail_HomePageElectricalCategoryIgnitionElectButton}    //dpp-category-navigation//button[@aria-label='Electrical']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Ignition & Key Electrical ')]
${Retail_HomePageElectricalCategoryBodyElectButton}    //dpp-category-navigation//button[@aria-label='Electrical']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Body Electrical (Int & Ext)')]
${Retail_HomePageElectricalCategoryHarnessButton}    //dpp-category-navigation//button[@aria-label='Electrical']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Harnesses & Connectors')]
${Retail_HomePageElectricalCategoryAirconElectButton}    //dpp-category-navigation//button[@aria-label='Electrical']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Aircon & Heating Electrical')]
${Retail_HomePageElectricalCategoryGlobesButton}    //dpp-category-navigation//button[@aria-label='Electrical']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Globes ')]
${Retail_HomePageElectricalCategoryRelaysButton}    //dpp-category-navigation//button[@aria-label='Electrical']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Relays ')]

@{Retail_RandomElectricalList}    ${Retail_HomePageElectricalCategoryMiscElectButton}    ${Retail_HomePageElectricalCategoryBatteryButton}    ${Retail_HomePageElectricalCategoryEngineElectButton}    ${Retail_HomePageElectricalCategoryCoolingElectButton}    ${Retail_HomePageElectricalCategoryTransmissionElectButton}    ${Retail_HomePageElectricalCategoryIgnitionElectButton}    ${Retail_HomePageElectricalCategoryBodyElectButton}    ${Retail_HomePageElectricalCategoryHarnessButton}    ${Retail_HomePageElectricalCategoryAirconElectButton}    ${Retail_HomePageElectricalCategoryGlobesButton}    ${Retail_HomePageElectricalCategoryRelaysButton}

#-----------------------------------------------------Retail Home Page Service Parts
${Retail_HomePageServicePartsCategoryButton}    //dpp-category-navigation//button[@aria-label='Service Parts']
${Retail_HomePageServicePartsCategoryList}    //dpp-category-navigation//button[@aria-label='Service Parts']/following-sibling::div[@class='wrapper']//li
${Retail_HomePageServicePartsCategoryDriveBeltsButton}    //dpp-category-navigation//button[@aria-label='Service Parts']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Drive Belts ')]
${Retail_HomePageServicePartsCategoryOilsCoolantsButton}    //dpp-category-navigation//button[@aria-label='Service Parts']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Oils Coolants & Filters ')]
${Retail_HomePageServicePartsCategoryIgnitionButton}    //dpp-category-navigation//button[@aria-label='Service Parts']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Ignition & Starting ')]
${Retail_HomePageServicePartsCategoryServiceMiscButton}    //dpp-category-navigation//button[@aria-label='Service Parts']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Service Misc ')]
${Retail_HomePageServicePartsCategoryWipersButton}    //dpp-category-navigation//button[@aria-label='Service Parts']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Wipers ')]
${Retail_HomePageServicePartsCategoryServiceManualsButton}    //dpp-category-navigation//button[@aria-label='Service Parts']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Service Manuals & Tools ')]
${Retail_HomePageServicePartsCategoryAdditivesButton}    //dpp-category-navigation//button[@aria-label='Service Parts']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Additives & Cleaners ')]
${Retail_HomePageServicePartsCategoryBreakingButton}    //dpp-category-navigation//button[@aria-label='Service Parts']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Braking ')]
${Retail_HomePageServicePartsCategoryServiceKitsButton}    //dpp-category-navigation//button[@aria-label='Service Parts']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Service Kits ')]

@{Retail_RandomServicePartsList}    ${Retail_HomePageServicePartsCategoryDriveBeltsButton}    ${Retail_HomePageServicePartsCategoryOilsCoolantsButton}    ${Retail_HomePageServicePartsCategoryIgnitionButton}    ${Retail_HomePageServicePartsCategoryServiceMiscButton}    ${Retail_HomePageServicePartsCategoryWipersButton}    ${Retail_HomePageServicePartsCategoryServiceManualsButton}    ${Retail_HomePageServicePartsCategoryAdditivesButton}    ${Retail_HomePageServicePartsCategoryBreakingButton}    ${Retail_HomePageServicePartsCategoryServiceKitsButton}

#-----------------------------------------------------Retail Home Page Engine Parts
${Retail_HomePageEnginePartsCategoryButton}    //dpp-category-navigation//button[@aria-label='Engine Parts']
${Retail_HomePageEnginePartsCategoryList}    //dpp-category-navigation//button[@aria-label='Engine Parts']/following-sibling::div[@class='wrapper']//li
${Retail_HomePageEnginePartsCategoryValvetrainButton}    //dpp-category-navigation//button[@aria-label='Engine Parts']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Valvetrain Components ')]
${Retail_HomePageEnginePartsCategoryConnectingRodButton}    //dpp-category-navigation//button[@aria-label='Engine Parts']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Connecting Rod ')]
${Retail_HomePageEnginePartsCategoryManifoldsButton}    //dpp-category-navigation//button[@aria-label='Engine Parts']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Manifolds ')]
${Retail_HomePageEnginePartsCategoryEngineMountButton}    //dpp-category-navigation//button[@aria-label='Engine Parts']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Engine/Trans Mount ')]
${Retail_HomePageEnginePartsCategoryEngineValvesButton}    //dpp-category-navigation//button[@aria-label='Engine Parts']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Engine Valves ')]
${Retail_HomePageEnginePartsCategoryHarmonicButton}    //dpp-category-navigation//button[@aria-label='Engine Parts']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Harmonic Balancer/TVD ')]
${Retail_HomePageEnginePartsCategoryOilSumpButton}    //dpp-category-navigation//button[@aria-label='Engine Parts']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Oil Sump ')]
${Retail_HomePageEnginePartsCategoryOilPumpButton}    //dpp-category-navigation//button[@aria-label='Engine Parts']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Oil Pump & Parts ')]
${Retail_HomePageEnginePartsCategoryPistonsButton}    //dpp-category-navigation//button[@aria-label='Engine Parts']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Pistons & Parts ')]
${Retail_HomePageEnginePartsCategoryTimingBeltsButton}    //dpp-category-navigation//button[@aria-label='Engine Parts']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Timing Belts & Parts ')]
${Retail_HomePageEnginePartsCategoryTimingChainsButton}    //dpp-category-navigation//button[@aria-label='Engine Parts']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Timing Chain & Parts ')]
${Retail_HomePageEnginePartsCategoryTimingCoverButton}    //dpp-category-navigation//button[@aria-label='Engine Parts']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Timing Cover ')]
${Retail_HomePageEnginePartsCategoryTurbochargerButton}    //dpp-category-navigation//button[@aria-label='Engine Parts']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Turbocharger/Supercharger ')]
${Retail_HomePageEnginePartsCategoryCylinderButton}    //dpp-category-navigation//button[@aria-label='Engine Parts']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Cylinder Head ')]
${Retail_HomePageEnginePartsCategoryCrankshaftButton}    //dpp-category-navigation//button[@aria-label='Engine Parts']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Crankshaft ')]
${Retail_HomePageEnginePartsCategoryEngineBlockButton}    //dpp-category-navigation//button[@aria-label='Engine Parts']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Engine & Block ')]
${Retail_HomePageEnginePartsCategoryTimingGearsButton}    //dpp-category-navigation//button[@aria-label='Engine Parts']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Timing Gears & Parts ')]
${Retail_HomePageEnginePartsCategoryRockerCoverButton}    //dpp-category-navigation//button[@aria-label='Engine Parts']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Rocker Cover ')]
${Retail_HomePageEnginePartsCategoryMiscButton}    //dpp-category-navigation//button[@aria-label='Engine Parts']/following-sibling::div[@class='wrapper']//li//a[starts-with(text(),' Misc Parts ')]

@{Retail_RandomEnginePartsList}    ${Retail_HomePageEnginePartsCategoryValvetrainButton}    ${Retail_HomePageEnginePartsCategoryConnectingRodButton}    ${Retail_HomePageEnginePartsCategoryManifoldsButton}    ${Retail_HomePageEnginePartsCategoryEngineMountButton}    ${Retail_HomePageEnginePartsCategoryEngineValvesButton}    ${Retail_HomePageEnginePartsCategoryHarmonicButton}    ${Retail_HomePageEnginePartsCategoryOilSumpButton}    ${Retail_HomePageEnginePartsCategoryOilPumpButton}    ${Retail_HomePageEnginePartsCategoryPistonsButton}    ${Retail_HomePageEnginePartsCategoryTimingBeltsButton}    ${Retail_HomePageEnginePartsCategoryTimingChainsButton}    ${Retail_HomePageEnginePartsCategoryTimingCoverButton}    ${Retail_HomePageEnginePartsCategoryTurbochargerButton}    ${Retail_HomePageEnginePartsCategoryCylinderButton}    ${Retail_HomePageEnginePartsCategoryCrankshaftButton}    ${Retail_HomePageEnginePartsCategoryEngineBlockButton}    ${Retail_HomePageEnginePartsCategoryTimingGearsButton}    ${Retail_HomePageEnginePartsCategoryRockerCoverButton}    ${Retail_HomePageEnginePartsCategoryMiscButton}

#-----------------------------------------------------Retail Home Page All
${HomePageAllCategory}    //dpp-category-navigation//a[@href='/dppretail/c/0']|//dpp-category-navigation//a[contains(text(),'All')]
${HomePageOtherCategory}

#${HomePageYourPirceLabel}    //div[@class='custom-control custom-switch']//label
#${HomePageYourPirceToggle}    //div[@class='custom-control custom-switch']//input[@type='checkbox']
#${HomePageGSTLabel}    //div[@class='ml-5 custom-control custom-switch']//label
#${HomePageGSTToggle}    //div[@class='ml-5 custom-control custom-switch']//input[@type='checkbox']

${HomePageSelectVehicleContainer}    //dpp-vehicle-search|//dpp-hk-vehicle|//dpp-toyota-vehicle-selection
${HomePageSelectVehicleHeader}    //dpp-vehicle-search//span
${HomePageSelectVehicleStateComboBox}    //dpp-vehicle-search//ng-select[@formcontrolname='state']
${HomePageSelectVehicleRegoTextBox}    //dpp-vehicle-search//input[@formcontrolname='rego']
${HomePageSelectVehicleVINTextBox}    //dpp-vehicle-search//input[@formcontrolname='vinNumber']
${HomePageSelectVehicleSubmitButton}    //dpp-vehicle-search//button[@type='submit']
${HomePageSelectVehicleSearchByModel}     //div[@class='search-vehicle']//a

${HomePageSelectVehicleSearchByRego}    //dpp-vehicle-search//button[@type='button']

${HomePageSearchSuggestion}    //ul[@class='suggestions']//li/a

@{Retail_FilterListElements}    ${Retail_HomePageFilter&OilCategoryButton}    ${Retail_HomePageBelts&TimingPartsCategoryButton}    ${Retail_HomePageCoolingCategoryButton}    ${Retail_HomePageBrakesCategoryButton}    ${Retail_HomePageSuspensionCategoryButton}    ${Retail_HomePageElectricalCategoryButton}    ${Retail_HomePageServicePartsCategoryButton}    ${Retail_HomePageEnginePartsCategoryButton}

@{Retail_HK_FilterListElements}    ${Retail_HomePageFilter&OilCategoryButton}    ${Retail_HomePageBelts&TimingPartsCategoryButton}    ${Retail_HomePageCoolingCategoryButton}    ${Retail_HomePageBrakesCategoryButton}    ${Retail_HomePageSuspensionCategoryButton}    ${Retail_HomePageElectricalCategoryButton}    ${Retail_HomePageEnginePartsCategoryButton}

@{Retail_HK_FilterListElements_New}    ${Retail_HK_HomePage_BodyParts_Category_Button}    ${Retail_HK_HomePage_Chemicals_Category_Button}    ${Retail_HK_HomePage_MaintenanceItem_Category_Button}    ${Retail_HK_HomePage_RepairParts_Category_Button}    ${Retail_HK_HomePage_ToyotaHybrid_Category_Button}

${Retail_FilterListSubElements}    ((//dpp-category-navigation//button[@tabindex='0'])[${RandomFilterIndex}]/following-sibling::div[@class='wrapper']//li)

${Prod_NumPrize_Index}    2
${Part_Num_Index}    1

${HomePageSearchSuggestionList1}    (//div[@id='results']//ul[@class='products'])[1]
${SearchProdPrice}    (//div[@id='results']//ul[@class='products']//li[@class='row-wrapper']//span[@class='price'])[1]


${Retail_AU_HomePage_Manual_SearchVehicle_Container}    //dpp-search-by-vehicle//div[@class='main-box main-box--padding']
${Retail_AU_HomePage_VINRego_SearchVehicle_Container}    //dpp-vehicle-search//dpp-rego-vin-vehicle-search//div[@class='main-box main-box--padding']
${Retail_AU_HomePage_Search_PopUp_Container}    //dpp-vehicle-results
${Retail_AU_HomePage_Search_PopUp_SearchAgain_Button}    //dpp-vehicle-results//div[@class='col-6 pl-2']
${Retail_AU_HomePage_Search_PopUp_SelectSave_Button}    //dpp-vehicle-results//button[@class='btn btn-sm btn-block mt-0 p-1 select-this-vehicle-btn btn-default vehicleListing-btn' and contains(text(),'Select & Save Vehicle')]
${Retail_AU_HomePage_Search_PopUp_SelectVehicle_Button}    //dpp-vehicle-results//button[@class='btn btn-sm btn-block ml-2 mt-0 p-1 select-this-vehicle-btn btn-secondary' and contains(text(),'Select This Vehicle')]
${Retail_AU_HomePage_Search_PopUp_SelectSave_Button_Disabled}    //dpp-vehicle-results//button[@class='btn btn-sm btn-block mt-0 p-1 select-this-vehicle-btn btn-default vehicleListing-btn' and @disabled and contains(text(),'Select & Save Vehicle')]

${Retail_AU_HomePage_Search_PopUp_SelectSave_Button_Disabled}    //dpp-vehicle-results//button[@class='btn btn-sm btn-block mt-0 p-1 select-this-vehicle-btn btn-default vehicleListing-btn' and @disabled and contains(text(),'Select & Save Vehicle')]

${Retail_AU_HomePage_Manual_Model_Combobox}    //dpp-search-by-vehicle//ng-select[@formcontrolname='model']//div[@class='ng-select-container']
${Retail_AU_HomePage_Manual_Year_Combobox}    //dpp-search-by-vehicle//ng-select[@formcontrolname='year']//div[@class='ng-select-container']
${Retail_AU_HomePage_Manual_Series_Combobox}    //dpp-search-by-vehicle//ng-select[@formcontrolname='series']//div[@class='ng-select-container' or @class='ng-select-container ng-has-value']
${Retail_AU_HomePage_Manual_Engine_Combobox}    //dpp-search-by-vehicle//ng-select[@formcontrolname='engine']//div[@class='ng-select-container' or @class='ng-select-container ng-has-value']
${Retail_AU_HomePage_Manual_Details_Combobox}    //dpp-search-by-vehicle//ng-select[@formcontrolname='details']//div[@class='ng-select-container' or @class='ng-select-container ng-has-value']

${Retail_AU_HomePage_Manual_Search_Button}    //dpp-search-by-vehicle//button

${Retail_AU_HomePage_VINRego_State_Combobox}    //dpp-vehicle-search//dpp-rego-vin-vehicle-search//div[@class='main-box main-box--padding']//ng-select[@formcontrolname='state']//div[@class='ng-select-container']
${Retail_AU_HomePage_VINRego_Rego_Textbox}    //dpp-vehicle-search//dpp-rego-vin-vehicle-search//div[@class='main-box main-box--padding']//input[@formcontrolname='rego']
${Retail_AU_HomePage_VINRego_VIN_Textbox}    //dpp-vehicle-search//dpp-rego-vin-vehicle-search//div[@class='main-box main-box--padding']//input[@formcontrolname='vinNumber']
${Retail_AU_HomePage_VINRego_Search_Button}    //dpp-vehicle-search//dpp-rego-vin-vehicle-search//div[@class='main-box main-box--padding']//button

#-----------------------------------------------------Retail Home Page HK
${Retail_HK_HomePage_SearchVehicle_Container}    //dpp-hk-search-by-vehicle//div[@class='main-box main-box--padding']|//dpp-toyota-search-by-vehicle//div[@class='main-box main-box--padding']
${Retail_HK_HomePage_SearchVIN_Container}    //dpp-hk-search-by-vin//div[@class='main-box main-box--padding']|//dpp-toyota-search-by-vin//div[@class='main-box main-box--padding']
${Retail_HK_HomePage_SearchVIN_TextBox}    //dpp-hk-search-by-vin//div[@class='main-box main-box--padding']//input|//dpp-toyota-search-by-vin//div[@class='main-box main-box--padding']//input
${Retail_HK_HomePage_SearchVIN_Button}    //dpp-hk-search-by-vin//div[@class='main-box main-box--padding']//button|//dpp-toyota-search-by-vin//div[@class='main-box main-box--padding']//button

${Retail_HK_HomePage_SearchVIN_PopUp_Container}    //dpp-hk-vehicle-results
${Retail_HK_HomePage_SearchVIN_PopUp_ShopVehicle_Button}    //dpp-hk-vehicle-results//div/button[@class='btn btn-sm btn-block btn-default mt-2 p-1 select-this-vehicle-btn']
${Retail_HK_HomePage_SearchVIN_PopUp_SaveVehicle_Button}    //dpp-hk-vehicle-results//div/button[@class='btn btn-sm btn-primary btn-block p-1 select-this-vehicle-btn vehicleListing-btn']
${Retail_HK_HomePage_SearchVIN_PopUp_Search_Button}    //dpp-hk-vehicle-results//div[@class='button-wrapper d-flex justify-content-center mt-3']//button

${Retail_HK_HomePage_Manula_Brand_Combobox}    //dpp-hk-search-by-vehicle//ng-select[@formcontrolname='make']//div[@class='ng-select-container' or @class='ng-select-container ng-has-value']|//dpp-toyota-search-by-vehicle//ng-select[@formcontrolname='make']//div[@class='ng-select-container' or @class='ng-select-container ng-has-value']
${Retail_HK_HomePage_Manula_Model_Combobox}    //dpp-hk-search-by-vehicle//ng-select[@formcontrolname='model']//div[@class='ng-select-container' or @class='ng-select-container ng-has-value']|//dpp-toyota-search-by-vehicle//ng-select[@formcontrolname='model']//div[@class='ng-select-container' or @class='ng-select-container ng-has-value']
${Retail_HK_HomePage_Manual_Year_Combobox}    //dpp-hk-search-by-vehicle//ng-select[@formcontrolname='year']//div[@class='ng-select-container' or @class='ng-select-container ng-has-value']|//dpp-toyota-search-by-vehicle//ng-select[@formcontrolname='year']//div[@class='ng-select-container' or @class='ng-select-container ng-has-value']
${Retail_HK_HomePage_Manual_Variant_Combobox}    //dpp-hk-search-by-vehicle//ng-select[@formcontrolname='series']//div[@class='ng-select-container' or @class='ng-select-container ng-has-value']|//dpp-toyota-search-by-vehicle//ng-select[@formcontrolname='series']//div[@class='ng-select-container' or @class='ng-select-container ng-has-value']
${Retail_HK_HomePage_Manual_ModelID_Combobox}    //dpp-hk-search-by-vehicle//ng-select[@formcontrolname='modelId']//div[@class='ng-select-container' or @class='ng-select-container ng-has-value']|//dpp-toyota-search-by-vehicle//ng-select[@formcontrolname='modelId']//div[@class='ng-select-container' or @class='ng-select-container ng-has-value']

${Retail_HK_HomePage_Manula_Search_Button}    //dpp-hk-search-by-vehicle//button|//dpp-toyota-search-by-vehicle//button

${Retail_HK_HomePage_SearchVIN_TextBox_Value1}    JTNKC4B1809000753
${Retail_HK_HomePage_SearchVIN_TextBox_Value2}    JTMBH31V10D017606
${Retail_HK_HomePage_SearchVIN_TextBox_Value3}    JT711MP1000052922
${Retail_HK_HomePage_SearchVIN_TextBox_Value4}    JTHBH96S605048702
${Retail_HK_HomePage_SearchVIN_TextBox_Value5}    JTHGL46F705046712

${Retail_HK_HomePage_EPC_Button}    //dpp-category-navigation//span[contains(text(),'ELECTRONIC PARTS CATALOG')]/parent::button
${Retail_HK_HomePage_EPC_Button_Disabled}    //dpp-category-navigation//span[contains(text(),'ELECTRONIC PARTS CATALOG')]/parent::button[@disabled]

#-----------------------------------------------------Retail HK Home Page Body Parts
${Retail_HK_HomePage_BodyParts_Category_Button}    //dpp-category-navigation//button[@aria-label='Body Parts' or @aria-label='車身部件']
${Retail_HK_HomePage_BodyParts_Category_List}    (//dpp-category-navigation)[1]//button[@aria-label='Body Parts' or @aria-label='車身部件']/following-sibling::div[@class='wrapper']//li
${Retail_HK_HomePage_BodyParts_Category_BackDoor}    //dpp-category-navigation//button[@aria-label='Body Parts' or @aria-label='車身部件']/following-sibling::div[@class='wrapper']//li//a[contains(text(),'Back Door / Luggage Panel') or (contains(text(),'尾冚 / 尾箱'))]
${Retail_HK_HomePage_BodyParts_Category_FrontBumper}    //dpp-category-navigation//button[@aria-label='Body Parts' or @aria-label='車身部件']/following-sibling::div[@class='wrapper']//li//a[contains(text(),'Front Bumper Cover') or (contains(text(),'頭泵把'))]
${Retail_HK_HomePage_BodyParts_Category_FrontDoor}    //dpp-category-navigation//button[@aria-label='Body Parts' or @aria-label='車身部件']/following-sibling::div[@class='wrapper']//li//a[contains(text(),'Front Door') or (contains(text(),'前門'))]
${Retail_HK_HomePage_BodyParts_Category_FrontFender}    //dpp-category-navigation//button[@aria-label='Body Parts' or @aria-label='車身部件']/following-sibling::div[@class='wrapper']//li//a[contains(text(),'Front Fender') or (contains(text(),'頭沙板'))]
${Retail_HK_HomePage_BodyParts_Category_HeadLamp}    //dpp-category-navigation//button[@aria-label='Body Parts' or @aria-label='車身部件']/following-sibling::div[@class='wrapper']//li//a[contains(text(),'Head Lamp') or (contains(text(),'頭燈'))]
${Retail_HK_HomePage_BodyParts_Category_Hood}    //dpp-category-navigation//button[@aria-label='Body Parts' or @aria-label='車身部件']/following-sibling::div[@class='wrapper']//li//a[contains(text(),'Hood') or (contains(text(),'頭冚'))]
${Retail_HK_HomePage_BodyParts_Category_OuterMirror}    //dpp-category-navigation//button[@aria-label='Body Parts' or @aria-label='車身部件']/following-sibling::div[@class='wrapper']//li//a[contains(text(),'Outer Mirror') or (contains(text(),'倒後鏡'))]
${Retail_HK_HomePage_BodyParts_Category_RearBumper}    //dpp-category-navigation//button[@aria-label='Body Parts' or @aria-label='車身部件']/following-sibling::div[@class='wrapper']//li//a[contains(text(),'Rear Bumper Cover') or (contains(text(),'尾泵把'))]
${Retail_HK_HomePage_BodyParts_Category_RearCombinationLamp}    (//dpp-category-navigation//button[@aria-label='Body Parts' or @aria-label='車身部件']/following-sibling::div[@class='wrapper']//li//a[contains(text(),'Rear Combination Lamp') or (contains(text(),'尾燈'))])[1]
${Retail_HK_HomePage_BodyParts_Category_RearDoor}    //dpp-category-navigation//button[@aria-label='Body Parts' or @aria-label='車身部件']/following-sibling::div[@class='wrapper']//li//a[contains(text(),'Rear Door') or (contains(text(),'尾門'))]
${Retail_HK_HomePage_BodyParts_Category_RearLamp}    (//dpp-category-navigation//button[@aria-label='Body Parts' or @aria-label='車身部件']/following-sibling::div[@class='wrapper']//li//a[contains(text(),'Rear Lamp') or (contains(text(),'尾燈'))])[2]
${Retail_HK_HomePage_BodyParts_Category_Rear Quarter Panel}    //dpp-category-navigation//button[@aria-label='Body Parts' or @aria-label='車身部件']/following-sibling::div[@class='wrapper']//li//a[contains(text(),'Rear Quarter Panel') or (contains(text(),'尾沙板'))]

#-----------------------------------------------------Retail HK Home Page Chemicals
${Retail_HK_HomePage_Chemicals_Category_Button}    //dpp-category-navigation//button[@aria-label='Chemicals' or @aria-label='化工產品']
${Retail_HK_HomePage_Chemicals_Category_List}    (//dpp-category-navigation)[1]//button[@aria-label='Chemicals' or @aria-label='化工產品']/following-sibling::div[@class='wrapper']//li
${Retail_HK_HomePage_Chemicals_Category_BrakeFluid}    //dpp-category-navigation//button[@aria-label='Chemicals' or @aria-label='化工產品']/following-sibling::div[@class='wrapper']//li//a[contains(text(),'Brake Fuild') or (contains(text(),'迫力油'))]
${Retail_HK_HomePage_Chemicals_Category_Coolant}    //dpp-category-navigation//button[@aria-label='Chemicals' or @aria-label='化工產品']/following-sibling::div[@class='wrapper']//li//a[contains(text(),'Coolant') or (contains(text(),'水箱水'))]
${Retail_HK_HomePage_Chemicals_Category_DifferentialOil}    //dpp-category-navigation//button[@aria-label='Chemicals' or @aria-label='化工產品']/following-sibling::div[@class='wrapper']//li//a[contains(text(),'Differential Oil') or (contains(text(),'尾牙油'))]
${Retail_HK_HomePage_Chemicals_Category_EngineOil}    //dpp-category-navigation//button[@aria-label='Chemicals' or @aria-label='化工產品']/following-sibling::div[@class='wrapper']//li//a[contains(text(),'Engine Oil') or (contains(text(),'偈油'))]
${Retail_HK_HomePage_Chemicals_Category_Packing}    //dpp-category-navigation//button[@aria-label='Chemicals' or @aria-label='化工產品']/following-sibling::div[@class='wrapper']//li//a[contains(text(),'Packing') or (contains(text(),'崢口膠'))]
${Retail_HK_HomePage_Chemicals_Category_PoweSteeringFluid}    //dpp-category-navigation//button[@aria-label='Chemicals' or @aria-label='化工產品']/following-sibling::div[@class='wrapper']//li//a[contains(text(),'Power Steering Fuild') or (contains(text(),'軚油'))]
${Retail_HK_HomePage_Chemicals_Category_SuspensionFluid}    //dpp-category-navigation//button[@aria-label='Chemicals' or @aria-label='化工產品']/following-sibling::div[@class='wrapper']//li//a[contains(text(),'Suspension Fluid') or (contains(text(),'避震機油'))]
${Retail_HK_HomePage_Chemicals_Category_TransmissionOil}    //dpp-category-navigation//button[@aria-label='Chemicals' or @aria-label='化工產品']/following-sibling::div[@class='wrapper']//li//a[contains(text(),'Tranmission Oil') or (contains(text(),'波箱油'))]


#-----------------------------------------------------Retail HK Home Page Maintenance Item
${Retail_HK_HomePage_MaintenanceItem_Category_Button}    //dpp-category-navigation//button[@aria-label='Maintenance Item' or @aria-label='快流件']
${Retail_HK_HomePage_MaintenanceItem_Category_List}    (//dpp-category-navigation)[1]//button[@aria-label='Maintenance Item' or @aria-label='快流件']/following-sibling::div[@class='wrapper']//li
${Retail_HK_HomePage_MaintenanceItem_Category_Absorber}    //dpp-category-navigation//button[@aria-label='Maintenance Item' or @aria-label='快流件']/following-sibling::div[@class='wrapper']//li//a[contains(text(),'A/C Filter') or (contains(text(),'冷氣格'))]
${Retail_HK_HomePage_MaintenanceItem_Category_AirFilter}    //dpp-category-navigation//button[@aria-label='Maintenance Item' or @aria-label='快流件']/following-sibling::div[@class='wrapper']//li//a[contains(text(),'Absorber') or (contains(text(),'避震機'))]
${Retail_HK_HomePage_MaintenanceItem_Category_Battery}
${Retail_HK_HomePage_MaintenanceItem_Category_BrakePad}
${Retail_HK_HomePage_MaintenanceItem_Category_FuelFilter}
${Retail_HK_HomePage_MaintenanceItem_Category_OilFilter}
${Retail_HK_HomePage_MaintenanceItem_Category_SparkPlug}
${Retail_HK_HomePage_MaintenanceItem_Category_Vbelt}
${Retail_HK_HomePage_MaintenanceItem_Category_WiperBlade}
${Retail_HK_HomePage_MaintenanceItem_Category_WiperRubber}
${Retail_HK_HomePage_MaintenanceItem_Category_A/C}
${Retail_HK_HomePage_MaintenanceItem_Category_A/C}

#-----------------------------------------------------Retail HK Home Page Repair Parts
${Retail_HK_HomePage_RepairParts_Category_Button}    //dpp-category-navigation//button[@aria-label='Repair Parts' or @aria-label='機修項目']
${Retail_HK_HomePage_RepairParts_Category_List}    (//dpp-category-navigation)[1]//button[@aria-label='Repair Parts' or @aria-label='機修項目']/following-sibling::div[@class='wrapper']//li


#-----------------------------------------------------Retail HK Home Page Toyota Hybrid System
${Retail_HK_HomePage_ToyotaHybrid_Category_Button}    //dpp-category-navigation//button[@aria-label='Toyota Hybrid System' or @aria-label='豐田混能系統']
${Retail_HK_HomePage_ToyotaHybrid_Category_List}    (//dpp-category-navigation)[1]//button[@aria-label='Toyota Hybrid System' or @aria-label='豐田混能系統']/following-sibling::div[@class='wrapper']//li









#-----------------------------------------------------Retail Select Vehicle By Make and Model---------------------------
${HomePageSelectVehicleCarBrandComboBox}    //div[@class='col-md-4']//ng-select[@formcontrolname='make']
${HomePageSelectVehicleModelComboBox}    //div[@class='col-md-4 pl-0']//ng-select[@formcontrolname='model']
${HomePageSelectVehicleYearComboBox}    //div[@class='col-md-4 pl-0']//ng-select[@formcontrolname='year']
${HomePageSelectVehicleSeriesComboBox}    //div[@class='col-md-4 mt-2']//ng-select[@formcontrolname='series']
${HomePageSelectVehicleEngineComboBox}    //div[@class='col-md-4 mt-2 pl-0']//ng-select[@formcontrolname='engine']
${HomePageSelectVehicleDetailsComboBox}    //div[@class='col-md-4 mt-2 pl-0']//ng-select[@formcontrolname='details']

${HomePageSelectVehicleModelComboBoxList}    (//ng-select[@formcontrolname='model']//div[@class='ng-option'])[1]
${HomePageSelectVehicleYearComboBoxList}    (//ng-select[@formcontrolname='year']//div[@role='option'])[1]
${HomePageSelectVehicleSeriesComboBoxList}    (//ng-select[@formcontrolname='series']//div[@role='option'])[1]
${HomePageSelectVehicleEngineComboBoxList}    (//ng-select[@formcontrolname='engine']//div[@role='option'])[1]
${HomePageSelectVehicleDetailsComboBoxList}    (//ng-select[@formcontrolname='details']//div[@role='option'])[1]

#-----------------------------------------------------Retail Home Page Quick Links--------------------------------------
${HomePageVehicleQuickLink}    //cx-generic-link[@class='quick-links_card']//a[@href='/dppretail/my-account/vehicles']
${HomePageOrdersQuickLink}    //cx-generic-link[@class='quick-links_card']//a[@href='/dppretail/my-account/orders']
${HomePageSavedCartsQuickLink}    //cx-generic-link[@class='quick-links_card']//a[@href='/dppretail/my-account/saved-carts']
${HomePageAccountQuickLink}    //cx-generic-link[@class='quick-links_card']//a[@href='/dppretail/my-account/update-profile']

#-----------------------------------------------------Retail Home Page Shop By Category---------------------------------
${Retail_HomePageShopByCategoryHeader}    //div[@class='shop-by-category']//h2
${Retail_HomePageShopByCategoryList1}    (//div[@class='shop-by-category']//div[@class='shop-by-category__card'])[1]
${Retail_HomePageShopByCategoryAccessoriesButton}    //div[@class='shop-by-category']//h4[contains(text(),'Accessories & Audio')]/parent::div/parent::div[@class='shop-by-category__card mr-2 ml-2' or @class='shop-by-category__card']
${Retail_HomePageShopByCategoryAirconButton}    //div[@class='shop-by-category']//h4[contains(text(),'Aircon & Heating')]/parent::div/parent::div[@class='shop-by-category__card mr-2 ml-2' or @class='shop-by-category__card']
${Retail_HomePageShopByCategoryBealtsButton}    //div[@class='shop-by-category']//h4[contains(text(),'Belts & Timing Parts')]/parent::div/parent::div[@class='shop-by-category__card mr-2 ml-2' or @class='shop-by-category__card']
${Retail_HomePageShopByCategoryBodyPartsButton}    //div[@class='shop-by-category']//h4[contains(text(),'Body Parts')]/parent::div/parent::div[@class='shop-by-category__card mr-2 ml-2' or @class='shop-by-category__card']
${Retail_HomePageShopByCategoryBrakesButton}    //div[@class='shop-by-category']//h4[contains(text(),'Brakes')]/parent::div/parent::div[@class='shop-by-category__card mr-2 ml-2' or @class='shop-by-category__card']
${Retail_HomePageShopByCategoryClutchButton}    //div[@class='shop-by-category']//h4[contains(text(),'Clutch & Transmission')]/parent::div/parent::div[@class='shop-by-category__card mr-2 ml-2' or @class='shop-by-category__card']
${Retail_HomePageShopByCategoryCoolingButton}    //div[@class='shop-by-category']//h4[contains(text(),'Cooling')]/parent::div/parent::div[@class='shop-by-category__card mr-2 ml-2' or @class='shop-by-category__card']
${Retail_HomePageShopByCategoryElectricalButton}    //div[@class='shop-by-category']//h4[contains(text(),'Electrical')]/parent::div/parent::div[@class='shop-by-category__card mr-2 ml-2' or @class='shop-by-category__card']
${Retail_HomePageShopByCategoryEnginePartsButton}    //div[@class='shop-by-category']//h4[contains(text(),'Engine Parts')]/parent::div/parent::div[@class='shop-by-category__card mr-2 ml-2' or @class='shop-by-category__card']
${Retail_HomePageShopByCategoryExhaustButton}    //div[@class='shop-by-category']//h4[contains(text(),'Exhaust & Emission')]/parent::div/parent::div[@class='shop-by-category__card mr-2 ml-2' or @class='shop-by-category__card']
${Retail_HomePageShopByCategoryFiltersButton}    //div[@class='shop-by-category']//h4[contains(text(),'Filters & Oil')]/parent::div/parent::div[@class='shop-by-category__card mr-2 ml-2' or @class='shop-by-category__card']
${Retail_HomePageShopByCategoryFuelSystemButton}    //div[@class='shop-by-category']//h4[contains(text(),'Fuel System')]/parent::div/parent::div[@class='shop-by-category__card mr-2 ml-2' or @class='shop-by-category__card']
${Retail_HomePageShopByCategoryGasketButton}    //div[@class='shop-by-category']//h4[contains(text(),'Gasket & Seals')]/parent::div/parent::div[@class='shop-by-category__card mr-2 ml-2' or @class='shop-by-category__card']
${Retail_HomePageShopByCategoryIngnitionButton}    //div[@class='shop-by-category']//h4[contains(text(),'Ignition, Start & Charge')]/parent::div/parent::div[@class='shop-by-category__card mr-2 ml-2' or @class='shop-by-category__card']
${Retail_HomePageShopByCategoryServicepartsButton}    //div[@class='shop-by-category']//h4[contains(text(),'Service Parts')]/parent::div/parent::div[@class='shop-by-category__card mr-2 ml-2' or @class='shop-by-category__card']
${Retail_HomePageShopByCategoryShaftsButton}    //div[@class='shop-by-category']//h4[contains(text(),'Shafts, Axles & Wheels')]/parent::div/parent::div[@class='shop-by-category__card mr-2 ml-2' or @class='shop-by-category__card']
${HomePageShopByCategorySteeringButton}    //div[@class='shop-by-category']//h4[contains(text(),'Steering')]/parent::div/parent::div[@class='shop-by-category__card mr-2 ml-2' or @class='shop-by-category__card']
${Retail_HomePageShopByCategorySuspensionButton}    //div[@class='shop-by-category']//h4[contains(text(),'Suspension')]/parent::div/parent::div[@class='shop-by-category__card mr-2 ml-2' or @class='shop-by-category__card']
${Retail_HomePageShopByCategoryAllButton}    //div[@class='shop-by-category']//h4[contains(text(),'All')]/parent::div/parent::div[@class='shop-by-category__card mr-2 ml-2' or @class='shop-by-category__card']

${Retail_HomePageShopByCategoryShowAllCategoriesButton}    //div[@class='shop-by-category']//p/a

#-----------------------------------------------------Retail Select your vehicle
${Retail_Selectyourvehicle_5searchedvehicles_Radiobutton}    //div//input[@name='last5SearchedVehicle']
${Retail_Selectyourvehicle_Selectfromvehiclelisting_Radiobutton}    //div//input[@id='selectFromVehicleListing']
${Retail_Selectyourvehicle_Selectfromvehiclelisting_Addavehicle}    //cx-icon[@class='cx-icon dpp-icons__plus']
${Retail_Selectyourvehicle_Selectfromvehiclelisting_AddavehicleRegoVIN}    //div[@class='cx-modal-content d-flex']


#-----------------------------------------------------Retail Home Page HK
${Retail_HK_HomePageShopByCategoryParts&ServiceButton}    //div[@class='shop-by-category']//h4[contains(text(),' Parts & Service ')]/parent::div/parent::div[@class='shop-by-category__card' or @class='shop-by-category__card mr-2 ml-2']
${Retail_HK_HomePageShopByCategoryPaint&PanelButton}    //div[@class='shop-by-category']//h4[contains(text(),' Paint & Panel ')]/parent::div/parent::div[@class='shop-by-category__card' or @class='shop-by-category__card mr-2 ml-2']
${Retail_HK_HomePageShopByCategoryBatteries&ElectricalButton}    //div[@class='shop-by-category']//h4[contains(text(),' Batteries & Electrical ')]/parent::div/parent::div[@class='shop-by-category__card' or @class='shop-by-category__card mr-2 ml-2']
${Retail_HK_HomePageShopByCategoryCarCare&AccessoriesButton}    //div[@class='shop-by-category']//h4[contains(text(),' Car Care & Accessories ')]/parent::div/parent::div[@class='shop-by-category__card' or @class='shop-by-category__card mr-2 ml-2']
${Retail_HK_HomePageShopByCategoryPerformanceButton}    //div[@class='shop-by-category']//h4[contains(text(),' Performance ')]/parent::div/parent::div[@class='shop-by-category__card' or @class='shop-by-category__card mr-2 ml-2']
${Retail_HK_HomePageShopByCategoryOils&FluidsButton}    //div[@class='shop-by-category']//h4[contains(text(),' Oils & Fluids ')]/parent::div/parent::div[@class='shop-by-category__card' or @class='shop-by-category__card mr-2 ml-2']
${Retail_HK_HomePageShopByCategoryInCarTechButton}    //div[@class='shop-by-category']//h4[contains(text(),' In Car Tech ')]/parent::div/parent::div[@class='shop-by-category__card' or @class='shop-by-category__card mr-2 ml-2']
${Retail_HK_HomePageShopByCategoryOtherButton}    //div[@class='shop-by-category']//h4[contains(text(),' Other ')]/parent::div/parent::div[@class='shop-by-category__card' or @class='shop-by-category__card mr-2 ml-2']

${Retail_HK_HomePage_ShopByCategory_BodyParts_Button}    //div[@class='shop-by-category']//h4[contains(text(),' Body Parts ')]/parent::div/parent::div[@class='shop-by-category__card' or @class='shop-by-category__card mr-2 ml-2']
${Retail_HK_HomePage_ShopByCategory_Chemicals_Button}    //div[@class='shop-by-category']//h4[contains(text(),' Chemicals ')]/parent::div/parent::div[@class='shop-by-category__card' or @class='shop-by-category__card mr-2 ml-2']
${Retail_HK_HomePage_ShopByCategory_Maintenance_Button}    //div[@class='shop-by-category']//h4[contains(text(),' Maintenance Item ')]/parent::div/parent::div[@class='shop-by-category__card' or @class='shop-by-category__card mr-2 ml-2']
${Retail_HK_HomePage_ShopByCategory_RepairParts_Button}    //div[@class='shop-by-category']//h4[contains(text(),' Repair Parts ')]/parent::div/parent::div[@class='shop-by-category__card' or @class='shop-by-category__card mr-2 ml-2']
${Retail_HK_HomePage_ShopByCategory_ToyotaHybrid_Button}    //div[@class='shop-by-category']//h4[contains(text(),' Toyota Hybrid System ')]/parent::div/parent::div[@class='shop-by-category__card' or @class='shop-by-category__card mr-2 ml-2']



#-----------------------------------------------------Retail Shopping Cart Popup Modal----------------------------------
${ShopCartPopContainer}    //div[@id='miniCart']//div[@class='cx-modal-content']
${ShopCartPopHeader}    //div[@id='miniCart']//div[@class='cx-modal-content']//div[@class='mb-2']
${ShopCartPopCloseIcon}    //div[@id='miniCart']//div[@class='cx-modal-content']//cx-icon[@class='cx-icon fas fa-times']

${ShopCartPopItemList}    //div[@id='miniCart']//div[@class='products-container']//div[@class='item' or @class='item first-element' or @class='item last-element' or @class='item first-element last-element']
${ShopCartPopItemListPrices}    (//div[@class='products-container']//div[@class='item' or @class='item first-element' or @class='item last-element' or @class='item first-element last-element']//div[@class='cx-price']//div[@class='item-price'])
${ShopCartPopItemListPricesQty}    (//div[@id='miniCart']//div[@class='products-container']//div[@class='item' or @class='item first-element' or @class='item last-element' or @class='item first-element last-element']//div[@class='col-3 pl-0']//span[@class='quantity'])

${ShopCartPopEmptyCart}    //div[@id='miniCart']//div[@class='empty-cart']

${ShopCartPopItemDeleteButton}    (//div[@id='miniCart']//div[@class='products-container']//div[@class='item' or @class='item first-element' or @class='item last-element' or @class='item first-element last-element']//cx-icon)[1]

${ShopCartPopTotalLabel}    //div[@class='price-container']//div/p
${ShopCartPopPriceLabel}    //div[@class='price-container']//div/strong
${ShopCartPopCheckOutButton}    //div[@class='price-container']//button[contains(text(),'View cart & checkout') or contains(text(),'查看購物車及結帳')]

${ShopCartPopEmptyLabel}    //div[@class='empty-cart']/following-sibling::div[contains(text(),'Your cart is empty') or contains(text(),'您的購物車是空的')]

${ShopCartPopContinueShoppingButton}    //div[@class='price-container']//button[contains(text(),'Continue Shopping') or contains(text(),'繼續購物')]




#-----------------------------------------------------Retail Shopping Cart Page-----------------------------------------
${Retail_ShoppingCartPageHeader}    //dpp-breadcrumb//*[@class='header-title pb-1']

${Retail_ShoppingCartPageYourPriceToggle}    //div[@class='custom-control custom-switch']
${Retail_ShoppingCartPageGSTToggle}     //div[@class='custom-control custom-switch custom-switch--ml']//label


${Retail_ShoppingCartPageEmptyCart}    //cx-page-layout//cx-page-slot[@position='EmptyCartMiddleContent']

${Retail_ShoppingCartPageDescriptionLabel}    //dpp-cart-item-list//div[@class='cx-item-list-header row' or @class='cx-item-list-header row semi-bold-header']//div[@class='cx-item-list-desc col-7']
${Retail_ShoppingCartPagePriceLabel}    //dpp-cart-item-list//div[@class='cx-item-list-header row' or @class='cx-item-list-header row semi-bold-header']//div[@class='cx-item-list-price col-1']
${Retail_ShoppingCartPageRRPLabel}    //dpp-cart-item-list//div[@class='cx-item-list-header row' or @class='cx-item-list-header row semi-bold-header']//div[@class='cx-item-retail-price col-2']
${Retail_ShoppingCartPageQtyLabel}    //dpp-cart-item-list//div[@class='cx-item-list-header row' or @class='cx-item-list-header row semi-bold-header']//div[@class='cx-item-list-qty col-2 pl-4 text-left']

${Retail_ShoppingCartPageSaveCartButton}    //dpp-cart-totals//a//span

${Retail_ShoppingCartPageItemList}    //dpp-cart-item-list//div[@class='cx-item-list-row']
${Retail_ShoppingCartPageItemList1}    //dpp-cart-item-list//div[@class='cx-item-list-row'][1]
${Retail_ShoppingCartPageItemListImage}    //dpp-cart-item-list//div[@class='cx-item-list-row'][1]//div[@class='col-2 cx-image-container']
${Retail_ShoppingCartPageItemListName}    //dpp-cart-item-list//div[@class='cx-item-list-row'][1]//div[@class='cx-info col-10']//div[@class='cx-name']
${Retail_ShoppingCartPageItemListPartNo}    //dpp-cart-item-list//div[@class='cx-item-list-row'][1]//div[@class='cx-info col-10']//div[@class='cx-code pb-0']
${Retail_ShoppingCartPageItemListPrice}    //dpp-cart-item-list//div[@class='cx-item-list-row'][1]//div[@class='col-6 price-container']//div[@class='cx-price col-4 p-0']//div[@class='item-price']
${Retail_ShoppingCartPageItemListRRPPrice}    //dpp-cart-item-list//div[@class='cx-item-list-row'][1]//div[@class='col-6 price-container']//div[@class='cx-price pl-1 col-4 p-0']

${Retail_ShoppingCartPageItemListSoldBySellerContainer}    //dpp-sold-by-seller//div[@class='cx-modal-content']
${Retail_ShoppingCartPageItemListSoldBySellerButton}    //dpp-cart-item-list//div[@class='cx-item-list-row'][1]//div[@class='cx-info col-10']//div[@class='sold-by']//a

${Retail_ShoppingCartPageItemListQtyRemoveOneButton}    //dpp-cart-item-list//div[@class='cx-item-list-row'][1]//div[@class='col-6 price-container']//div[@class='cx-quantity col-3 p-0']//button[@aria-label='Remove one']
${Retail_ShoppingCartPageItemListQtyTextBox}    //dpp-cart-item-list//div[@class='cx-item-list-row'][1]//div[@class='col-6 price-container']//div[@class='cx-quantity col-3 p-0']//input[@type='number']
${Retail_ShoppingCartPageItemListQtyAddOneButton}    //dpp-cart-item-list//div[@class='cx-item-list-row'][1]//div[@class='col-6 price-container']//div[@class='cx-quantity col-3 p-0']//button[@aria-label='Add one more']

${Retail_ShoppingCartPageItemListQtyTextBoxValue}    1

${Retail_ShoppingCartPageItemListDeleteButton}    //dpp-cart-item-list//div[@class='cx-item-list-row'][1]//div[@class='col-6 price-container']//div[@class='cx-quantity col-1 p-0 cx-remove-btn']//button

${Retail_ShoppingCartPageOrderSummaryContainer}    //div[@class='cart-total-container']
${Retail_ShoppingCartPageOrderSummaryHeader}    //div[@class='cart-total-container']//*[contains(text(),'Order Summary') or contains(text(),'訂單摘要')]
${Retail_ShoppingCartPageOrderSummarySubTotalLable}    //div[@class='cart-total-container']//div[@class='col-6' and contains(text(),'Sub Total')]
${Retail_ShoppingCartPageOrderSummaryGSTLabel}    //div[@class='cart-total-container']//div[@class='col-6' and contains(text(),'GST')]
${Retail_ShoppingCartPageOrderSummarySubTotalValueLabel}    (//div[@class='cart-total-container']//div[@class='col-6 text-right' and contains(text(),'')])[1]
${Retail_ShoppingCartPageOrderSummaryGSTValueLabel}    (//div[@class='cart-total-container']//div[@class='col-6 text-right' and contains(text(),'')])[2]
${Retail_ShoppingCartPageOrderSummaryOrderTotalLabel}    //div[@class='cart-total-container']//div[@class='col-6 pr-0 order-total']
${Retail_ShoppingCartPageOrderSummaryOrderTotalValueLabel}    //div[@class='cart-total-container']//div[@class='col-6 text-right order-total' and contains(text(),'')]
${Retail_ShoppingCartPageOrderSummaryRRPTotalLabel}    //div[@class='cart-total-container']//div[@class='row cart-rrp mx-0' or @class='row mx-0 cart-rrp']

${Retail_ShoppingCartPageOrderSummaryCheckoutButton}    //div[@class='cart-total-container']//button[@class='btn btn-secondary w-100 mt-3 text-capitalize']
${Retail_ShoppingCartPageOrderSummaryContinueShoppingButton}    //div[@class='cart-total-container']//button[@class='btn btn-outline-secondary w-100 mt-3 text-capitalize']


#-----------------------------------------------------Retail Checkout Page----------------------------------------------
${Retail_CheckoutPageHeader}    //dpp-breadcrumb//*[@class='header-title pb-1']

${Retail_CheckoutPageYourPriceToggle}    //div[@class='custom-control custom-switch']
${Retail_CheckoutCartPageGSTToggle}     //div[@class='custom-control custom-switch custom-switch--ml']//label


${Retail_CheckoutPageCustomerDetailsContainer}    //div[@class='basic-details-container']
${Retail_CheckoutPageCustomerDetailsMethodofPaymetLabel}    //div[@class='col-sm-12 col-md-6 col-lg-6 custom-divider']//div[@class='col-12 p-0 px-lg-3']//p
${Retail_CheckoutPageCustomerDetailsMethodofPaymetValue}    //div[@class='col-sm-12 col-md-6 col-lg-6 custom-divider']//div[@class='col-12 p-0 px-lg-3']//span
${Retail_CheckoutPageCustomerDetailsAccountNameLabel}    (//div[@class='col-sm-12 col-md-6 col-lg-6 custom-divider']//div[@class='col-12 mt-3 p-0 px-lg-3']//p)[1]
${Retail_CheckoutPageCustomerDetailsAccountNameValue}    (//div[@class='col-sm-12 col-md-6 col-lg-6 custom-divider']//div[@class='col-12 mt-3 p-0 px-lg-3']//span)[1]
${Retail_CheckoutPageCustomerDetailsSupplierLabel}    (//div[@class='col-sm-12 col-md-6 col-lg-6 custom-divider']//div[@class='col-12 mt-3 p-0 px-lg-3']//p)[2]
${Retail_CheckoutPageCustomerDetailsSupplierValue}    (//div[@class='col-sm-12 col-md-6 col-lg-6 custom-divider']//div[@class='col-12 mt-3 p-0 px-lg-3']//span)[2]

${Retail_CheckoutPageCustomerDetailsPONumberLabel}    //div[@class='column ml-lg-4']//div[@class='col-12 p-0 px-lg-3']//p[@class='po-number']
${Retail_CheckoutPageCustomerDetailsPONumberInfoButton}    //div[@class='column ml-lg-4']//dpp-popover-info//cx-icon
${Retail_CheckoutPageCustomerDetailsPONumberTextBox}    //div[@class='column ml-lg-4']//div[@class='col-12 p-0 px-lg-3']//input
${Retail_CheckoutPageCustomerDetailsPONumberSaveButton}    //div[@class='column ml-lg-4']//div[@class='col-12 p-0 px-lg-3']//button
${Retail_CheckoutPageCustomerDetailsPONumberResetButton}    //div[@class='col-12 p-0 px-lg-3']//div//a
${Retail_CheckoutPageCustomerDetailsShippingToLabel}    //div[@class='column ml-lg-4 pb-3 pb-lg-0']//p[@class='m-0 d-flex']
${Retail_CheckoutPageCustomerDetailsShippingToInfoButton}    //div[@class='column ml-lg-4 pb-3 pb-lg-0']//p[@class='m-0 d-flex']//cx-icon
${Retail_CheckoutPageCustomerDetailsShippingToNameLabel}    //div[@class='column ml-lg-4 pb-3 pb-lg-0']//span[@class='shipping-to']//strong
${Retail_CheckoutPageCustomerDetailsShippingToAddressLabel}    //div[@class='column ml-lg-4 pb-3 pb-lg-0']//div[@class='col-12 p-0 px-lg-3']//p[@class='m-0 d-flex']/following-sibling::span

${Retail_HK_CheckoutPageReviewItemsContainer}    //dpp-order-items-summary|//dpp-hk-order-items-summary|//dpp-multi-step-checkout-order-items-summary
${Retail_HK_CheckoutPageReviewItemsHeader}    //dpp-hk-order-items-summary//*[@class='title']|//dpp-multi-step-checkout-order-items-summary//*[@class='title']
${Retail_HK_CheckoutPageReviewItemsDeliveryDate}    //dpp-hk-order-items-summary//div[@class='col-12 p-0 sub-header']|//dpp-multi-step-checkout-order-items-summary//div[@class='col-12 p-0 sub-header']
${Retail_HK_CheckoutPageReviewItemsList}    //dpp-hk-order-items-summary//div[@class='product-list-item']|//dpp-multi-step-checkout-order-items-summary//div[@class='product-list-item']

${Retail_HK_CheckoutPageReviewItemsArrowUp}    //dpp-hk-order-items-summary//cx-icon[@class='cx-icon dpp-icons__icon-up-arrow']|//dpp-multi-step-checkout-order-items-summary//cx-icon[@class='cx-icon dpp-icons__icon-up-arrow']
${Retail_HK_CheckoutPageReviewItemsArrowDown}    //dpp-hk-order-items-summary//cx-icon[@class='cx-icon dpp-icons__icon-down-arrow']|//dpp-multi-step-checkout-order-items-summary//cx-icon[@class='cx-icon dpp-icons__icon-down-arrow']

${Retail_HK_CheckoutPageShippingAddressContainer}    //dpp-hk-shipping-address|//dpp-multi-step-checkout-shipping-address
${Retail_HK_CheckoutPageShippingAddressHeader}    //dpp-hk-shipping-address//*[@class='title']|//dpp-multi-step-checkout-shipping-address//*[@class='title']
${Retail_HK_CheckoutPageShippingAddressBuyer}    //dpp-hk-shipping-address//div[@class='shipping-to']//span[@class='buyer']|//dpp-multi-step-checkout-shipping-address//div[@class='shipping-to']//span[@class='buyer']
${Retail_HK_CheckoutPageShippingAddress1}    (//dpp-hk-shipping-address//div[@class='shipping-to']//span)[2]|(//dpp-multi-step-checkout-shipping-address//div[@class='shipping-to']//span)[2]
${Retail_HK_CheckoutPageShippingAddress2}    (//dpp-hk-shipping-address//div[@class='shipping-to']//span)[3]|(//dpp-multi-step-checkout-shipping-address//div[@class='shipping-to']//span)[3]
${Retail_HK_CheckoutPageShippingAddressAddInstruction}    //div[@class='mt-3 delivery-instruction']//a
${Retail_HK_CheckoutPageShippingAddressAddInstructionTextBox}    /div[@class='mt-3 delivery-instruction']//a/following-sibling::div//textarea
${Retail_HK_CheckoutPageShippingAddressAddInstructionCancelButton}    //div[@class='mt-3 delivery-instruction']//a/following-sibling::div//button[@class='btn btn-outline-secondary']
${Retail_HK_CheckoutPageShippingAddressAddInstructionSaveButton}    //div[@class='mt-3 delivery-instruction']//a/following-sibling::div//button[@class='btn btn-secondary']
${Retail_HK_CheckoutPageShippingAddressAddInstructionEditButton}    //div[@class='mt-3 delivery-instruction']//cx-icon[@class='cx-icon dpp-icons__pencil-active']
${Retail_HK_CheckoutPageShippingAddressAddInstructionDeleteButton}    //div[@class='mt-3 delivery-instruction']//cx-icon[@class='cx-icon dpp-icons__trash-v2']

${Retail_HK_CheckoutPage_ShippingAddress_AddInstructionDelete_PopUp_Container}    //div[@class='cx-modal-content']
${Retail_HK_CheckoutPage_ShippingAddress_AddInstructionDelete_PopUp_Yes_Button}    //div[@class='cx-modal-content']//button[@class='btn btn-secondary btn-block']
${Retail_HK_CheckoutPage_ShippingAddress_AddInstructionDelete_PopUp_No_Button}    //div[@class='cx-modal-content']//button[@class='btn btn-block btn-outline-secondary']

${Retail_HK_CheckoutPage_ShippingAddress_AddInstruction_TextBox_Value1}    Tests Inst
${Retail_HK_CheckoutPage_ShippingAddress_AddInstruction_TextBox_Value2}    Tests InstTests InstTests InstTests InstTests InstTests InstTests InstTests InstTests InstTests InstTests InstTests InstTests InstTests InstTests InstTests InstTests InstTests InstTests InstTests Inst1

${Retail_HK_CheckoutPageShippingAddressChangeButton}    //div[@class='col-2 text-right']//a
${Retail_HK_CheckoutPageShippingAddressChangePopUpContainer}    //dpp-hk-checkout-address-dialog//div|//dpp-multi-step-checkout-address-dialog//div
${Retail_HK_CheckoutPageShippingAddressChangePopUpFirstNameLabel}    //label[contains(text(),'First Name') or contains(text(),'名字')]
${Retail_HK_CheckoutPageShippingAddressChangePopUpLastNameLabel}    //label[contains(text(),'Last Name') or contains(text(),'姓氏')]
${Retail_HK_CheckoutPageShippingAddressChangePopUpEmailAddressLabel}    //label[contains(text(),'Email Address') or contains(text(),'電子郵件地址')]
${Retail_HK_CheckoutPageShippingAddressChangePopUpMobileNumberLabel}    //label[contains(text(),'Mobile Number') or contains(text(),'手機號碼')]
${Retail_HK_CheckoutPageShippingAddressChangePopUpLandlineNumberLabel}    //label[contains(text(),'Landline Number') or contains(text(),'分機號')]
${Retail_HK_CheckoutPageShippingAddressChangePopUpAddressLine1Label}    //span[contains(text(),'Address Line 1') or contains(text(),'地址第一行')]|//label[contains(text(),'Address Line 1') or contains(text(),'地址第一行')]
${Retail_HK_CheckoutPageShippingAddressChangePopUpAddressLine2Label}    //span[contains(text(),'Address Line 2') or contains(text(),'地址第二行')]|//label[contains(text(),'Address Line 2') or contains(text(),'地址第二行')]
${Retail_HK_CheckoutPageShippingAddressChangePopUpAreaLabel}    //span[contains(text(),'Area') or contains(text(),'地區')]|//label[contains(text(),'Area') or contains(text(),'地區')]
${Retail_HK_CheckoutPageShippingAddressChangePopUpDistrictLabel}    //label[contains(text(),'District') or contains(text(),'區')]|//span[contains(text(),'District') or contains(text(),'區')]
${Retail_HK_CheckoutPageShippingAddressChangePopUpDeliveryInstructionsLabel}    //label[contains(text(),'Delivery Instructions') or contains(text(),'發貨備註')]

${Retail_HK_CheckoutPageShippingAddressChangePopUpFirstNameTextBox}    //input[@formcontrolname='firstName']
${Retail_HK_CheckoutPageShippingAddressChangePopUpLastNameTextBox}    //input[@formcontrolname='lastName']
${Retail_HK_CheckoutPageShippingAddressChangePopUpEmailAddressTextBox}    //input[@formcontrolname='email']
${Retail_HK_CheckoutPageShippingAddressChangePopUpMobileNumberTextBox}    //label[contains(text(),'Mobile Number') or contains(text(),'手機號碼')]/parent::div//input
${Retail_HK_CheckoutPageShippingAddressChangePopUpLandlineNumberTextBox}    //label[contains(text(),'Landline Number') or contains(text(),'分機號')]/parent::div//input
${Retail_HK_CheckoutPageShippingAddressChangePopUpAddressLine1TextBox}    //dpp-autocomplete-search//div//input
${Retail_HK_CheckoutPageShippingAddressChangePopUpAddressLine1TextBox_Clear_Button}    //div//span[@title='Clear all']
${Retail_HK_CheckoutPageShippingAddressChangePopUpAddressLine2TextBox}    //span[contains(text(),'Address Line 2') or contains(text(),'地址第二行')]/parent::*//input|//label[contains(text(),'Address Line 2') or contains(text(),'地址第二行')]/parent::*//input
${Retail_HK_CheckoutPageShippingAddressChangePopUpDeliveryInstructionsTextBox}    //label[contains(text(),'Delivery Instructions') or contains(text(),'發貨備註')]/following-sibling::div//textarea

${Retail_HK_CheckoutPage_ShippingAddress_ChangePopUp_AddressLine1_Suggest_Options}    (//dpp-autocomplete-search//ng-dropdown-panel//div//div[@role='option'])
${Retail_HK_CheckoutPage_ShippingAddress_ChangePopUp_AddressLine1_Manual_Options}    //dpp-autocomplete-search//ng-dropdown-panel//div//p/parent::div


${Retail_HK_CheckoutPageShippingAddressChangePopUpAreaComboBox}    //*[contains(text(),'Area') or contains(text(),'地區')]/following-sibling::ng-select//div[@class='ng-select-container ng-has-value' or @class='ng-select-container']
${Retail_HK_CheckoutPage_ShippingAddress_ChangePopUp_Area_ComboBox_Options}    (//*[contains(text(),'Area') or contains(text(),'地區')]/following-sibling::ng-select//ng-dropdown-panel//div[@role='option'])
${Retail_HK_CheckoutPageShippingAddressChangePopUpDistrictComboBox}    //*[contains(text(),'District')]/following-sibling::ng-select//div[@class='ng-select-container ng-has-value' or @class='ng-select-container']
${Retail_HK_CheckoutPage_ShippingAddress_ChangePopUp_District_ComboBox_Options}   (//*[contains(text(),'District') or contains(text(),'區')]/following-sibling::ng-select//ng-dropdown-panel//div[@role='option'])

${Retail_HK_CheckoutPageShippingAddressChangePopUpCancelButton}    //div[@class='btn-action-container desktop']//button[@class='btn btn-outline-secondary']
${Retail_HK_CheckoutPageShippingAddressChangePopUpSaveButton}    //div[@class='btn-action-container desktop']//button[@class='btn btn-secondary']

${Retail_HK_CheckoutPageShippingAddressArrowDown}    //dpp-hk-shipping-address//cx-icon[@class='cx-icon dpp-icons__icon-up-arrow']|//dpp-multi-step-checkout-shipping-address//cx-icon[@class='cx-icon dpp-icons__icon-up-arrow']
${Retail_HK_CheckoutPageShippingAddressArrowDown}    //dpp-hk-shipping-address//cx-icon[@class='cx-icon dpp-icons__icon-down-arrow']|//dpp-multi-step-checkout-shipping-address//cx-icon[@class='cx-icon dpp-icons__icon-down-arrow']

${Retail_HK_CheckoutPagePaymentMethodContainer}    //dpp-hk-payment-method|//dpp-multi-step-checkout-payment-method
${Retail_HK_CheckoutPagePaymentMethodHeader}    //dpp-hk-payment-method//*[@class='title']|//dpp-multi-step-checkout-payment-method//*[@class='title']
${Retail_HK_CheckoutPagePaymentMethodArrowUp}    //dpp-hk-payment-method//cx-icon[@class='cx-icon dpp-icons__icon-up-arrow']|//dpp-multi-step-checkout-payment-method//cx-icon[@class='cx-icon dpp-icons__icon-up-arrow']
${Retail_HK_CheckoutPagePaymentMethodArrowDown}    //dpp-hk-payment-method//cx-icon[@class='cx-icon dpp-icons__icon-down-arrow']|//dpp-multi-step-checkout-payment-method//cx-icon[@class='cx-icon dpp-icons__icon-down-arrow']

${Retail_HK_CheckoutPage_PaymentMethod_COD_Label}    //dpp-hk-payment-method//label[@for='COD']|//dpp-multi-step-checkout-payment-method//label[@for='COD']
${Retail_HK_CheckoutPage_PaymentMethod_COD_RadioButton}    //dpp-hk-payment-method//label[@for='COD']/preceding-sibling::input|//dpp-multi-step-checkout-payment-method//label[@for='COD']/preceding-sibling::input
${Retail_HK_CheckoutPage_PaymentMethod_Credit_Label}    //dpp-hk-payment-method//label[@for='twoctwop']|//dpp-multi-step-checkout-payment-method//label[@for='twoctwop']
${Retail_HK_CheckoutPage_PaymentMethod_Credit_RadioButton}    //dpp-hk-payment-method//label[@for='twoctwop']/preceding-sibling::input|//dpp-multi-step-checkout-payment-method//label[@for='twoctwop']/preceding-sibling::input

${Retail_HK_CheckoutPagePaymentMethodFrame}    payment-iframe
${Retail_HK_CheckoutPagePaymentMethodFrameHeaderActive}    //div[@class='accordion__header accordion__header--active']
${Retail_HK_CheckoutPagePaymentMethodFrameHeaderInactive}    //div[@class='accordion__header accordion__header']
${Retail_HK_CheckoutPagePaymentMethodFrameCardNumberLabel}    //div[@class='accordion']//div[@class='card-number-input']//label
${Retail_HK_CheckoutPagePaymentMethodFrameCardNumberTextBox}    //div[@class='accordion__content']//div[@class='card-number-input']//input
${Retail_HK_CheckoutPagePaymentMethodFrameExpDateLabel}    //div[@class='accordion__content']//div[@class='input-control expyear']//div[@class='input-control__name']
${Retail_HK_CheckoutPagePaymentMethodFrameExpDateTextBox}    //div[@class='accordion__content']//div[@class='input-control expyear']//input

${Retail_HK_CheckoutPagePaymentMethodFrameCardNumberValueVisa}    4111111111111111
${Retail_HK_CheckoutPagePaymentMethodFrameCardNumberValueVisaLogo}    //div[@class='accordion__content']//div[@class='card-number-input']//img[@src='https://d27uu9vmlo4gwh.cloudfront.net/images/v4/images/icon/visa.png']

${Retail_HK_CheckoutPagePaymentMethodFrameCardNumberValueMaster}    5555555555554444
${Retail_HK_CheckoutPagePaymentMethodFrameCardNumberValueMasterLogo}    //div[@class='accordion__content']//div[@class='card-number-input']//img[@src='https://d27uu9vmlo4gwh.cloudfront.net/images/v4/images/icon/master.png']

${Retail_HK_CheckoutPagePaymentMethodFrameCardNumberValueJCB}    3566111111111113
${Retail_HK_CheckoutPagePaymentMethodFrameCardNumberValueJCBLogo}    //div[@class='accordion__content']//div[@class='card-number-input']//img[@src='https://d27uu9vmlo4gwh.cloudfront.net/images/v4/images/icon/jcb.png']

${Retail_HK_CheckoutPagePaymentMethodFrameCardNumberValueAmex}    378282246310005

${Retail_HK_CheckoutPagePaymentMethodFrameCardNumberValueUnion}    6250946000000016

${Retail_HK_CheckoutPagePaymentMethodFrameCardNumberValueDiscover}    6011111111111117
${Retail_HK_CheckoutPagePaymentMethodFrameCardNumberValueDiscoverLogo}    //div[@class='accordion__content']//div[@class='card-number-input']//img[@src='https://d27uu9vmlo4gwh.cloudfront.net/images/v4/images/icon/discover.png']

${Retail_HK_CheckoutPagePaymentMethodFrameCardNumberValueDiners}    36700102000000
${Retail_HK_CheckoutPagePaymentMethodFrameCardNumberValueDinersLogo}    //div[@class='accordion__content']//div[@class='card-number-input']//img[@src='https://d27uu9vmlo4gwh.cloudfront.net/images/v4/images/icon/diners.png']

${Retail_HK_CheckoutPage_PaymentMethod_Frame_ExpDate_Container}    //div[@class='accordion__content']//div[@class='input-control__name']//label[@for='expyear']/parent::div/parent::div
${Retail_HK_CheckoutPage_PaymentMethod_Frame_ExpDate_Label}    //div[@class='accordion__content']//div[@class='input-control__name']//label[@for='expyear']
${Retail_HK_CheckoutPage_PaymentMethod_Frame_ExpDate_TextBox}    //div[@class='accordion__content']//div[@class='input-control__name']//label[@for='expyear']/parent::div[@class='input-control__name']/following-sibling::div//input
${Retail_HK_CheckoutPage_PaymentMethod_Frame_ExpDate_Value}    1230

${Retail_HK_CheckoutPage_PaymentMethod_Frame_CVV_Label}    //div[@class='accordion__content']//div[@class='input-control__name']//label[@for='tel-cvv']
${Retail_HK_CheckoutPage_PaymentMethod_Frame_CVV_TextBox}    //div[@class='accordion__content']//div[@class='input-control__name']//label[@for='tel-cvv']/parent::div[@class='input-control__name']/following-sibling::div//input
${Retail_HK_CheckoutPage_PaymentMethod_Frame_CVV_Value}    123

${Retail_HK_CheckoutPage_PaymentMethod_Frame_CardHolderName_Label}    //div[@class='accordion__content']//div[@class='input-control__name']//label[@for='name']
${Retail_HK_CheckoutPage_PaymentMethod_Frame_CardHolderName_TextBox}    //div[@class='accordion__content']//div[@class='input-control__name']//label[@for='name']/parent::div[@class='input-control__name']/following-sibling::div//input
${Retail_HK_CheckoutPage_PaymentMethod_Frame_CardHolderName_Value}    Automation Test

${Retail_HK_CheckoutPage_PaymentMethod_Frame_Email_Label}    //div[@class='accordion__content']//div[@class='input-control__name']//label[@for='email-email']
${Retail_HK_CheckoutPage_PaymentMethod_Frame_Email_TextBox}    //div[@class='accordion__content']//div[@class='input-control__name']//label[@for='email-email']/parent::div[@class='input-control__name']/following-sibling::div//input
${Retail_HK_CheckoutPage_PaymentMethod_Frame_Email_Value}    retailautomation1@yopmail.com

${Retail_HK_CheckoutPage_PaymentMethod_Frame_Cancel_Button}    //div[@class='accordion__content']//button[@class='btn btn btn-secondary']
${Retail_HK_CheckoutPage_PaymentMethod_Frame_ContinuePayment_Button}    //div[@class='accordion__content']//button[@class='btn btn-primary']

${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_Container}    //div[@class='acs-challenge-modal']
${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_VerifyOTP_Label}    //div[@class='acs-challenge-modal']//h3

${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_MerchantName_Label}    //div[@class='acs-challenge-modal']//li[@class='acs-challenge-date-item'][1]//div[@class='date title']
${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_MerchantName_Value}    //div[@class='acs-challenge-modal']//li[@class='acs-challenge-date-item'][1]//div[@class='date value']

${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_Ammount_Label}    //div[@class='acs-challenge-modal']//li[@class='acs-challenge-date-item'][2]//div[@class='date title']
${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_Amount_Value}    //div[@class='acs-challenge-modal']//li[@class='acs-challenge-date-item'][2]//div[@class='date value']

${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_TransactionDate_Label}    //div[@class='acs-challenge-modal']//li[@class='acs-challenge-date-item'][3]//div[@class='date title']
${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_TransactionDate_Value}    //div[@class='acs-challenge-modal']//li[@class='acs-challenge-date-item'][3]//div[@class='date value']

${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_CardNumber_Label}    //div[@class='acs-challenge-modal']//li[@class='acs-challenge-date-item'][4]//div[@class='date title']
${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_CardNumber_Value}    //div[@class='acs-challenge-modal']//li[@class='acs-challenge-date-item'][4]//div[@class='date value']

${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_OTP_TextBox}    //div[@class='acs-challenge-modal']//div[@class='acs-challenge-form']//input
${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_OTP_Value}    123456
${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_Resend_Button}    //div[@class='acs-challenge-modal']//div[@class='acs-challenge-form']//button[@class='acs-challenge-resend']
${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_Cancel_Button}    //div[@class='acs-challenge-modal']//div[@class='acs-challenge-form-actions']//button[@class='acs-challenge-btn cancel']
${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_Submit_Button}    //div[@class='acs-challenge-modal']//div[@class='acs-challenge-form-actions']//button[@class='acs-challenge-btn proceed']

${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_ConfirmationPage_Container}    //div[@class='acs-challenge-modal']
${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_ConfirmationPage_BackToMerchant_Button}    //div[@class='acs-challenge-modal']//input
${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_ConfirmationPage_SuccessTransaction}    //div[@class='payment-result-modal__title']
${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_ConfirmationPage_TransactionNumber}    //div[@class='payment-result-modal__body']//span//b

${Retail_Loader}    //div[@class='loader']

${Retail_CheckoutPageCustomerDetailsOrderItemList}    //div[@class='order-details-items-table']//div[@class='product-list-item']
${Retail_CheckoutPageCustomerDetailsOrderItemList1}    //div[@class='order-details-items-table']//div[@class='product-list-item'][1]

${Retail_CheckoutPageCustomerDetailsOrderItemList1RRPLabel}    //div[@class='product-list-item']//div[@class='col-total__msrp' or @class='col rrp-label text-left']

${Retail_CheckoutPageCustomerDetailsOrderSummaryContainer}    //div[@class='order-cart-totals']|//div[@class='sticky-wrapper']
${Retail_CheckoutPageCustomerDetailsOrderSummaryHeader}    //div[@class='order-cart-totals' or @class='row order-summary']//div[@class='header col-12']|//div[@class='order-cart-totals' or @class='row order-summary']//h3
${Retail_CheckoutPageCustomerDetailsOrderSummarySubTotalLabel}    //div[@class='order-cart-totals' or @class='row order-summary']//div[@class='row' or @class='total-wrapper row w-100']//div[@class='col-6' or @class='details col-6'][1]
${Retail_CheckoutPageCustomerDetailsOrderSummarySubTotalValue}    //div[@class='order-cart-totals' or @class='row order-summary']//div[@class='row' or @class='total-wrapper row w-100']//div[@class='col-6 text-right' or @class='details col-6 text-right'][1]
${Retail_CheckoutPageCustomerDetailsOrderSummaryGTSLabel}    //div[@class='order-cart-totals']//div[@class='row']//div[@class='col-6'][2]
${Retail_CheckoutPageCustomerDetailsOrderSummaryGTSValue}    //div[@class='order-cart-totals']//div[@class='row']//div[@class='col-6 text-right'][2]
${Retail_CheckoutPageCustomerDetailsOrderSummaryOrderTotalLabel}    //div[@class='order-cart-totals' or @class='row order-summary']//div[@class='row' or @class='total-wrapper row w-100']//div[@class='col-6 order-total' or @class='total col-6 mt-2 order-total']
${Retail_CheckoutPageCustomerDetailsOrderSummaryOrderTotalValue}    //div[@class='order-cart-totals']//div[@class='row']//div[@class='col-6 text-right'][3]|//div[@class='row order-summary']//div[@class='total-wrapper row w-100']//div[@class='total col-6 mt-2 text-right']

${Retail_CheckoutPageCustomerDetailsOrderSummaryRRPLabel}    //div[@class='order-cart-totals' or @class='sticky-wrapper' or @class='sticky-container']//div[@class='cart-rrp mx-0' or @class='row cart-rrp mx-0' or @class='row mx-0 cart-rrp']

${Retail_HK_CheckoutPageCustomerDetailsOrderSummaryShippingFeeLabel}    //div[@class='row order-summary']//div[@class='details mt-2 col-6']
${Retail_HK_CheckoutPageCustomerDetailsOrderSummaryShippingFeeValue}    //div[@class='row order-summary']//div[@class='total-wrapper row w-100']//div[4]

${Retail_HK_CheckoutPage_CustomerDetails_OrderSummary_Discounnt_Label}    (//div[@class='row order-summary']//div[@class='details mt-2 col-6'])[2]
${Retail_HK_CheckoutPage_CustomerDetails_OrderSummary_Discounnt_Value}    //div[@class='row order-summary']//div[@class='total-wrapper row w-100']//div[6]

${Retail_HK_CheckoutPage_PromoCode_Container}    //div[@class='promotion-container']
${Retail_HK_CheckoutPage_PromoCode_Label}    //div[@class='promotion-container']//span
${Retail_HK_CheckoutPage_PromoCode_TextBox}    //div[@class='promotion-container']//input
${Retail_HK_CheckoutPage_PromoCode_Apply_Button}    //div[@class='promotion-container']//button
${Retail_HK_CheckoutPage_PromoCode_Desc}    //div[@class='promotion-container']//div[@class='description']
${Retail_HK_CheckoutPage_PromoCode_Code}    //div[@class='promotion-container']//div[@class='promo-code']
${Retail_HK_CheckoutPage_PromoCode_Remove_Button}    //div[@class='promotion-container']//a
${Retail_HK_CheckoutPage_PromoCode_Value}    PRTSLNPROMO

${100}    100.0
${200}    200.0
${300}    300.0

${Retail_CheckoutPageCustomerDetailsOrderSummaryRRPTotal}    //div[@class='order-cart-totals']//div[@class='cart-rrp mx-0']

${Retail_CheckoutPageCustomerDetailsOrderSummaryPlaceOrderButton}    //div[@class='order-cart-totals']//button[@class='btn btn-secondary w-100 mt-3 text-uppercase']|//div[@class='actions-container w-100']//button[@class='btn btn-secondary w-100']
${Retail_CheckoutPageCustomerDetailsOrderSummaryPlaceOrderDisabledButton}    //div[@class='order-cart-totals']//button[@disabled and @type='submit']
${Retail_CheckoutPageCustomerDetailsOrderSummaryBacktoCartButton}    //div[@class='order-cart-totals' or @class='actions-container w-100']//button[@class='btn btn-outline-secondary w-100 mt-3 text-uppercase' or @class='btn btn-outline-secondary w-100 mt-3']

${Retail_HK_CheckoutPageCustomerDetailsOrderSummaryContinuePaymentButton}    //div[@class='actions-container w-100']//button[@class='btn btn-secondary w-100']
${Retail_HK_CheckoutPageCustomerDetailsOrderSummaryBacktoCartButton}    //div[@class='actions-container w-100']//button[@class='btn btn-outline-secondary w-100 mt-3']

${Retail_CheckoutPageCustomerDetailsPONumberGroup}    //div[@class='col-md-6 col-sm-12']//div[@class='mb-3']|//div[@class='column ml-lg-4']//div[@class='col-12 p-0 px-lg-3']
${Retail_CheckoutPageCustomerDetailsPONumberErrorMessage}    //div[@class='col-12 p-0 px-lg-3']//div[@class='form-errors po-invalid-format-message']

${Retail_CheckoutPageCustomerDetailsPONumberTextBoxValidValue}    TestQEAutomation1234
${Retail_CheckoutPageCustomerDetailsPONumberTextBoxValid-Value}    TestQEAutomation12-3
${Retail_CheckoutPageCustomerDetailsPONumberTextBoxValid_Value}    TestQEAutomation12_3
${Retail_CheckoutPageCustomerDetailsPONumberTextBoxInvalidAboveMaxValue}    TestQEAutomation12345
${Retail_CheckoutPageCustomerDetailsPONumberTextBoxInvalidSpaceValue}    TestQEAutomation12 3
${Retail_CheckoutPageCustomerDetailsPONumberTextBoxInvalidOtherCharValue}    TestQEAutomation123[


#-----------------------------------------------------Retail Place Order Page-----------------------------------------------
${Retail_PlaceOrderPageContainer}    //dpp-order-confirmation-thank-you-message
${Retail_PlaceOrderPageCofirmationMessage}    //div[@class='cx-order-confirmation-message text-center']

${Retail_PlaceOrderPageCofirmationDetailsContainer}    //div[@class='order-confirmation']

${Retail_PlaceOrderPageCofirmationDetailsPartsRefLabel}    (//div[@class='order-confirmation']//div[@class='row align-items-center']//div[@class='col-7 pr-0'])[1]
${Retail_PlaceOrderPageCofirmationDetailsPartsRefValue}    (//div[@class='order-confirmation']//div[@class='row align-items-center']//div[@class='col-5 pl-0 pl-md-3'])[1]
${Retail_PlaceOrderPageCofirmationDetailsPONumerLabel}    (//div[@class='order-confirmation']//div[@class='row align-items-center']//div[@class='col-7 pr-0'])[2]
${Retail_PlaceOrderPageCofirmationDetailsPONumerValue}    (//div[@class='order-confirmation']//div[@class='row align-items-center']//div[@class='col-5 pl-0 pl-md-3'])[2]
${Retail_PlaceOrderPageCofirmationDetailsSupplierRefLabel}    (//div[@class='order-confirmation']//div[@class='row align-items-center']//div[@class='col-7 pr-0'])[3]
${Retail_PlaceOrderPageCofirmationDetailsSupplierRefValue}    (//div[@class='order-confirmation']//div[@class='row align-items-center']//div[@class='col-5 pl-0 pl-md-3'])[3]
${Retail_PlaceOrderPageCofirmationDetailsSupplierLabel}    (//div[@class='order-confirmation']//div[@class='row align-items-center']//div[@class='col-7 pr-0'])[4]
${Retail_PlaceOrderPageCofirmationDetailsSupplierValue}    (//div[@class='order-confirmation']//div[@class='row align-items-center']//div[@class='col-5 pl-0 pl-md-3'])[4]
${Retail_PlaceOrderPageCofirmationDetailsQtyLabel}    (//div[@class='order-confirmation']//div[@class='row align-items-center']//div[@class='col-7 pr-0'])[5]
${Retail_PlaceOrderPageCofirmationDetailsQtyValue}    (//div[@class='order-confirmation']//div[@class='row align-items-center']//div[@class='col-5 pl-0 pl-md-3'])[5]
${Retail_PlaceOrderPageCofirmationDetailsOrderDateLabel}    (//div[@class='order-confirmation']//div[@class='row align-items-center']//div[@class='col-7 pr-0'])[6]
${Retail_PlaceOrderPageCofirmationDetailsOrderDateValue}    (//div[@class='order-confirmation']//div[@class='row align-items-center']//div[@class='col-5 pl-0 pl-md-3'])[6]|(//div[@class='order-confirmation']//div[@class='row align-items-center']//div[@class='col-5 pl-0 pl-md-3 text-nowrap'])
${Retail_PlaceOrderPageCofirmationDetailsTotalLabel}    (//div[@class='order-confirmation']//div[@class='row align-items-center']//div[@class='col-7 pr-0'])[7]
${Retail_PlaceOrderPageCofirmationDetailsTotalValue}    (//div[@class='order-confirmation']//div[@class='row align-items-center']//div[@class='col-5 pl-0 pl-md-3'])[6]

${Retail_HK_PlaceOrderPage_CofirmationDetails_PartsRef_Label}    (//div[@class='order-confirmation']//div[@class='col-8 col-md-7 pr-0'])[1]
${Retail_HK_PlaceOrderPage_CofirmationDetails_PartsRef_Value}    (//div[@class='order-confirmation']//div[@class='col-4 pl-0 pl-md-3'])[1]
${Retail_HK_PlaceOrderPage_CofirmationDetails_OrderDate_Label}    (//div[@class='order-confirmation']//div[@class='col-8 col-md-7 pr-0'])[2]
${Retail_HK_PlaceOrderPage_CofirmationDetails_OrderDate_Value}    (//div[@class='order-confirmation']//div[@class='col-4 pl-0 pl-md-3 text-nowrap'])[1]
${Retail_HK_PlaceOrderPage_CofirmationDetails_EstDelDate_Label}    (//div[@class='order-confirmation']//div[@class='col-8 col-md-7 pr-0'])[3]
${Retail_HK_PlaceOrderPage_CofirmationDetails_EstDelDate_Value}    (//div[@class='order-confirmation']//div[@class='col-4 pl-0 pl-md-3 text-nowrap'])[2]
${Retail_HK_PlaceOrderPage_CofirmationDetails_PONumer_Label}    (//div[@class='order-confirmation']//div[@class='col-8 col-md-7 pr-0'])[4]
${Retail_HK_PlaceOrderPage_CofirmationDetails_PONumer_Value}    (//div[@class='order-confirmation']//div[@class='col-4 pl-0 pl-md-3'])[2]

${Retail_PlaceOrderPageBacktoHomeButton}    //div[@class='container']//button[@class='btn btn-outline-secondary']
${Retail_PlaceOrderPageViewOrderButton}    //div[@class='container']//button[@class='btn btn-secondary']

#-----------------------------------------------------Retail Account Page-----------------------------------------------
${Retail_AccountAccountpageMyAccountLabel}    //div[@class='myaccount']//h2
${Retail_AccountpageOrdersMenu}    //dpp-my-account-tabs//li[@class='navigation-wrapper' or @class='navigation-wrapper isActive']//a[contains(text(),'Order') or contains(text(),'訂單記錄')]
${Retail_AccountAccountpageReturnMenu}    //dpp-my-account-tabs//li[@class='navigation-wrapper' or @class='navigation-wrapper isActive']//a[contains(text(),'Return Requests') or contains(text(),'退貨請求')]
${Retail_AccountpageSavedCartsMenu}    //dpp-my-account-tabs//li[@class='navigation-wrapper' or @class='navigation-wrapper isActive']//a[contains(text(),'Saved Carts') or contains(text(),'已儲存貨品')]
${Retail_AccountpageVehicleListingMenu}    //dpp-my-account-tabs//li[@class='navigation-wrapper' or @class='navigation-wrapper isActive']//a[contains(text(),'Vehicle Listing') or contains(text(),'車輛列表')]
${Retail_AccountpageMessagesMenu}    //dpp-my-account-tabs//li[@class='navigation-wrapper' or @class='navigation-wrapper isActive']//a[contains(text(),'Inbox') or contains(text(),'收件匣')]
${Retail_AccountpageProfileMenu}    //dpp-my-account-tabs//li[@class='navigation-wrapper' or @class='navigation-wrapper isActive']//a[contains(text(),'Profile') or contains(text(),'個人資料')]
${Retail_AccountpageProfileAccountDetails}    //dpp-my-account-tabs//li[@class='navigation-wrapper' or @class='navigation-wrapper isActive']//a[contains(text(),'Account Details') or contains(text(),'帳戶資料')]
${AccountpageProfileChangePass}    //dpp-my-account-tabs//li[@class='navigation-wrapper' or @class='navigation-wrapper isActive']//a[contains(text(),'Change Password') or contains(text(),'更改密碼')]
${Retail_AccountpageCompanyMenu}    //dpp-my-account-tabs//li[@class='navigation-wrapper' or @class='navigation-wrapper isActive']//div[@class='d-flex acc-tab']//a[contains(text(),'Company') or contains(text(),'公司')]
${Retail_AccountpageCompanyDetails}    //dpp-my-account-tabs//li[@class='navigation-wrapper' or @class='navigation-wrapper isActive']//a[contains(text(),'Company Details') or contains(text(),'公司詳情')]
${Retail_AccountpageCompanyStaff}    //dpp-my-account-tabs//li[@class='navigation-wrapper' or @class='navigation-wrapper isActive']//a[contains(text(),'Staff') or contains(text(),'員工')]


#-----------------------------------------------------Retail Account Order Page-----------------------------------------
${Retail_AccountOrderPagePanelContainer}    //cx-page-slot[@position='BodyContent']
${AccountOrderPageCustomerOderHeader}    //div[@class='cx-order-history-header d-flex']//*[contains(text(),'Order History') or contains(text(),' 訂單歷史記錄 ')]
${Retail_AccountOrderPageTotalOrders}    //div[@class='total-orders ml-3']
${Retail_AccountOrderPageSortBar}    //div[@class='cx-order-history-sort top']

${Retail_AccountOrderPageStatusFilter}    //ng-select[@bindvalue='code']//div[@class='ng-select-container ng-has-value']
${Retail_AccountOrderPageStatusFilterALL}    //div[@class='ng-dropdown-panel-items scroll-host']//div[@role='option']//span[contains(text(),'ALL')]
${Retail_AccountOrderPageStatusFilterReceived}    //div[@class='ng-dropdown-panel-items scroll-host']//div[@role='option']//span[contains(text(),'Received')]
${Retail_AccountOrderPageStatusFilterSubmitted}    //div[@class='ng-dropdown-panel-items scroll-host']//div[@role='option']//span[contains(text(),'Submitted')]
${Retail_AccountOrderPageStatusFilterDispatched}    (//div[@class='ng-dropdown-panel-items scroll-host']//div[@role='option']//span[contains(text(),'Dispatched')])[1]
${Retail_AccountOrderPageStatusFilterPartiallyDispatched}    //div[@class='ng-dropdown-panel-items scroll-host']//div[@role='option']//span[contains(text(),'Partially Dispatched')]
${Retail_AccountOrderPageStatusFilterOrderwithReturns}    //div[@class='ng-dropdown-panel-items scroll-host']//div[@role='option']//span[contains(text(),'Order with Returns')]

${Retail_HK_AccountOrderPage_StatusFilter_Delivered}    //div[@class='ng-dropdown-panel-items scroll-host']//div[@role='option']//span[contains(text(),'Delivered')]
${Retail_HK_AccountOrderPage_StatusFilter_Processing}    //div[@class='ng-dropdown-panel-items scroll-host']//div[@role='option']//span[contains(text(),'Processing')]

${Retail_AccountOrderPageDateFilter}    //div[@id='dateRangePicker']
${Retail_AccountOrderPageDateFilterContainer}    //ngb-datepicker[@class='dropdown-menu show']
${Retail_AccountOrderPageDateFilterPreviousMonth}    //ngb-datepicker-navigation//button[@aria-label='Previous month']
${Retail_AccountOrderPageDateFilterNextMonth}    //ngb-datepicker-navigation//button[@aria-label='Next month']
${Retail_AccountOrderPageDateFilterSelectMonthDropDown}    //select[@aria-label='Select month']
${Retail_AccountOrderPageDateFilterSelectMonth}    (//select[@aria-label='Select month']//option)[2]     #${variable 1-12}
${Retail_AccountOrderPageDateFilterSelectYearDropDown}    //select[@aria-label='Select year']
${Retail_AccountOrderPageDateFilterSelectYear}    //select[@aria-label='Select year']//option[contains(text(),'2022')]    #${variable 2023}
${Retail_AccountOrderPageDateFilterMonthName1}    (//div[@class='ngb-dp-month-name'])[1]
${Retail_AccountOrderPageDateFilterMonthName2}    (//div[@class='ngb-dp-month-name'])[2]
${Retail_AccountOrderPageDateFilterWeekdays1}    (//div[@class='ngb-dp-week ngb-dp-weekdays'])[1]
${Retail_AccountOrderPageDateFilterWeekdays2}    (//div[@class='ngb-dp-week ngb-dp-weekdays'])[2]
${Retail_AccountOrderPageDateFilterMonth1Days1stSelection}    (//div[@class='ngb-dp-month'][1]//span[@class='custom-day'])[1]    #${variable 1-31}
${Retail_AccountOrderPageDateFilterMonth1Days2ndSelection}    (//div[@class='ngb-dp-month'][1]//span[@class='custom-day'])[15]    #${variable 1-31}
${Retail_AccountOrderPageDateFilterMonth2Days1stSelection}    (//div[@class='ngb-dp-month'][2]//span[@class='custom-day'])[1]    #${variable 1-31}
${Retail_AccountOrderPageDateFilterMonth2Days2ndSelection}    (//div[@class='ngb-dp-month'][2]//span[@class='custom-day'])[15]    #${variable 1-31}
${Retail_AccountOrderPageDateFilterSubmitButton}    //ngb-datepicker//button[@class='btn btn-outline-secondary']
${Retail_AccountOrderPageDateFilterClearButton}    //ngb-datepicker//button[@class='btn btn-outline-secondary mr-3']

${Retail_AccountOrderPageSearchBox}    //div[@class='input-group']//input[@placeholder='Search']
${Retail_AccountOrderPageSearchButton}    //button[@class='btn']
${Retail_AccountOrderPageSearchClose}    //cx-icon[@class='cx-icon dpp-icons__close']
${Retail_AccountOrderPageSearchValue}    PL0000066002

${Retail_AccountOrderPageArrangeFilter}    //cx-sorting//div[@class='ng-select-container ng-has-value']
${Retail_AccountOrderPageArrangeFilterNewtoOld}    //cx-sorting//div[@role='option']//span[contains(text(),'Newest to Oldest') or contains(text(),'最新到最舊')]
${Retail_AccountOrderPageArrangeFilterOldtoNew}    //cx-sorting//div[@role='option']//span[contains(text(),'Oldest to Newest') or contains(text(),'最舊到最新')]
${Retail_AccountOrderPageArrangeFilterOrderNum}    //cx-sorting//div[@role='option']//span[contains(text(),'Order Number') or contains(text(),'訂單號碼')]

${Retail_AccountOrderPageNoOrdersMessage}    //div[@class='noOrders']

${Retail_AccountOrderPageStartShoppingButton}    //a[@class='btn btn-primary btn-block start-shopping active']
#__________________________________________________________________AU___________________________________________________

${Retail_AccountOrderPageDetailsColumn}    //thead
${Retail_AccountOrderPageDetailsPartslaneRefLabel}   //th[@class='partslane-reference']//span[contains(text(),'PartsLane')]
${Retail_AccountOrderPageDetailsCustOrdNumLabel}    //th[@class='your-reference']
${Retail_AccountOrderPageDetailsCustRefLabel}    //th[@class='supplier-reference']
${Retail_AccountOrderPageDetailsCustAccNumLabel}    //th[@class='supplier']
${Retail_AccountOrderPageDetailsRegoLabel}    //th[@class='rego']
${Retail_AccountOrderPageDetailsOrderDateLabel}    //th[@class='order-date']
${Retail_AccountOrderPageDetailsTotalLabel}    //th[@class='total']
${Retail_AccountOrderPageDetailsStatusLabel}    //th[@class='status']
${Retail_AccountOrderPageDetailsReturnLabel}    //th[@class='return-icon']

#__________________________________________________________________HK___________________________________________________
${Retail_HK_AccountOrderPageDetailsColumn}    //thead
${Retail_HK_AccountOrderPageDetailsPartslaneRefLabel}   //th[@class='partslane-reference']//span[contains(text(),'PartsLane')]
${Retail_HK_AccountOrderPageDetailsCustAccNumLabel}    //th[@class='company-supplier-name']//span[contains(text(),'Supplier')]
${Retail_HK_AccountOrderPageDetailsOrderDateLabel}    //th[@class='order-date']//span[contains(text(),'Order')]
${Retail_HK_AccountOrderPageDetailsDeliveryMethod}    //th[@class='delivery-method']//span[contains(text(),'Delivery Method')]
${Retail_HK_AccountOrderPageDetailsPaymentMethod}     //th[@class='payment-method']//span[contains(text(),'Payment')]
${Retail_HK_AccountOrderPageDetailsTotalLabel}    //th[@class='total']//span[contains(text(),'Total')]
${Retail_HK_AccountOrderPageDetailsStatusLabel}    //th[@class='status']//span[contains(text(),'Order Status')]
${Retail_HK_AccountOrderPageDetailsReturnLabel}    //th[@class='return-icon']//span[contains(text(),'Returns')]
${Retail_HK_AccountOrderPageDetailsSupplierLabel}   //thead//span[contains(text(),'Supplier')]

${Retail_HK_AccountOrderPageDetailsReferenceNumber}    (//td[@class='cx-order-history-code'])[1]

#_________________________________________________________________________________________________________________________________________________________________________________________________

${Retail_AccountOrderPageHistory1}    (//tr//td[@class='cx-order-history-code']//a[@class='cx-order-history-value'])[1]

#-----------------------------------------------------Retail Account Order Page Received
${Retail_AccountOrderPageReceivedContainer}    (//tr[.//td[@class='cx-order-history-total' and contains(text(),'Received')]])[1]|(//tr[.//td[@class='cx-order-history-status' and contains(text(),'Received')]])[1]
${Retail_AccountOrderPageReceivedPartRef}    (//tr[.//td[@class='cx-order-history-total' and contains(text(),'Received')]]//td[@class='cx-order-history-code'])[1]|(//tr[.//td[@class='cx-order-history-status' and contains(text(),'Received')]]//td[@class='cx-order-history-code'])[1]

#-----------------------------------------------------Retail Account Order Page Submitted
${Retail_AccountOrderPageSubmittedContainer}    (//tr[.//td[@class='cx-order-history-total' and contains(text(),'Submitted')]])[1]|(//tr[.//td[@class='cx-order-history-status' and contains(text(),'Submitted')]])[1]
${Retail_AccountOrderPageSubmittedPartRef}    (//tr[.//td[@class='cx-order-history-total' and contains(text(),'Submitted')]]//td[@class='cx-order-history-code'])[1]|(//tr[.//td[@class='cx-order-history-status' and contains(text(),'Submitted')]]//td[@class='cx-order-history-code'])[1]

#-----------------------------------------------------Retail Account Order Page Dispatched
${Retail_AccountOrderPageDispatchedContainer}    (//tr[.//td[@class='cx-order-history-total' and starts-with(text(),' Dispatched ')]])[1]|(//tr[.//td[@class='cx-order-history-status' and starts-with(text(),' Dispatched ')]])[1]
${Retail_AccountOrderPageDispatchedPartRef}    (//tr[.//td[@class='cx-order-history-total' and starts-with(text(),' Dispatched ')]]//td[@class='cx-order-history-code'])[1]|(//tr[.//td[@class='cx-order-history-status' and starts-with(text(),' Dispatched ')]]//td[@class='cx-order-history-code'])[1]

#-----------------------------------------------------Retail Account Order Page Partially Dispatched
${Retail_AccountOrderPagePartiallyDispatchedContainer}    (//tr[.//td[@class='cx-order-history-total' and starts-with(text(),' Partially Dispatched ')]])[1]|(//tr[.//td[@class='cx-order-history-status' and starts-with(text(),' Partially Dispatched ')]])[1]
${Retail_AccountOrderPagePartiallyDispatchedPartRef}    (//tr[.//td[@class='cx-order-history-total' and starts-with(text(),' Partially Dispatched ')]]//td[@class='cx-order-history-code'])[1]|(//tr[.//td[@class='cx-order-history-status' and starts-with(text(),' Partially Dispatched ')]]//td[@class='cx-order-history-code'])[1]

#-----------------------------------------------------Retail Account Order Page Orders with Returns
${Retail_AccountOrderPageOrderwithReturnContainer}    (//tr[.//td[@class='cx-order-history-total']][.//cx-icon[@class='cx-icon dpp-icons__returns-request']])[1]|(//tr[.//td[@class='cx-order-history-status']][.//cx-icon[@class='cx-icon dpp-icons__returns-request']])[1]
${Retail_AccountOrderPageOrderwithReturnPartRef}    (//tr[.//td[@class='cx-order-history-total']][.//cx-icon[@class='cx-icon dpp-icons__returns-request']]//td[@class='cx-order-history-code'])[1]|(//tr[.//td[@class='cx-order-history-status']][.//cx-icon[@class='cx-icon dpp-icons__returns-request']]//td[@class='cx-order-history-code'])[1]

#-----------------------------------------------------Retail Account Order Page Delivered
${Retail_AccountOrderPageDeliveredContainer}    (//tr[.//td[@class='cx-order-history-total' and contains(text(),'Delivered')]])[1]|(//tr[.//td[@class='cx-order-history-status' and contains(text(),'Delivered')]])[1]
${Retail_AccountOrderPageDeliveredPartRef}    (//tr[.//td[@class='cx-order-history-total' and contains(text(),'Delivered')]]//td[@class='cx-order-history-code'])[1]|(//tr[.//td[@class='cx-order-history-status' and contains(text(),'Delivered')]]//td[@class='cx-order-history-code'])[1]

#-----------------------------------------------------Retail Account Order Page Processing
${Retail_AccountOrderPageProcessingContainer}    (//tr[.//td[@class='cx-order-history-total' and contains(text(),'Processing')]])[1]|(//tr[.//td[@class='cx-order-history-status' and contains(text(),'Processing')]])[1]
${Retail_AccountOrderPageProcessingPartRef}    (//tr[.//td[@class='cx-order-history-total' and contains(text(),'Processing')]]//td[@class='cx-order-history-code'])[1]|(//tr[.//td[@class='cx-order-history-status' and contains(text(),'Processing')]]//td[@class='cx-order-history-code'])[1]



#-----------------------------------------------------Retail Account Order Page Orders with $0.25 Spent
${Retail_AccountOrderPageOrderwith$0.25Container}    (//tr[.//td[@class='cx-order-history-total' and contains(text(),'$0.25')]])|(//tr[.//td[@class='cx-order-history-total' and contains(text(),'$1.60')]])
${Retail_AccountOrderPageOrderwith$0.25PartRef}    (//tr[.//td[@class='cx-order-history-total' and contains(text(),'$0.25')]]//td[@class='cx-order-history-code'])|(//tr[.//td[@class='cx-order-history-total' and contains(text(),'$1.60')]]//td[@class='cx-order-history-code'])

${Retail_HK_AccountOrderPage_Orderwith$129.0_Container}    (//tr[.//td[@class='cx-order-history-total' and contains(text(),'$129.0')]])|(//tr[.//td[@class='cx-order-history-total' and contains(text(),'$41.0')]])
${Retail_HK_AccountOrderPage_Orderwith$129.0_PartRef}    (//tr[.//td[@class='cx-order-history-total' and contains(text(),'$129.0')]]//td[@class='cx-order-history-code'])|(//tr[.//td[@class='cx-order-history-total' and contains(text(),'$41.0')]]//td[@class='cx-order-history-code'])

${Retail_AccountOrderPageDetailsPreviousPageButton}    //a[@aria-label='previous page']
${Retail_AccountOrderPageDetailsNextPageButton}    //a[@aria-label='next page']
${Retail_AccountOrderPageDetailsPage1Button}    //a[@aria-label='page 1']
${Retail_AccountOrderPageDetailsLastPageButton}    //a[@aria-label='last page']
${Retail_AccountOrderPageDetailsFirstPageButton}    (//a[@aria-label='first page'])[2]
${Retail_AccountOrderPageDetailsNextPageButtonDisabled}    //a[@class='next disabled']
${Retail_AccountOrderPageDetailsPreviousPageButtonDisabled}    //a[@class='previous disabled']


#-----------------------------------------------------Retail Account Order Details Page---------------------------------
${Retail_AccountOrderDetailsOrderHeader}    //div[@class='order-header col-12 col-md-9 pl-0' or @class='order-header col-9 pl-0']
${AccountOrderDetailsOrderStatus}    //span[@class='status-value']

${Retail_AccountOrderDetailsContainer}    //div[@class='order-details-container']

${Retail_AccountOrderDetailsContainerRefNumLabel}    (//div[@class='details']//div[@class='col-4' or @class='col-12 col-md-5'])[1]
${Retail_AccountOrderDetailsContainerCustNameLabel}    (//div[@class='details']//div[@class='col-4' or @class='col-12 col-md-5'])[2]
${Retail_AccountOrderDetailsContainerCustAccLabel}    (//div[@class='details']//div[@class='col-4' or @class='col-12 col-md-5'])[3]
${Retail_AccountOrderDetailsContainerCustOrderNumLabel}    (//div[@class='details']//div[@class='col-4' or @class='col-12 col-md-5'])[4]
${Retail_AccountOrderDetailsContainerYourRefLabel}    (//div[@class='details']//div[@class='col-4' or @class='col-12 col-md-5'])[5]
${Retail_AccountOrderDetailsContainerOrderDateLabel}    (//div[@class='col-4' or @class='col-12 col-md-5'])[5]

${Retail_AccountOrderDetailsBackButton}    //span[contains(text(),'Back to Order History')]

${Retail_AccountOrderDetailsContainerRefNumValue}    (//div[@class='order-details-container']//span)[1]
${Retail_AccountOrderDetailsContainerCustNameValue}    (//div[@class='order-details-container']//span)[2]
${Retail_AccountOrderDetailsContainerCustAccValue}    (//div[@class='order-details-container']//span)[3]
${Retail_AccountOrderDetailsContainerCustOrderNumValue}    (//div[@class='order-details-container']//span)[4]
${Retail_AccountOrderDetailsContainerYourRefValue}    (//div[@class='order-details-container']//span)[5]
${Retail_AccountOrderDetailsContainerOrderDateValue}    (//div[@class='order-details-container']//span)[6]

${Retail_AccountOrderDetailsReturnContainer}    //div[@class='order-details-items-table return-order-items']

${Retail_AccountOrderDetailsReturnHeader}    //div[@class='row header return-request-header']
${Retail_AccountOrderDetailsReturnDescription}    //span[@class='order-table-heading' and (contains(text(),'Description'))]
${Retail_AccountOrderDetailsReturnPrice}    //span[@class='order-table-heading' and (contains(text(),'Price'))]
${Retail_AccountOrderDetailsReturnRRP}    //span[@class='order-table-heading' and (contains(text(),'RRP'))]
${Retail_AccountOrderDetailsReturnOrder}    //span[@class='order-table-heading' and (contains(text(),'Order'))]
${Retail_AccountOrderDetailsReturnShipped}    //span[@class='order-table-heading' and (contains(text(),'Shipped'))]
${Retail_AccountOrderDetailsReturnPending}    //span[@class='order-table-heading' and (contains(text(),'Pending'))]
${Retail_AccountOrderDetailsReturnTotal}    //span[@class='order-table-heading' and (contains(text(),'Total'))]

${Retail_AccountOrderDetailsReturnProductList}    //div[@class='product-list-item return-order-item']

${Retail_AccountOrderDetailsReturnProductImage}    //div[@class='product-list-item return-order-item'][1]//cx-media
${Retail_AccountOrderDetailsReturnProductName}    //div[@class='product-list-item return-order-item'][1]//h3
${Retail_AccountOrderDetailsReturnProductPartNumber}    //div[@class='product-list-item return-order-item'][1]//div[@class='part-no']/span[2]
${Retail_AccountOrderDetailsReturnProductPrice}    //div[@class='product-list-item return-order-item'][1]//div[@class='col text-left pl-0']/span[1]
${Retail_AccountOrderDetailsReturnProductRRP}    //div[@class='product-list-item return-order-item'][1]//div[@class='col rrp-label text-left pl-0 pr-0']/span[1]
${Retail_AccountOrderDetailsReturnProductOrderQty}    //div[@class='product-list-item return-order-item'][1]//div[@class='col text-center pl-0 pr-0'][1]/span
${Retail_AccountOrderDetailsReturnProductShippedQty}    //div[@class='product-list-item return-order-item'][1]//div[@class='col text-center pl-0 pr-0'][2]/span
${Retail_AccountOrderDetailsReturnProductPendingQty}    //div[@class='product-list-item return-order-item'][1]//div[@class='col text-center pl-0 pr-0'][3]/span
${Retail_AccountOrderDetailsReturnProductTotal}    //div[@class='product-list-item return-order-item'][1]//div[@class='col text-right']/span[1]


${Retail_AccountOrderDetailsBillingContainer}    //div[@class='billing-address-order-summary-container mt-3']

${Retail_AccountOrderDetailsBillingLabel}    //p[(contains(text(),'Billing Address'))]
${Retail_AccountOrderDetailsOrderSummaryLabel}    //p[(contains(text(),'Order Summary'))]
${Retail_AccountOrderDetailsBillingDetailsAndTotal}    //div[@class='row mt-2 content']
${Retail_AccountOrderDetailsAddressField}    //p[@class='address-field']
${Retail_AccountOrderDetailsPriceField}    //div[@class='col-12 col-md-6 col-lg-5 px-0 px-md-3']

${AccountOrderDetailsNewReturnRequestButton}    //div[@class='mt-3 text-right']//a

${AccountOderDetailsNewReturnRequestBackButton}    //span[contains(text(),'Back to Order Details')]

${AccountOrderDetailsNewReturnRequestHeader}    //dpp-return-order//div[@class='return-order-heading']
${AccountOrderDetailsNewReturnRequestContainer}    //div[@class='order-details-container']

${Retail_AccountOrderDetailsNewReturnRequestContainerRefNumLabel}    (//div[@class='details']//div[@class='col-4'])[1]
${Retail_AccountOrderDetailsNewReturnRequestContainerCustNameLabel}    (//div[@class='details']//div[@class='col-4'])[2]
${Retail_AccountOrderDetailsNewReturnRequestContainerCustAccLabel}    (//div[@class='details']//div[@class='col-4'])[3]
${Retail_AccountOrderDetailsNewReturnRequestContainerCustOrderNumLabel}    (//div[@class='details']//div[@class='col-4'])[4]
${Retail_AccountOrderDetailsNewReturnRequestContainerYourRefLabel}    (//div[@class='details']//div[@class='col-4'])[5]
${Retail_AccountOrderDetailsNewReturnRequestContainerOrderDateLabel}    (//div[@class='col-4'])[6]

${Retail_AccountOrderDetailsNewReturnRequestContainerRefNumValue}    (//div[@class='order-details-container']//span)[1]
${Retail_AccountOrderDetailsNewReturnRequestContainerCustNameValue}    (//div[@class='order-details-container']//span)[2]
${Retail_AccountOrderDetailsNewReturnRequestContainerCustAccValue}    (//div[@class='order-details-container']//span)[3]
${Retail_AccountOrderDetailsNewReturnRequestContainerCustOrderNumValue}    (//div[@class='order-details-container']//span)[4]
${Retail_AccountOrderDetailsNewReturnRequestContainerYourRefValue}    (//div[@class='order-details-container']//span)[5]
${Retail_AccountOrderDetailsNewReturnRequestContainerOrderDateValue}    (//div[@class='order-details-container']//span)[6]

${Retail_AccountOrderDetailsNewReturnRequestReturnProductContainer}    //div[@class='order-details-items-table return-order-items']

${Retail_AccountOrderDetailsNewReturnRequestReturnHeader}    //div[@class='row header return-request-header']
${Retail_AccountOrderDetailsNewReturnRequestReturnDescription}    //span[@class='order-table-heading' and (contains(text(),'Description'))]
${Retail_AccountOrderDetailsNewReturnRequestReturnPrice}    //span[@class='order-table-heading' and (contains(text(),'Price'))]
${Retail_AccountOrderDetailsNewReturnRequestReturnRRP}    //span[@class='order-table-heading' and (contains(text(),'RRP'))]
${Retail_AccountOrderDetailsNewReturnRequestReturnOrder}    //span[@class='order-table-heading' and (contains(text(),'Order'))]
${Retail_AccountOrderDetailsNewReturnRequestReturnTotal}    //span[@class='order-table-heading' and (contains(text(),'Total'))]

${Retail_AccountOrderDetailsNewReturnRequestReturnProductList}    //div[@class='product-list-item return-order-item cancel-order-page-item']
${Retail_AccountOrderDetailsNewReturnRequestReturnProducCheckbox}    //div[@class='product-list-item return-order-item cancel-order-page-item'][1]//div[@class='order-checkbox']
${Retail_AccountOrderDetailsNewReturnRequestReturnProducImage}    //div[@class='product-list-item return-order-item cancel-order-page-item'][1]//cx-media
${Retail_AccountOrderDetailsNewReturnRequestReturnProducName}    //div[@class='product-list-item return-order-item cancel-order-page-item'][1]//h3
${Retail_AccountOrderDetailsNewReturnRequestReturnProducPartNumber}    //div[@class='product-list-item return-order-item cancel-order-page-item'][1]//div[@class='part-no']/span[2]
${Retail_AccountOrderDetailsNewReturnRequestReturnProducPrice}    //div[@class='product-list-item return-order-item cancel-order-page-item'][1]//div[@class='col text-left pl-0']/span[1]
${Retail_AccountOrderDetailsNewReturnRequestReturnProducRRP}    //div[@class='product-list-item return-order-item cancel-order-page-item'][1]//div[@class='col rrp-label text-left pl-0 pr-0']/span[1]
${Retail_AccountOrderDetailsNewReturnRequestReturnProducOrderQty}    //div[@class='product-list-item return-order-item cancel-order-page-item'][1]//div[@class='col text-center pl-0 pr-0'][1]/span
${Retail_AccountOrderDetailsNewReturnRequestReturnProducTotal}    //div[@class='product-list-item return-order-item cancel-order-page-item'][1]//div[@class='col text-right']/span[1]

${Retail_AccountOrderDetailsNewReturnRequestCancelButton}    //dpp-return-order//button[@class='btn btn-outline-secondary ml-4']
${Retail_AccountOrderDetailsNewReturnRequestSubmitButton}    //dpp-return-order//button[@class='btn btn-secondary ml-4']

${AccountOrderDetailsNewReturnMessageButton}    //div[@class='mt-3 text-right']//button[@type='button']


${Retail_AccountOrderDetailsMessageSupplierButton}     //dpp-order-detail//div[@class='mt-3 button-container']//button[contains(text(),'Message Supplier')]

${Retail_AccountOrderDetailsMessageContainer}    //div[@class='cx-modal-content']
${Retail_AccountOrderDetailsMessageToSupplierlabel}    //div[@class='col-sm-12 header']//span
${Retail_AccountOrderDetailsMessageSubjectlabel}    //div[@class='col-sm-12']//span[contains(text(),'Subject')]
${Retail_AccountOrderDetailsMessageMessagelabel}    //div[@class='col-sm-12']//span[contains(text(),'Message')]
${Retail_AccountOrderDetailsMessagePhotolabel}    //dpp-image-upload//p

${Retail_AccountOrderDetailsMessageToSupplierTextBox}    //input[@class='form-control col-sm-5']
${Retail_AccountOrderDetailsMessageSubjectTextBox}    //input[@class='form-control']
${Retail_AccountOrderDetailsMessageMessageTextBox}    //textarea[@formcontrolname='message']


${Retail_AccountOrderDetailsMessageUploadImageContainer}    //div[@class='d-flex']|//div[@class='images-container']
${Retail_AccountOrderDetailsMessageUploadImageButton}    //div[@class='cx-modal-content']//button[@class='btn image-upload']
${Retail_AccountOrderDetailsMessageUploadImage}    //div[@class='cx-modal-content']//input[@type='file']
${Retail_AccountOrderDetailsMessageCancelButton}    //div[@class='cx-modal-content']//button[@class='btn btn-sm btn-outline-secondary']
${Retail_AccountOrderDetailsMessageSendButton}    //div[@class='cx-modal-content']//button[@class='btn btn-sm btn-secondary ml-2']

${Retail_AccountOrderDetailsMessageCofirmationContainer}    //div[@class='cx-modal-content']
${Retail_AccountOrderDetailsMessageCofirmationButton}    //div[@class='cx-modal-content']//button//span[contains(text(),'Back to Order Details')]

${Retail_AccountOrderDetailsReturnRequestList}    //div[@class='d-flex mt-3']
${Retail_AccountOrderDetailsReturnRequestNumber}    //div[@class='d-flex mt-3'][1]//a[@class='ml-2 mr-1']


${Retail_AccountOrderDetailsRe-OrderButton}    //dpp-order-detail//div[@class='mt-3 button-container']//button[contains(text(),'Re-Order')]

#-----------------------------------------------------HK Retail Account Order Details Page------------------------------

${HK_Retail_AccountOrderDetailsOrderHeader}    //div[@class='order-header col-12 col-md-9 pl-0' or @class='order-header col-9 pl-0']
${HK_AccountOrderDetailsOrderStatus}    //span[@class='status-value']

${HK_Retail_AccountOrderDetailsContainer}    //div[@class='order-details-container']

${HK_Retail_AccountOrderDetailsContainerRefNumLabel}    (//div[@class='details']//div[@class='col-4' or @class='col-12 col-md-5'])
${HK_Retail_AccountOrderDetailsContainerCompanyNameLabel}    (//div[@class='details']//div[@class='col-4' or @class='col-12 col-md-5'])[2]
${HK_Retail_AccountOrderDetailsContainerSupplierLabel}    (//div[@class='details']//div[@class='col-4' or @class='col-12 col-md-5'])[3]
${HK_Retail_AccountOrderDetailsContainerOrderDateLabel}    (//div[@class='details']//div[@class='col-4' or @class='col-12 col-md-5'])[4]

${HK_Retail_AccountOrderDetailsBackButton}    //span[contains(text(),'Back to Order History')]

${HK_Retail_AccountOrderDetailsContainerRefNumValue}    (//div[@class='order-details-container']//span)[1]
${HK_Retail_AccountOrderDetailsContainerCompanyNameValue}    (//div[@class='order-details-container']//span)[2]
${HK_Retail_AccountOrderDetailsContainerSupplierValue}    (//div[@class='order-details-container']//span)[3]
${HK_Retail_AccountOrderDetailsContainerOrderDateNumValue}    (//div[@class='order-details-container']//span)[4]
${HK_Retail_AccountOrderDetailsContainerOrderTimeValue}    (//div[@class='order-details-container']//span)[5]


${HK_Retail_AccountOrderDetailsReturnContainer}    //div[@class='order-details-items-table return-order-items']

${HK_Retail_AccountOrderDetailsReturnHeader}    //div[@class='row header return-request-header']
${HK_Retail_AccountOrderDetailsReturnDescription}    //span[@class='order-table-heading' and (contains(text(),'Description'))]
${HK_Retail_AccountOrderDetailsReturnPrice}    (//span[@class='order-table-heading' and (contains(text(),'Price'))])[1]
${HK_Retail_AccountOrderDetailsReturnRRP}    (//span[@class='order-table-heading' and (contains(text(),'Price'))])[2]
${HK_Retail_AccountOrderDetailsReturnOrder}    //span[@class='order-table-heading' and (contains(text(),'Order'))]
${HK_Retail_AccountOrderDetailsReturnShipped}    //span[@class='order-table-heading' and (contains(text(),'Shipped'))]
${HK_Retail_AccountOrderDetailsReturnPending}    //span[@class='order-table-heading' and (contains(text(),'Pending'))]
${HK_Retail_AccountOrderDetailsReturnTotal}    //span[@class='order-table-heading' and (contains(text(),'Total'))]

${HK_etail_AccountOrderDetailsReturnProductList}    //div[@class='product-list-item return-order-item']
${HK_Retail_AccountOrderDetailsReturnProductImage}    //div[@class='product-list-item return-order-item'][1]//cx-media
${HK_Retail_AccountOrderDetailsReturnProductName}    //div[@class='product-list-item return-order-item'][1]//h3
${HK_Retail_AccountOrderDetailsReturnProductPartNumber}    //div[@class='col-lg-auto pr-lg-0 part-no']
${HK_Retail_AccountOrderDetailsReturnProductPrice}    //div[@class='product-list-item return-order-item'][1]//div[@class='col text-left pl-0']/span[1]
${HK_Retail_AccountOrderDetailsReturnProductRRP}    //div[@class='product-list-item return-order-item'][1]//div[@class='col rrp-label text-left pl-0 pr-0']/span[1]
${HK_Retail_AccountOrderDetailsReturnProductOrderQty}    //div[@class='product-list-item return-order-item'][1]//div[@class='col text-center pl-0 pr-0'][1]/span
${HK_Retail_AccountOrderDetailsReturnProductShippedQty}    //div[@class='product-list-item return-order-item'][1]//div[@class='col text-center pl-0 pr-0'][2]/span
${HK_Retail_AccountOrderDetailsReturnProductPendingQty}    //div[@class='product-list-item return-order-item'][1]//div[@class='col text-center pl-0 pr-0'][3]/span
${HK_Retail_AccountOrderDetailsReturnProductTotal}    //div[@class='product-list-item return-order-item'][1]//div[@class='col text-right']/span[1]


${HK_Retail_AccountOrderDetailsBillingContainer}    //div[@class='billing-address-order-summary-container mt-3']

${HK_Retail_AccountOrderDetailsBillingLabel}    //p[(contains(text(),'Billing Address'))]
${HK_Retail_AccountOrderDetailsOrderSummaryLabel}    //p[(contains(text(),'Order Summary'))]
${HK_Retail_AccountOrderDetailsBillingDetailsAndTotal}    //div[@class='row mt-2 content']
${HK_Retail_AccountOrderDetailsAddressField}    //p[@class='address-field']

${HK_Retail_AccountOrderDetailsSummaryField}    //div[@class='col-12 col-md-6 col-lg-5 px-0 px-md-3']
${HK_Retail_AccountOrderDetailsSummaryField_SubTotal_Label}    //div[@class='col-12 col-md-6 col-lg-5 px-0 px-md-3']//div[@class='row']//div[@class='col-6 pl-0' and contains(text(),'Sub Total')]
${HK_Retail_AccountOrderDetailsSummaryField_SubTotal_Value_Label}    //div[@class='col-12 col-md-6 col-lg-5 px-0 px-md-3']//div[@class='row']//div[@class='col-6 pl-0' and contains(text(),'Sub Total')]/following-sibling::div[@class='col-6 text-right'][1]

${HK_Retail_AccountOrderDetailsSummaryField_Discount_Label}    //div[@class='col-12 col-md-6 col-lg-5 px-0 px-md-3']//div[@class='row']//div[@class='col-6 pl-0' and contains(text(),'Discount')]
${HK_Retail_AccountOrderDetailsSummaryField_Discount_Value_Label}    //div[@class='col-12 col-md-6 col-lg-5 px-0 px-md-3']//div[@class='row']//div[@class='col-6 pl-0' and contains(text(),'Discount')]/following-sibling::div[@class='col-6 text-right']

${HK_Retail_AccountOrderDetailsSummaryField_RRP_Label}    //div[@class='col-12 col-md-6 col-lg-5 px-0 px-md-3']//div[@class='col-6 p-3 order-rrp-total rrp-postion-left']//span[contains(text(),'Retail Price Total')]
${HK_Retail_AccountOrderDetailsSummaryField_RRP_Value_Label}    //div[@class='col-12 col-md-6 col-lg-5 px-0 px-md-3']//div[@class='col-6 p-3 text-right order-rrp-total rrp-postion-right']

${HK_Retail_AccountOrderDetailsDeliveryInstructionField}    //div[@class='col-md-12 col-sm-12 px-0 px-md-3']
${HK_Retail_AccountOrderDetailsMessageSupplierButton}    //button[@class='btn btn-outline-secondary']
${HK_Retail_AccountOrderDetailsRe-orderButton}    //button[@class='btn btn-secondary']



#-----------------------------------------------------Retail Account Retrun Page----------------------------------------
${Retail_AccountReturnPagePanelContainer}    //cx-page-slot[@position='BodyContent']
${AccountReturnPageReturnHeader}    //h3[@class='return-requests-heading' and contains(text(),'Return Requests') or contains(text(),'退貨請求')]
${AccountReturnPageTotalReturnRequests}    //h3[@class='return-requests-heading']//span

${Retail_AccountReturnPageFilterRow}    //dpp-return-request-list//div[@class='row']

${Retail_AccountReturnPageStatusFilter}    //div[@class='col-md-3 pr-0']//div[@class='ng-select-container ng-has-value']|(//ng-select[@bindvalue='code']//div[@class='ng-select-container ng-has-value'])[1]
${Retail_AccountRetrunPageStatusFilterALL}    //div[@role='option']//span[contains(text(),'All') or contains(text(),'ALL')]
${Retail_AccountRetrunPageStatusFilterAccepted}    //div[@role='option']//span[contains(text(),'Accepted')]
${Retail_AccountRetrunPageStatusFilterDeclined}    //div[@role='option']//span[contains(text(),'Declined')]
${Retail_AccountRetrunPageStatusFilterInProgress}    //div[@role='option']//span[contains(text(),'In Progress')]

${Retail_AccountReturnPageDateFilter}    //button[@class='calendar']
${Retail_AccountReturnPageDateFilterContainer}    //ngb-datepicker[@class='dropdown-menu show']
${Retail_AccountReturnPageDateFilterPreviousMonth}    //ngb-datepicker-navigation//button[@aria-label='Previous month']
${Retail_AccountReturnPageDateFilterNextMonth}    //ngb-datepicker-navigation//button[@aria-label='Next month']
${Retail_AccountReturnPageDateFilterSelectMonthDropDown}    //select[@aria-label='Select month']
${Retail_AccountReturnPageDateFilterSelectMonth}    //select[@aria-label='Select month']//option[2]     #${variable 1-12}
${Retail_AccountReturnPageDateFilterSelectYearDropDown}    //select[@aria-label='Select year']
${Retail_AccountReturnPageDateFilterSelectYear}    //select[@aria-label='Select year']//option[contains(text(),'2020')]    #${variable 2023}
${Retail_AccountReturnPageDateFilterMonthName1}    (//div[@class='ngb-dp-month-name'])[1]
${Retail_AccountReturnPageDateFilterMonthName2}    (//div[@class='ngb-dp-month-name'])[2]
${Retail_AccountReturnPageDateFilterWeekdays1}    (//div[@class='ngb-dp-week ngb-dp-weekdays'])[1]
${Retail_AccountReturnPageDateFilterWeekdays2}    (//div[@class='ngb-dp-week ngb-dp-weekdays'])[2]
${Retail_AccountReturnPageDateFilterMonth1Days1stSelection}    (//div[@class='ngb-dp-month'][1]//span[@class='custom-day'])[1]    #${variable 1-31}
${Retail_AccountReturnPageDateFilterMonth1Days2ndSelection}    (//div[@class='ngb-dp-month'][1]//span[@class='custom-day'])[15]    #${variable 1-31}
${Retail_AccountReturnPageDateFilterMonth2Days1stSelection}    (//div[@class='ngb-dp-month'][2]//span[@class='custom-day'])[1]    #${variable 1-31}
${Retail_AccountReturnPageDateFilterMonth2Days2ndSelection}    (//div[@class='ngb-dp-month'][2]//span[@class='custom-day'])[15]    #${variable 1-31}
${Retail_AccountReturnPageDateFilterSubmitButton}    //ngb-datepicker//button[@class='btn btn-outline-secondary']
${Retail_AccountReturnPageDateFilterClearButton}    //ngb-datepicker//button[@class='btn btn-outline-secondary mr-3']

${Retail_AccountRetrunPageSearchBox}    //div[@class='input-group']//input[@placeholder='Search']
${Retail_AccountReturnPageSearchClose}    //cx-icon[@class='cx-icon dpp-icons__close']
${Retail_AccountRetrunPageSearchButton}    //button[@class='btn']
${Retail_AccountReturnPageSearchValue}    PL0000047003

${Retail_AccountRetrunPageArrangeFilter}    //div[@class='col-md-3']//div|(//ng-select[@bindvalue='code']//div[@class='ng-select-container ng-has-value'])[2]
${Retail_AccountReturnPageArrangeFilterNewtoOld}    //div[@role='option']//span[contains(text(),'Newest to Oldest')]
${Retail_AccountReturnPageArrangeFilterOldtoNew}    //div[@role='option']//span[contains(text(),'Oldest to Newest')]

${Retail_AccountReturnPageNoRequestMessage}    //dpp-return-request-list[contains(text(),'No return request found.')]

${Retail_AccountReturnPageDetailsColumn}    //thead
${Retail_AccountReturnPageDetailsRetrunRequestIDLabel}    //th[@class='return-request-id']
${Retail_AccountReturnPageDetailsRefLabel}    //th[@class='partslane-reference']
${Retail_AccountReturnPageDetailsPONumLabel}    //th[@class='your-reference']
${Retail_AccountReturnPageDetailsSupRefLabel}    //th[@class='supplier-reference']
${Retail_AccountReturnPageDetailsSupplierLabel}    //th[@class='supplier']
${Retail_AccountReturnPageDetailsReqDateLabel}    //th[@class='request-date']
${Retail_AccountReturnPageDetailsStatusLabel}  //th[@class='total']

${Retail_AccountReturnPageHistory1}    (//td//a[@class='cx-return-requests-value'])[1]|(//div[@class='row return-content']//a[@class='cx-return-requests-value'])[1]

#-----------------------------------------------------Retail Retrun Page Accepted
${Retail_AccountReturnPageAcceptedContainer}    (//tr[.//td[@class='cx-return-requests-total status-col-value' and contains(text(),'Accepted')]])[1]|(//div[@class='row return-content'][.//a[@class='cx-return-requests-value']]//div//span[contains(text(),'Accepted')])[1]
${Retail_AccountReturnPageAcceptedReturnID}    (//tr[.//td[@class='cx-return-requests-total status-col-value' and contains(text(),'Accepted')]]//td[@class='cx-return-requests-code'])[1]|(//div[@class='row return-content'][.//div//span[contains(text(),'Accepted')]]//a[@class='cx-return-requests-value'])[1]


#-----------------------------------------------------Retail Retrun Page Declined
${Retail_AccountReturnPageDeclinedContainer}    (//tr[.//td[@class='cx-return-requests-total status-col-value' and contains(text(),'Declined')]])[1]|(//div[@class='row return-content'][.//a[@class='cx-return-requests-value']]//div//span[contains(text(),'Declined')])[1]
${Retail_AccountReturnPageDeclinedReturnID}    (//tr[.//td[@class='cx-return-requests-total status-col-value' and contains(text(),'Declined')]]//td[@class='cx-return-requests-code'])[1]|(//div[@class='row return-content'][.//div//span[contains(text(),'Declined')]]//a[@class='cx-return-requests-value'])[1]

#-----------------------------------------------------Retail Retrun Page In Progress
${Retail_AccountReturnPageInProgressContainer}    (//tr[.//td[@class='cx-return-requests-total status-col-value' and contains(text(),'In Progress')]])[1]|(//div[@class='row return-content'][.//a[@class='cx-return-requests-value']]//div//span[contains(text(),'In Progress')])[1]
${Retail_AccountReturnPageInProgressReturnID}    (//tr[.//td[@class='cx-return-requests-total status-col-value' and contains(text(),'In Progress')]]//td[@class='cx-return-requests-code'])[1]|(//div[@class='row return-content'][.//div//span[contains(text(),'In Progress')]]//a[@class='cx-return-requests-value'])[1]



${Retail_AccountReturnPageDetailsPreviousPageButton}    //a[@aria-label='previous page']
${Retail_AccountReturnPageDetailsNextPageButton}    //a[@aria-label='next page']
${Retail_AccountReturnPageDetailsPage1Button}    //a[@aria-label='page 1']
${Retail_AccountReturnPageDetailsLastPageButton}    //a[@aria-label='last page']
${Retail_AccountReturnPageDetailsFirstPageButton}    //a[@aria-label='first page']
${Retail_AccountReturnPageDetailsNextPageButtonDisabled}    //a[@class='next disabled']
${Retail_AccountReturnPageDetailsPreviousPageButtonDisabled}    //a[@class='previous disabled']


${Retail_AccountReturnDetailsMessageCofirmationContainer}    //div[@class='cx-modal-content']
${Retail_AccountReturnDetailsMessageCofirmationButton}    //div[@class='cx-modal-content']//button//span[contains(text(),'Back to Return Request')]

#-----------------------------------------------------Retail Account Retrun Details Page--------------------------------
${Retail_AccountReturnPageReturnDetailsHeader}    //span[@class='return-request-heading col-12 col-md-6 p-0 p-md-3']
${Retail_AccountReturnPageReturnDetailsStatus}    //span[@class='status']
${Retail_AccountReturnPageReturnDetailsBack}    //a[@class='back-to-order-history']
${Retail_AccountReturnPageReturnDetailsContainer}    //div[@class='order-details-container']

${Retail_AccountReturnPageOrderDetailsPartsRefLabel}    //div[@class='col-4' or @class='col-12 col-md-5']//p[(contains(text(),'PartsLane Reference'))]
${Retail_AccountReturnPageOrderDetailsPONumLabel}    //div[@class='col-4' or @class='col-12 col-md-5']//p[(contains(text(),'Your PO Number'))]
${Retail_AccountReturnPageOrderDetailsSupRefLabel}    //div[@class='col-4' or @class='col-12 col-md-5']//p[(contains(text(),'Supplier Reference'))]
${Retail_AccountReturnPageOrderDetailsSupLabel}    (//div[@class='col-4' or @class='col-12 col-md-5']//p[(contains(text(),'Supplier'))])[2]
${Retail_AccountReturnPageOrderDetailsOrderDateLabel}    //div[@class='col-4' or @class='col-12 col-md-5']//p[(contains(text(),'Order Date'))]
${Retail_AccountReturnPageOrderDetailsRetReqDateLabel}    //div[@class='col-4' or @class='col-12 col-md-5']//p[(contains(text(),'Return Request Date'))]
${Retail_AccountReturnPageOrderDetailsPartsRefValue}    (//div[@class='col']//span)[1]
${Retail_AccountReturnPageOrderDetailsPONumValue}    (//div[@class='col']//span)[2]
${Retail_AccountReturnPageOrderDetailsSupRefValue}    (//div[@class='col']//span)[3]
${Retail_AccountReturnPageOrderDetailsSupValue}    (//div[@class='col']//span)[4]
${Retail_AccountReturnPageOrderDetailsOrderDateValue}    (//div[@class='col']//span)[5]
${Retail_AccountReturnPageOrderDetailsRetReqDateValue}    (//div[@class='col']//span)[7]


${Retail_AccountReturnPageOrderReturnHeader}    //h2[@class='returned']
${Retail_AccountReturnPageReturnReturnContainer}    //table/..
${Retail_AccountReturnPageOrderReturnItemList}    //table[@class='return-request-detail-table']

${Retail_AccountReturnPageOrderReturnItemList_Desc_Label}    //table[@class='return-request-detail-table']//tr//th[contains(text(),'Description')]
${Retail_AccountReturnPageOrderReturnItemList_Price_Label}    //table[@class='return-request-detail-table']//tr//th[contains(text(),'Price')]
${Retail_AccountReturnPageOrderReturnItemList_RRP_Label}    //table[@class='return-request-detail-table']//tr//th[contains(text(),'RRP')]
${Retail_AccountReturnPageOrderReturnItemList_Qty_Label}    //table[@class='return-request-detail-table']//tr//th[contains(text(),'Qty')]
${Retail_AccountReturnPageOrderReturnItemList_Total_Label}    //table[@class='return-request-detail-table']//tr//th[contains(text(),'Total')]

${Retail_AccountReturnPageOrderReturnItemList_Desc_Value1}    (//table[@class='return-request-detail-table']//tbody//td)[1]
${Retail_AccountReturnPageOrderReturnItemList_Price_Value1}    (//table[@class='return-request-detail-table']//tbody//td)[2]
${Retail_AccountReturnPageOrderReturnItemList_RRP_Value1}    (//table[@class='return-request-detail-table']//tbody//td)[3]
${Retail_AccountReturnPageOrderReturnItemList_Qty_Value1}    (//table[@class='return-request-detail-table']//tbody//td)[4]
${Retail_AccountReturnPageOrderReturnItemList_Total_Value1}    (//table[@class='return-request-detail-table']//tbody//td)[5]

${Retail_AccountReturnPageOrderReturnDataSectionContainer}    //div[@class='return-request-data-section' or @class='cancel-order-container']
${Retail_AccountReturnPageOrderReturnDataSectionReasonLabel}    //div[@class='form-group']//span[@class='label-content']
${Retail_AccountReturnPageOrderReturnDataSectionReasonSelection}    //div[@class='ng-select-container ng-has-value']
${Retail_AccountReturnPageOrderReturnDataSectionQtyLabel}    //div[@class='form-group']//span[@class='label-content qty-return']
${Retail_AccountReturnPageOrderReturnDataSectionQtyValue}    //div[@class='col-3 pl-0' or @class='col-md-3']//input
${Retail_AccountReturnPageOrderReturnDataSectionNoteLabel}     //div[@class='form-group col-12' or @class='col-md-6 pr-sm-0']//span[@class='label-content']
${Retail_AccountReturnPageOrderReturnDataSectionNoteTextField}    //div[@class='form-group col-12' or @class='col-md-6 pr-sm-0']//textarea
${Retail_AccountReturnPageOrderReturnDataSectionImageLabel}    //div[@class='form-group pl-0 col-12' or @class='col-md-6']//label
${Retail_AccountReturnPageOrderReturnDataSectionImageField}    //div[@class='d-flex image-section']

${Retail_AccountReturnPageOrderReturnMessageSupplierButton}    //button[@class='btn btn-outline-secondary']

${Retail_AccountReturnPageOrderReturnDetailsMessagePopUpContainer}    //div[@class='cx-dialog-body modal-body']
${Retail_AccountReturnPageOrderReturnDetailsMessagePopUpToSupplierLabel}    //div[@class='col-sm-12 header']//span[@class='message-subject mb-1']
${Retail_AccountReturnPageOrderReturnDetailsMessagePopUpSubjectLabel}    //div[@class='col-sm-12']//span[contains(text(),'Subject')]
${Retail_AccountReturnPageOrderReturnDetailsMessagePopUpMessageLabel}    //div[@class='col-sm-12']//span[contains(text(),'Message')]
${Retail_AccountReturnPageOrderReturnDetailsMessagePopUpUploadLabel}     //div[@class='col-sm-12']//p

${Retail_AccountReturnPageOrderReturnDetailsMessagePopUpToSupplierTextBox}    //div[@class='col-sm-12 header']//input[@type='text']
${Retail_AccountReturnPageOrderReturnDetailsMessagePopUpSubjectTextBox}    //div[@class='col-sm-12']//input[@type='text']
${Retail_AccountReturnPageOrderReturnDetailsMessagePopUpMessageTextBox}    //div[@class='col-sm-12']//textarea[@formcontrolname='message']

${Retail_AccountReturnPageOrderReturnDetailsMessagePopUpUploadedImageContainer}    //div[@class='d-flex']|//div[@class='images-container']
${Retail_AccountReturnPageOrderReturnDetailsMessagePopUpUploadButton}    //button[@class='btn image-upload']
${Retail_AccountReturnPageOrderReturnDetailsMessagePopUpUploadImage}    //input[@type='file']

${Retail_AccountReturnPageOrderReturnDetailsMessagePopUpCancelButton}    //button[@class='btn btn-sm btn-outline-secondary']
${Retail_AccountReturnPageOrderReturnDetailsMessagePopUpSendButton}    //button[@class='btn btn-sm btn-secondary ml-2']

#-----------------------------------------------------Retail Account Retrun Details Page Values
${Retail_AccountReturnPageOrderReturnDetailsMessagePopUpUpMessabeValue}    Hello World QE Test

#-----------------------------------------------------Retail Account Saved Carts Page-----------------------------------
${Retail_AccountSavedCartsPagePanelContainer}    //dpp-saved-cart-history
${Retail_AccountSavedCartsPagePanelHeader}    //dpp-saved-cart-history//h3[contains(text(),'Saved Carts') or contains(text(),'已儲存貨品')]

${Retail_AccountSavedCartsPageCartNameLabel}    //table[@class='table cx-saved-cart-list-table']//th[@class='cart-name pl-3 py-2']|//thead[@class='cx-saved-cart-list-thead-mobile']//th[@class='cart-name px-4 py-2']
${Retail_AccountSavedCartsPageRegoLabel}    //table[@class='table cx-saved-cart-list-table']//th[@class='pl-4' and contains(text(),'Rego')]|//thead[@class='cx-saved-cart-list-thead-mobile']//th[@class='pl-4' and contains(text(),'Rego')]
${Retail_AccountSavedCartsPageDescriptionLabel}    //table[@class='table cx-saved-cart-list-table']//th[@class='pl-4' and contains(text(),'Description')]|//thead[@class='cx-saved-cart-list-thead-mobile']//th[@class='pl-4' and contains(text(),'Description')]
${Retail_AccountSavedCartsPageCreatedLabel}    //table[@class='table cx-saved-cart-list-table']//th[@class='pl-4' and contains(text(),'Created')]|//thead[@class='cx-saved-cart-list-thead-mobile']//th[@class='pl-4' and contains(text(),'Created')]
${Retail_AccountSavedCartsPageQtyLabel}    //table[@class='table cx-saved-cart-list-table']//th[@class='cx-saved-cart-list-th-qty pl-4']|//thead[@class='cx-saved-cart-list-thead-mobile']//th[@class='cx-saved-cart-list-th-qty pl-4']
${Retail_AccountSavedCartsPageTotalLabel}    //thead[@class='cx-saved-cart-list-thead-mobile']//th[@class='cx-saved-cart-list-th-total text-center']|//thead[@class='cx-saved-cart-list-thead-mobile']//th[@class='cx-saved-cart-list-th-total pl-3']

${Retail_AccountSavedCartsPageSavedCartList}    //tbody//tr[not(@class='gap-row')]

${Retail_AccountSavedCartsPageSavedCartListCartNameValue}    (//tbody//tr[not(@class='gap-row')]//td[@class='cx-saved-cart-list-cart-name py-3 pl-4']//a)[${Retail_AccountSavedCartsPageIndexValue}]
${Retail_AccountSavedCartsPageSavedCartListRegoValue}    (//tbody//tr[not(@class='gap-row')]//td[@class='cx-saved-cart-list-date-saved py-2'][1])[${Retail_AccountSavedCartsPageIndexValue}]
${Retail_AccountSavedCartsPageSavedCartListDescValue}    (//tbody//tr[not(@class='gap-row')]//td[@class='cx-saved-cart-list-desc py-3 pl-4 pr-0'])[1]
${Retail_AccountSavedCartsPageSavedCartListCreatedValue}    (//tbody//tr[not(@class='gap-row')]//td[@class='cx-saved-cart-list-date-saved py-2 pl-4'])[${Retail_AccountSavedCartsPageIndexValue}]
${Retail_AccountSavedCartsPageSavedCartListTotalValue}    (//tbody//tr[not(@class='gap-row')]//td[@class='cx-saved-cart-list-total py-3 pl-3 pr-md-3 pr-lg-0'])[${Retail_AccountSavedCartsPageIndexValue}]

${Retail_AccountSavedCartsPageSavedCartListRestoreButton}    (//tbody//tr[not(@class='gap-row')]//td//button[@class='btn btn-secondary'])[${Retail_AccountSavedCartsPageIndexValue}]
${Retail_AccountSavedCartsPageSavedCartListDeleteButton}    //div[@class='saved-cart-details-container']//button[@class='ml-3 btn btn-sm btn-outline-secondary']|//div[@class='saved-cart-details-container']//button[@class='btn btn-sm btn-outline-secondary']|(//td//cx-icon)[${Retail_AccountSavedCartsPageIndexValue}]

${Retail_AccountSavedCartsPageSavedCartListDeletePopUpContainer}    //div[@class='cx-dialog-body modal-body']
${Retail_AccountSavedCartsPageSavedCartListDeletePopUpYesButton}    //div[@class='cx-dialog-body modal-body']//button[@class='btn btn-secondary btn-block']
${Retail_AccountSavedCartsPageSavedCartListDeletePopUpNoButton}    //div[@class='cx-dialog-body modal-body']//button[@class='btn btn-block btn-outline-secondary']

${Retail_AccountSavedCartsNoEntriesLabel}    //dpp-saved-cart-history//div[@class='col-sm-12 col-md-6 col-lg-4']

${Retail_AccountSavedCartsBackToSavedCartsButton}    //div[@class='d-flex']//div[@class='ml-2']

#-----------------------------------------------------Retail Account Saved Carts Page Values
${Retail_AccountSavedCartsPageIndexValue}    1

#-----------------------------------------------------Retail Account Saved Carts Details Page
${Retail_AccountSavedCartsDetailsPagePanelContainer}    //cx-page-slot[@position='BodyContent']
${Retail_AccountSavedCartsDetailsPagePanelHeader}    //div[@class='savedCartDetails']

${Retail_AccountSavedCartsDetailsPageBackButton}    //div[@class='ml-2']

${Retail_AccountSavedCartsDetailsPageDetailsContainer}    //div[@class='saved-cart-details-container']
${Retail_AccountSavedCartsDetailsPageDetailsCartNameLabel}    (//div[@class='saved-cart-details-container']//div[@class='row']//label)[1]|//div[@class='col-12 col-md-4']//label
${Retail_AccountSavedCartsDetailsPageDetailsRegoLabel}    (//div[@class='saved-cart-details-container']//div[@class='row']//label)[2]|//div[@class='col-12 col-md-3']//label
${Retail_AccountSavedCartsDetailsPageDetailsDescLabel}    (//div[@class='saved-cart-details-container']//div[@class='row']//label)[3]|//div[@class='col-12 col-md-5']//p[@class='cart-details-card__description']/preceding-sibling::label
${Retail_AccountSavedCartsDetailsPageDetailsCreatedLabel}    (//div[@class='saved-cart-details-container']//div[@class='row']//label)[4]|//div[@class='col-10 col-md-4']//label
${Retail_AccountSavedCartsDetailsPageDetailsQtyLabel}    (//div[@class='saved-cart-details-container']//div[@class='row']//label)[5]|//div[@class='col-2 col-md-3']//label
${Retail_AccountSavedCartsDetailsPageDetailsTotalLabel}   (//div[@class='saved-cart-details-container']//div[@class='row']//label)[6]|(//div[@class='col-12 col-md-5']//label)[2]

${Retail_AccountSavedCartsDetailsPageDetailsCartNameValue}    (//div[@class='saved-cart-details-container']//div[@class='row']//p)[1]|//div[@class='col-12 col-md-4']//p
${Retail_AccountSavedCartsDetailsPageDetailsRegoValue}    (//div[@class='saved-cart-details-container']//div[@class='row']//p)[2]|//div[@class='col-12 col-md-3']//p
${Retail_AccountSavedCartsDetailsPageDetailsDescValue}    (//div[@class='saved-cart-details-container']//div[@class='row']//p)[3]|//div[@class='col-12 col-md-5']//p[@class='cart-details-card__description']
${Retail_AccountSavedCartsDetailsPageDetailsCreatedValue}    (//div[@class='saved-cart-details-container']//div[@class='row']//p)[4]|//div[@class='col-10 col-md-4']//p
${Retail_AccountSavedCartsDetailsPageDetailsQtyValue}    (//div[@class='saved-cart-details-container']//div[@class='row']//p)[5]|//div[@class='col-2 col-md-3']//p
${Retail_AccountSavedCartsDetailsPageDetailsTotalValue}    (//div[@class='saved-cart-details-container']//div[@class='row']//p)[6]|(//div[@class='col-12 col-md-5']//p[contains(text(),'')])[2]

${Retail_AccountSavedCartsDetailsPageDetailsEditButton}    //div[@class='saved-cart-details-container']//button[@class='btn btn-sm btn-outline-secondary saved-card-btn']
${Retail_AccountSavedCartsDetailsPageDetailsDeleteButton}    //div[@class='saved-cart-details-container']//button[@class='ml-3 btn btn-sm btn-outline-secondary']|//div[@class='saved-cart-details-container']//button[@class='btn btn-sm btn-outline-secondary']|(//td//cx-icon)[1]
${Retail_AccountSavedCartsDetailsPageDetailsRestoreButton}    //div[@class='col-12 col-md-5 offset-md-1']//button[@class='btn btn-sm btn-secondary']|(//td//button[@class='btn btn-secondary'])[1]

${Retail_Account_SavedCartsPage_DetailsPage_DeleteButton}    //div[@class='saved-cart-details-container']//button[@class='btn btn-sm btn-outline-secondary saved-card-btn ml-4']
${Retail_Account_SavedCartsPage_DetailsPage_RestoreButton}    //div[@class='saved-cart-details-container']//button[@class='btn btn-sm btn-secondary saved-card-btn']|//div[@class='row mt-2']//button[@class='btn btn-sm btn-secondary saved-card-btn']

${Retail_AccountSavedCartsDetailsPageDetailsEditPopUpContainer}    //div[@class='cx-dialog-body modal-body']
${Retail_AccountSavedCartsDetailsPageDetailsEditPopUpCloseButton}    //div[@class='cx-dialog-body modal-body']//button[@class='link cx-action-link close-button float-right']

${Retail_AccountSavedCartsDetailsPageDetailsEditPopUpNameLabel}    //div[@class='cx-dialog-body modal-body']//label[contains(text(),'Name')]|//div[@class='cx-dialog-body modal-body']//label//span[contains(text(),'Name')]
${Retail_AccountSavedCartsDetailsPageDetailsEditPopUpRegoLabel}    //div[@class='cx-dialog-body modal-body']//label[contains(text(),'Rego') or contains(text(),'VIN')]
${Retail_AccountSavedCartsDetailsPageDetailsEditPopUpDescLabel}    //div[@class='cx-dialog-body modal-body']//label[contains(text(),'Description')]|//div[@class='cx-dialog-body modal-body']//label//span[contains(text(),'Description')]

${Retail_AccountSavedCartsDetailsPageDetailsEditPopUpNameTextBox}    //div[@class='cx-dialog-body modal-body']//input[@formcontrolname='name']
${Retail_AccountSavedCartsDetailsPageDetailsEditPopUpRegoTextBox}    //div[@class='cx-dialog-body modal-body']//input[@formcontrolname='rego']
${Retail_AccountSavedCartsDetailsPageDetailsEditPopUpDescTextBox}    //div[@class='cx-dialog-body modal-body']//textarea[@formcontrolname='description']

${Retail_AccountSavedCartsDetailsPageDetailsEditPopUpCancelButton}    //div[@class='cx-dialog-body modal-body']//button[@class='btn btn-outline-secondary']
${Retail_AccountSavedCartsDetailsPageDetailsEditPopUpUpdateButton}    //div[@class='cx-dialog-body modal-body']//button[@class='ml-3 btn btn-secondary submit-button']

${Retail_AccountSavedCartsDetailsPageDetailsEdidSuccessMessage}    //div[@class='alert alert-success']
${Retail_AccountSavedCartsDetailsPageDetailsEdidSuccessMessageCloseButton}    //div[@class='alert alert-success']//button

${Retail_AccountSavedCartsDetailsPageDetailsDeletePopUpContainer}    //div[@class='cx-modal-content']
${Retail_AccountSavedCartsDetailsPageDetailsDeletePopUpYesButton}    //div[@class='cx-modal-content']//button[@class='btn btn-secondary btn-block']
${Retail_AccountSavedCartsDetailsPageDetailsDeletePopUpNoButton}    //div[@class='cx-modal-content']//button[@class='btn btn-block btn-outline-secondary']

${Retail_AccountSavedCartsDetailsPageDetailsItemsContainer}    //dpp-saved-cart-details-items
${Retail_AccountSavedCartsDetailsPageDetailsItemsDescLabel}    //dpp-saved-cart-details-items//thead//th[contains(text(),'Description')]
${Retail_AccountSavedCartsDetailsPageDetailsItemsPriceLabel}    //dpp-saved-cart-details-items//thead//th[contains(text(),'Price')]
${Retail_AccountSavedCartsDetailsPageDetailsItemsQtyLabel}    //dpp-saved-cart-details-items//thead//th[contains(text(),'Qty')]
${Retail_AccountSavedCartsDetailsPageDetailsItemsTotalLabel}    //dpp-saved-cart-details-items//thead//th[contains(text(),'Total')]

${Retail_AccountSavedCartsDetailsPageDetailsItemsList}    //dpp-saved-cart-details-items//tbody//tr

${Retail_AccountSavedCartsDetailsPageDetailsItemsListValue}    (//dpp-saved-cart-details-items//tbody//tr)[${Retail_AccountSavedCartsDetailsPageDetailsItemsIndexValue}]
${Retail_AccountSavedCartsDetailsPageDetailsItemsImageValue}    (//dpp-saved-cart-details-items//tbody//tr//td//div[@class='col-4 cx-product-image'])[${Retail_AccountSavedCartsDetailsPageDetailsItemsIndexValue}]
${Retail_AccountSavedCartsDetailsPageDetailsItemsNameValue}    (//dpp-saved-cart-details-items//tbody//tr//td//div[@class='col cx-product-name'])[${Retail_AccountSavedCartsDetailsPageDetailsItemsIndexValue}]
${Retail_AccountSavedCartsDetailsPageDetailsItemsPriceValue}    ((//dpp-saved-cart-details-items//tbody[.//tr]//td[@class='text-center cx-formatted-price'][1])[${Retail_AccountSavedCartsDetailsPageDetailsItemsIndexValue}]//text())[1]
${Retail_AccountSavedCartsDetailsPageDetailsItemsQtyValue}    (//dpp-saved-cart-details-items//tbody//tr//td[@class='text-center'])[${Retail_AccountSavedCartsDetailsPageDetailsItemsIndexValue}]
${Retail_AccountSavedCartsDetailsPageDetailsItemsTotalValue}    ((//dpp-saved-cart-details-items//tbody[.//tr]//td[@class='text-center cx-formatted-price'][2])[${Retail_AccountSavedCartsDetailsPageDetailsItemsIndexValue}]//text())[1]

#-----------------------------------------------------Retail Account Saved Carts Details Page Values
${Retail_AccountSavedCartsDetailsPageDetailsItemsIndexValue}    1

${Retail_AccountSavedCartsDetailsPageEditPopUpNameValue}    Test123
${Retail_AccountSavedCartsDetailsPageEditPopUpDescValue}    Test321


#-----------------------------------------------------Retail Account Vehicle Listing Page-------------------------------

${Retail_AccountVehicleListingPagePanelContainer}    //dpp-vehicle-listing
${Retail_AccountVehicleListingPagePanelHeader}    //dpp-vehicle-listing//h3
${Retail_AccountVehicleListingPageAddVehicleButton}    //button[@class='btn btn-sm btn-primary mb-0']
${Retail_AccountVehicleListingPageShopThisVehicleButton}    (//dpp-vehicle-listing-for-dialog//div[@class='card p-4 my-2' or @class='card p-4 my-2 last-item']//button)[1]
${Retail_AccountVehicleListingPageSelectedVehicleShopThisVehicleButton}    //div[@class='selected-vehicle-modal']//div[@class='row selected-vehicle-info align-items-center']//button[@class='btn btn-sm btn-primary']
${Retail_AccountVehicleListingPageSelectedVehicleClearVehicleButton}    //button[@class='btn mt-2 btn-outline-secondary clear-vehicle w-100']|//button[@class='btn mt-2 btn-sm btn-default clear-vehicle']

${Retail_AccountVehicleListingPageSelectVehicleAddVehicleButton}    //dpp-vehicle-box-list//div[@class='vehicle-box last-box-container p-3 d-flex flex-column text-center align-items-center justify-content-center']|//dpp-vehicle-box-list//div[@class='vehicle-box last-box-container p-3 d-flex flex-column text-center align-items-center']
${Retail_HK_AccountVehicleListingPage_SelectVehicleAddVehicle_Button}    //div[@class='cx-dialog-body modal-body flex-layout']//button[@class='btn btn-secondary']

${Retail_AccountVehicleListingPageSelectVehicleContainer}    //div[@class='add-vehicle-container']|//div[@class='cx-modal-content d-flex']
${Retail_HK_AccountVehicleListingPage_SelectVehicle_Container}    //div[@class='cx-dialog-body modal-body flex-layout']

${Retail_AccountVehicleListingPageSelectVehicleStateComboBox}    //div[@class='cx-modal-container']//ng-select[@formcontrolname='state']//div[@class='ng-select-container']

${Retail_AccountVehicleListingPageSelectVehicleStateComboBoxList}    //div[@class='ng-dropdown-panel-items scroll-host']//div[@role='option']
${Retail_AccountVehicleListingPageSelectVehicleStateComboBoxListOpt1}    (//div[@class='ng-dropdown-panel-items scroll-host']//div[@role='option'])[1]

${Retail_AccountVehicleListingPageSelectVehicleStateComboBoxListAustralian}    //div[@class='ng-dropdown-panel-items scroll-host']//div[@role='option']//div[@title='Australian Captial Territory']
${Retail_AccountVehicleListingPageSelectVehicleStateComboBoxListSouthWales}    //div[@class='ng-dropdown-panel-items scroll-host']//div[@role='option']//div[@title='New South Wales']
${Retail_AccountVehicleListingPageSelectVehicleStateComboBoxListNorthernTerritory}    //div[@class='ng-dropdown-panel-items scroll-host']//div[@role='option']//div[@title='Northern Territory']
${Retail_AccountVehicleListingPageSelectVehicleStateComboBoxListQueensland}    //div[@class='ng-dropdown-panel-items scroll-host']//div[@role='option']//div[@title='Queensland']
${Retail_AccountVehicleListingPageSelectVehicleStateComboBoxListSouthAustralia}    //div[@class='ng-dropdown-panel-items scroll-host']//div[@role='option']//div[@title='South Australia']
${Retail_AccountVehicleListingPageSelectVehicleStateComboBoxListTasmania}    //div[@class='ng-dropdown-panel-items scroll-host']//div[@role='option']//div[@title='Tasmania']
${Retail_AccountVehicleListingPageSelectVehicleStateComboBoxListVictoria}    //div[@class='ng-dropdown-panel-items scroll-host']//div[@role='option']//div[@title='Victoria']
${Retail_AccountVehicleListingPageSelectVehicleStateComboBoxListWesternAustralia}    //div[@class='ng-dropdown-panel-items scroll-host']//div[@role='option']//div[@title='Western Australia']

${Retail_AccountVehicleListingPageSelectVehicleRegoTextBox}    //div[@class='cx-modal-container']//dpp-rego-vin-vehicle-search//input[@formcontrolname='rego']
${Retail_AccountVehicleListingPageSelectVehicleVINNumTextBox}    //div[@class='cx-modal-container']//input[@formcontrolname='vinNumber']

${Retail_AccountVehicleListingPageSelectVehicleSubmitButton}    //div[@class='add-vehicle-container']//button[@type='submit']|//div[@class='cx-modal-content d-flex']//button[@type='submit']

${Retail_AccountVehicleListingPageSelectVehicleSearchModelButton}    //div[@class='add-vehicle-container']//div[@class='col']//a|//div[@class='cx-modal-content d-flex']//div[@class='col']//a

${Retail_AccountVehicleListingPageSelectVehicleSearchNoResultContainer}    //div[@class='vehicle-results']
${Retail_AccountVehicleListingPageSelectVehicleSearchNoResultSearchModelButton}    //div[@class='vehicle-results']//p//a
${Retail_AccountVehicleListingPageSelectVehicleSearchNoResultSearchManuallyButton}    //dpp-vehicle-results//button[@class='btn btn-default btn-block m-0 mr-2 search-manually']
${Retail_AccountVehicleListingPageSelectVehicleSearchNoResultSearchAgainButton}    //dpp-vehicle-results//button[@class='btn btn-secondary btn-block m-0 ml-2']

${Retail_AccountVehicleListingPageSelectVehicleSearchManualContainer}    //dpp-manual-vehicle-search//div[@class='row custom-vehicle-search']
${Retail_AccountVehicleListingPageSelectVehicleSearchManualMakerComboBox}    //dpp-manual-vehicle-search//ng-select[@formcontrolname='make']//div[@class='ng-select-container ng-has-value']
${Retail_AccountVehicleListingPageSelectVehicleSearchManualModelComboBox}    //div[@class='cx-dialog-body modal-body d-flex flex-column']//ng-select[@formcontrolname='model']//div[@class='ng-select-container']|//div[@class='cx-dialog-body modal-body flex-layout']//ng-select[@formcontrolname='model']//div[@class='ng-select-container']
${Retail_AccountVehicleListingPageSelectVehicleSearchManualYearComboBox}    //div[@class='cx-dialog-body modal-body d-flex flex-column']//ng-select[@formcontrolname='year']//div[@class='ng-select-container']|//div[@class='cx-dialog-body modal-body flex-layout']//ng-select[@formcontrolname='year']//div[@class='ng-select-container']
${Retail_AccountVehicleListingPageSelectVehicleSearchManualSeriesComboBox}    //div[@class='cx-dialog-body modal-body d-flex flex-column']//ng-select[@formcontrolname='series']//div[@class='ng-select-container' or @class='ng-select-container ng-has-value']|//div[@class='cx-dialog-body modal-body flex-layout']//ng-select[@formcontrolname='series']//div[@class='ng-select-container' or @class='ng-select-container ng-has-value']
${Retail_AccountVehicleListingPageSelectVehicleSearchManualEngineComboBox}    //div[@class='cx-dialog-body modal-body d-flex flex-column']//ng-select[@formcontrolname='engine']//div[@class='ng-select-container' or @class='ng-select-container ng-has-value']|//div[@class='cx-dialog-body modal-body flex-layout']//ng-select[@formcontrolname='engine']//div[@class='ng-select-container' or @class='ng-select-container ng-has-value']
${Retail_AccountVehicleListingPageSelectVehicleSearchManualDetailsComboBox}    //div[@class='cx-dialog-body modal-body d-flex flex-column']//ng-select[@formcontrolname='details']//div[@class='ng-select-container' or @class='ng-select-container ng-has-value']|//div[@class='cx-dialog-body modal-body flex-layout']//ng-select[@formcontrolname='details']//div[@class='ng-select-container' or @class='ng-select-container ng-has-value']

${Retail_HK_AccountVehicleListingPage_SelectVehicle_SearchManual_ModelID_ComboBox}    //div[@class='cx-dialog-body modal-body flex-layout']//ng-select[@formcontrolname='modelId']//div[@class='ng-select-container' or @class='ng-select-container ng-has-value']

${Retail_AccountVehicleListingPageSelectVehicleSearchManualSearchButton}    //button[@class='btn btn-block btn-primary search-btn' or @class='btn btn-block btn-secondary search-btn']|//div[@class='col-md-6']//button
${Retail_AccountVehicleListingPageSelectVehicleSearchManualSearchRegoButton}    //dpp-manual-vehicle-search//p/a

${Retail_AccountVehicleListingPageSelectVehicleSearchManualModelListOpt1}    (//div[@class='ng-dropdown-panel-items scroll-host']//span[@title!='---Popular Models---' and @title!='----All Models----' ])[1]|(//div[@class='ng-dropdown-panel-items scroll-host']//span[@class!='---Popular Models---' and @class!='----All Models----' ])[1]
${Retail_AccountVehicleListingPageSelectVehicleSearchManualModelListOpt}    (//div[@class='ng-dropdown-panel-items scroll-host']//span[@title!='---Popular Models---' and @title!='----All Models----' ])|(//div[@class='ng-dropdown-panel-items scroll-host']//span[@class!='---Popular Models---' and @class!='----All Models----' ])

${Retail_AccountVehicleListingPageSelectVehicleSearchManualYearListOpt1}    (//ng-dropdown-panel//div[@role='option'])[1]
${Retail_AccountVehicleListingPageSelectVehicleSearchManualYearListOpt}    (//ng-dropdown-panel//div[@role='option'])

${Retail_AccountVehicleListingPageSelectVehicleSearchManualSeriesListOpt1}    (//ng-dropdown-panel//div[@role='option'])[1]
${Retail_AccountVehicleListingPageSelectVehicleSearchManualSeriesListOpt}    (//ng-dropdown-panel//div[@role='option'])

${Retail_AccountVehicleListingPageSelectVehicleSearchManualEngineListOpt1}    (//ng-dropdown-panel//div[@role='option'])[1]
${Retail_AccountVehicleListingPageSelectVehicleSearchManualEngineListOpt}    (//ng-dropdown-panel//div[@role='option'])

${Retail_AccountVehicleListingPageSelectVehicleSearchManualDetailsListOpt1}    (//ng-dropdown-panel//div[@role='option'])[1]
${Retail_AccountVehicleListingPageSelectVehicleSearchManualDetailsListOpt}    (//ng-dropdown-panel//div[@role='option'])

${Retail_HK_AccountVehicleListingPage_SelectVehicle_SearchManual_ModelID_Opt1}    (//ng-dropdown-panel//div[@role='option'])[1]
${Retail_HK_AccountVehicleListingPage_SelectVehicle_SearchManual_ModelID_Opt}    (//ng-dropdown-panel//div[@role='option'])

${Retail_HK_AccountVehicleListingPage_SelectVehicle_SearchManual_Brand_Opt1}    (//ng-dropdown-panel//div[@role='option'])[1]
${Retail_HK_AccountVehicleListingPage_SelectVehicle_SearchManual_Brand_Opt}    (//ng-dropdown-panel//div[@role='option'])

${Retail_AccountVehicleListingPageSelectVehicleSearchResultContainer}    //div[@class='vehicle-results']
${Retail_AccountVehicleListingPageSelectVehicleSearchResultVehicleLabel}    //div[@class='vehicle-results']//div[@class='col-md-7 pr-0']//p
${Retail_AccountVehicleListingPageSelectVehicleSearchResultSelectVehicleButton}    //dpp-vehicle-results//button[@class='btn btn-sm btn-block ml-2 mt-0 p-1 select-this-vehicle-btn btn-secondary']|//div[@class='vehicle-results flex-layout']//button[@class='btn btn-sm btn-block btn-default mt-2 p-1 select-this-vehicle-btn']
${Retail_AccountVehicleListingPageSelectVehicleSearchResultSelect&SaveVehicleButton}    //dpp-vehicle-results//button[@class='btn btn-sm btn-block mt-0 p-1 select-this-vehicle-btn btn-default vehicleListing-btn']|//button[@class='btn btn-sm btn-block mr-2 mt-0 p-1 select-this-vehicle-btn btn-default vehicleListing-btn']|//div[@class='vehicle-results flex-layout']//button[@class='btn btn-sm btn-primary btn-block p-1 select-this-vehicle-btn vehicleListing-btn']
${Retail_AccountVehicleListingPageSelectVehicleSearchResultSearchAgainButton}    //div[@class='vehicle-results']//button[@class='btn btn-block btn-default vehicleListing-btn-sm']|//div[@class='vehicle-results flex-layout']//button[@class='btn btn-block btn-default vehicleListing-btn-sm']

${Retail_AccountVehicleListingPageVehicleCardList}    //dpp-vehicle-listing//div[@class='vehicle-card']
${Retail_AccountVehicleListingPageVehicleCardListModelLabel}    (//dpp-vehicle-listing//div[@class='vehicle-card']//div[@class='col-7 vehicle-desc']//p)[1]
${Retail_AccountVehicleListingPageVehicleCardListModelDescLabel}    (//dpp-vehicle-listing//div[@class='vehicle-card']//div[@class='col-7 vehicle-desc']//span)[1]
${Retail_AccountVehicleListingPageVehicleCardListRegoLabel}    (//dpp-vehicle-listing//div[@class='vehicle-card']//div[@class='col-2 registration']//h4)[1]
${Retail_AccountVehicleListingPageVehicleCardListShopVehicleButton}    (//dpp-vehicle-listing//div[@class='vehicle-card']//button[@class='btn btn-sm btn-secondary mb-0'])[1]
${Retail_AccountVehicleListingPageVehicleCardListDeleteButton}    (//dpp-vehicle-listing//div[@class='vehicle-card']//cx-icon)[1]

${Retail_HK_AccountVehicleListingPage_VehicleCard_List}    (//div[@class='row vehicle-card vehicle-desc'])
${Retail_HK_AccountVehicleListingPage_VehicleCardList_Model_Label}    (//div[@class='row vehicle-card vehicle-desc']//span[@class='vehicle-name'])[1]
${Retail_HK_AccountVehicleListingPage_VehicleCardList_VIN_Label}    (//div[@class='col-12 registration']//p)[1]
${Retail_HK_AccountVehicleListingPage_VehicleCardList_EditDesc_Button}    (//div[@class='row vehicle-card vehicle-desc']//cx-icon[@class='cx-icon dpp-icons__pencil-light'])[1]
${Retail_HK_AccountVehicleListingPage_VehicleCardList_ShopVehicle_Button}    (//div[@class='row vehicle-card vehicle-desc']//button[@class='btn btn-sm btn-secondary mb-0'])[1]
${Retail_HK_AccountVehicleListingPage_VehicleCardList_Delete_Button}    (//div[@class='row vehicle-card vehicle-desc']//cx-icon[@class='cx-icon dpp-icons__trash-v2'])[1]

${Retail_AccountVehicleListingPageVehicleCardListDeletePopUpContainer}    //div[@class='cx-dialog-body modal-body']
${Retail_AccountVehicleListingPageVehicleCardListDeletePopUpYesButton}    //div[@class='cx-dialog-body modal-body']//button[@class='btn btn-secondary btn-block']
${Retail_AccountVehicleListingPageVehicleCardListDeletePopUpNoButton}    //div[@class='cx-dialog-body modal-body']//button[@class='btn btn-block btn-outline-secondary']


${Retail_HK_AccountVehicleListingPage_Container}    //dpp-hk-vehicle-listing//div[@class='container']|//dpp-toyota-vehicle-listing//div[@class='container']
${Retail_HK_AccountVehicleListingPage_Header}    //div//h3[contains(text(),'Vehicle Listing') or contains(text(),'車輛列表')]

${Retail_HK_AccountVehicleListingPage_Add New Vehicle_Button}    //dpp-hk-vehicle-listing//div[@class='header-container d-flex align-items-center justify-content-between']//button
${Retail_HK_AccountVehicleListingPage_VehicleCard_List}    //dpp-hk-vehicle-listing//div[@class='row px-0 px-md-2']//div[@class='col-12 col-md-6 col-lg-4 align-self-lg-center card-content selected' or @class='col-12 col-md-6 col-lg-4 align-self-lg-center card-content']

${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Container}    //dpp-hk-add-vehicle-dialog//div[@class='cx-modal-content flex-layout pr-0']
${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_VIN_Value}    //dpp-hk-add-vehicle-dialog//div[@class='cx-modal-content flex-layout pr-0']//div//span[@class='vin-value']
${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_Model}    //dpp-hk-add-vehicle-dialog//div[@class='cx-modal-content flex-layout pr-0']//div[@class='vehicle-detail-header']

${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_ModelCode_Label}    //dpp-hk-add-vehicle-dialog//div[@class='cx-modal-content flex-layout pr-0']//div[@class='vehicle-detail-container']//div[contains(text(),'Model Code') or contains(text(),'型號代碼')]
${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_ModelCode_Value}    (//dpp-hk-add-vehicle-dialog//div[@class='cx-modal-content flex-layout pr-0']//div[@class='vehicle-detail-container']//div[@class='vehicle-detail-body']//div[@class='value'])[1]
${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_Transmission_Label}    //dpp-hk-add-vehicle-dialog//div[@class='cx-modal-content flex-layout pr-0']//div[@class='vehicle-detail-container']//div[contains(text(),'Transmission') or contains(text(),'傳染')]
${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_Transmission_Value}    (//dpp-hk-add-vehicle-dialog//div[@class='cx-modal-content flex-layout pr-0']//div[@class='vehicle-detail-container']//div[@class='vehicle-detail-body']//div[@class='value'])[2]
${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_Period_Label}    //dpp-hk-add-vehicle-dialog//div[@class='cx-modal-content flex-layout pr-0']//div[@class='vehicle-detail-container']//div[contains(text(),'Period') or contains(text(),'時期')]
${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_Period_Value}    (//dpp-hk-add-vehicle-dialog//div[@class='cx-modal-content flex-layout pr-0']//div[@class='vehicle-detail-container']//div[@class='vehicle-detail-body']//div[@class='value'])[3]
${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_Engine_Label}    //dpp-hk-add-vehicle-dialog//div[@class='cx-modal-content flex-layout pr-0']//div[@class='vehicle-detail-container']//div[contains(text(),'Engine') or contains(text(),'引擎')]
${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_Engine_Value}    (//dpp-hk-add-vehicle-dialog//div[@class='cx-modal-content flex-layout pr-0']//div[@class='vehicle-detail-container']//div[@class='vehicle-detail-body']//div[@class='value'])[4]
${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_ProductionDate_Label}    //dpp-hk-add-vehicle-dialog//div[@class='cx-modal-content flex-layout pr-0']//div[@class='vehicle-detail-container']//div[contains(text(),'Production Date') or contains(text(),'生產日期')]
${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_ProductionDate_Value}    (//dpp-hk-add-vehicle-dialog//div[@class='cx-modal-content flex-layout pr-0']//div[@class='vehicle-detail-container']//div[@class='vehicle-detail-body']//div[@class='value'])[5]

${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_ShowMore_button}    //dpp-hk-add-vehicle-dialog//div[@class='cx-modal-content flex-layout pr-0']//div[@class='show-more-details']//span[contains(text(),'顯示更多詳情') or contains(text(),'Show More Details')]

${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_Body_Label}    //dpp-hk-add-vehicle-dialog//div[@class='cx-modal-content flex-layout pr-0']//div[@class='vehicle-detail-container']//div[contains(text(),'Body') or contains(text(),'身體')]
${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_Body_Value}    (//dpp-hk-add-vehicle-dialog//div[@class='cx-modal-content flex-layout pr-0']//div[@class='vehicle-detail-container']//div[@class='vehicle-detail-body']//div[@class='value'])[6]
${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_Doors_Label}    //dpp-hk-add-vehicle-dialog//div[@class='cx-modal-content flex-layout pr-0']//div[@class='vehicle-detail-container']//div[contains(text(),'Doors #') or contains(text(),'門 ＃')]
${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_Doors_Value}    (//dpp-hk-add-vehicle-dialog//div[@class='cx-modal-content flex-layout pr-0']//div[@class='vehicle-detail-container']//div[@class='vehicle-detail-body']//div[@class='value'])[7]
${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_SeatingCapacity_Label}    //dpp-hk-add-vehicle-dialog//div[@class='cx-modal-content flex-layout pr-0']//div[@class='vehicle-detail-container']//div[contains(text(),'Seating Capacity') or contains(text(),'座位數')]
${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_SeatingCapacity_Value}    (//dpp-hk-add-vehicle-dialog//div[@class='cx-modal-content flex-layout pr-0']//div[@class='vehicle-detail-container']//div[@class='vehicle-detail-body']//div[@class='value'])[8]
${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_Grade_Label}    //dpp-hk-add-vehicle-dialog//div[@class='cx-modal-content flex-layout pr-0']//div[@class='vehicle-detail-container']//div[contains(text(),'Grade') or contains(text(),'年級')]
${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_Grade_Value}    (//dpp-hk-add-vehicle-dialog//div[@class='cx-modal-content flex-layout pr-0']//div[@class='vehicle-detail-container']//div[@class='vehicle-detail-body']//div[@class='value'])[9]
${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_Driverosition_Label}    //dpp-hk-add-vehicle-dialog//div[@class='cx-modal-content flex-layout pr-0']//div[@class='vehicle-detail-container']//div[contains(text(),'Driver's Position') or contains(text(),'駕駛員位置')]
${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_Driverosition_Value}    (//dpp-hk-add-vehicle-dialog//div[@class='cx-modal-content flex-layout pr-0']//div[@class='vehicle-detail-container']//div[@class='vehicle-detail-body']//div[@class='value'])[10]

${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_SaveShop_button}    //dpp-hk-add-vehicle-dialog//div[@class='cx-modal-content flex-layout pr-0']//button[@class='btn btn-primary btn-sm btn-block p-1 select-this-vehicle-btn vehicleListing-btn']|//dpp-toyota-add-vehicle-dialog//div[@class='cx-modal-content flex-layout pr-0']//button[@class='btn btn-primary btn-sm btn-block p-1 select-this-vehicle-btn vehicleListing-btn']
${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_ShopThisVehicle_button}    //dpp-hk-add-vehicle-dialog//div[@class='cx-modal-content flex-layout pr-0']//button[@class='btn btn-default btn-sm btn-block p-1 select-this-vehicle-btn']|//dpp-toyota-add-vehicle-dialog//div[@class='cx-modal-content flex-layout pr-0']//button[@class='btn btn-default btn-sm btn-block p-1 select-this-vehicle-btn']
${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_SearchAgain_button}    //dpp-hk-add-vehicle-dialog//div[@class='cx-modal-content flex-layout pr-0']//button[@class='btn btn-block btn-default vehicleListing-btn-sm']|//dpp-toyota-add-vehicle-dialog//div[@class='cx-modal-content flex-layout pr-0']//button[@class='btn btn-block btn-default vehicleListing-btn-sm']





#-----------------------------------------------------Retail Account Vehicle Listing Page
${Retail_AccountVehicleListingPageSelectVehicleRegoValue}    CX20LA
${Retail_AccountVehicleListingPageSelectVehicleRegoValue2}    ETK16F
${Retail_AccountVehicleListingPageSelectVehicleRegoValue3}    CXQ17E

${Retail_AccountVehicleListingPageSelectVehicleVINNumValue}    JF1ZD8K72PG004012
${Retail_AccountVehicleListingPageSelectVehicleVINNumValue2}    JF2SK9KL5PG090443
${Retail_AccountVehicleListingPageSelectVehicleVINNumValue3}    JF2BT9KL3NG025777


${Retail_AccountVehicleListingPageSelectVehicleRegoInvalidValue}    654321
${Retail_AccountVehicleListingPageSelectVehicleVINNumInvalidValue}    123456

${Retail_AccountVehicleListingPageSelectVehicleSearchManualModelIndexValue}    1
${Retail_AccountVehicleListingPageSelectVehicleSearchManualYearIndexValue}    1
${Retail_AccountVehicleListingPageSelectVehicleSearchManualSeriesIndexValue}    1
${Retail_AccountVehicleListingPageSelectVehicleSearchManualEngineIndexValue}    1
${Retail_AccountVehicleListingPageSelectVehicleSearchManualDetailsIndexValue}    1

#-----------------------------------------------------Account Retail Message Page---------------------------------------
${Retail_AccountMessagePagePanelContainer}    //dpp-message-list
${Retail_AccountMessagePagePanelHeader}    //dpp-message-list//h3//div[contains(text(),'Inbox') or contains(text(),'收件箱')]

${Retail_AccountMessagePageReadMessagesProdEnq}    //div[@class='row message-container']//div[@class='pl-1 pointer enquiry-col-value col-2']//span[contains(text(),'PRODUCT ENQUIRY')]
${Retail_AccountMessagePageReadMessagesGenEnq}    //div[@class='row message-container']//div[@class='pl-1 pointer enquiry-col-value col-2']//span[contains(text(),'GENERAL ENQUIRY')]
${Retail_AccountMessagePageReadMessagesOrdEnq}    //div[@class='row message-container']//div[@class='pl-1 pointer enquiry-col-value col-2']//span[contains(text(),'ORDER ENQUIRY')]

${Retail_AccountMessagePageEnquiryFilter}    //ng-select[@bindvalue='code']//div[@class='ng-select-container ng-has-value']
${Retail_AccountMessagePageEnquiryFilterAll}    //div[@class='ng-dropdown-panel-items scroll-host']//span[contains(text(),'ALL')]
${Retail_AccountMessagePageEnquiryFilterProductEnquiry}    //div[@class='ng-dropdown-panel-items scroll-host']//span[contains(text(),'Product Enquiry')]
${Retail_AccountMessagePageEnquiryFilterOrderEnquiry}    //div[@class='ng-dropdown-panel-items scroll-host']//span[contains(text(),'Order Enquiry')]
${Retail_AccountMessagePageEnquiryFilterReturnEnquiry}    //div[@class='ng-dropdown-panel-items scroll-host']//span[contains(text(),'Return Enquiry')]
${Retail_AccountMessagePageEnquiryFilterGeneralEnquiry}    //div[@class='ng-dropdown-panel-items scroll-host']//span[contains(text(),'General Enquiry')]

${Retail_AccountMessagePageDateFilter}    //div[@id='dateRangePicker']
${Retail_AccountMessagePageDateFilterContainer}    //ngb-datepicker[@class='dropdown-menu show']
${Retail_AccountMessagePageDateFilterPreviousMonth}    //ngb-datepicker-navigation//button[@aria-label='Previous month']
${Retail_AccountMessagePageDateFilterNextMonth}    //ngb-datepicker-navigation//button[@aria-label='Next month']
${Retail_AccountMessagePageDateFilterSelectMonthDropDown}    //select[@aria-label='Select month']
${Retail_AccountMessagePageDateFilterSelectMonth}    (//select[@aria-label='Select month']//option)[2]     #${variable 1-12}
${Retail_AccountMessagePageDateFilterSelectYearDropDown}    //select[@aria-label='Select year']
${Retail_AccountMessagePageDateFilterSelectYear}    //select[@aria-label='Select year']//option[contains(text(),'2022')]    #${variable 2023}
${Retail_AccountMessagePageDateFilterMonthName1}    (//div[@class='ngb-dp-month-name'])[1]
${Retail_AccountMessagePageDateFilterMonthName2}    (//div[@class='ngb-dp-month-name'])[2]
${Retail_AccountMessagePageDateFilterWeekdays1}    (//div[@class='ngb-dp-week ngb-dp-weekdays'])[1]
${Retail_AccountMessagePageDateFilterWeekdays2}    (//div[@class='ngb-dp-week ngb-dp-weekdays'])[2]
${Retail_AccountMessagePageDateFilterMonth1Days1stSelection}    (//div[@class='ngb-dp-month'][1]//span[@class='custom-day'])[1]    #${variable 1-31}
${Retail_AccountMessagePageDateFilterMonth1Days2ndSelection}    (//div[@class='ngb-dp-month'][1]//span[@class='custom-day'])[15]    #${variable 1-31}
${Retail_AccountMessagePageDateFilterMonth2Days1stSelection}    (//div[@class='ngb-dp-month'][2]//span[@class='custom-day'])[1]    #${variable 1-31}
${Retail_AccountMessagePageDateFilterMonth2Days2ndSelection}    (//div[@class='ngb-dp-month'][2]//span[@class='custom-day'])[15]    #${variable 1-31}
${Retail_AccountMessagePageDateFilterSubmitButton}    //ngb-datepicker//button[@class='btn btn-outline-secondary']
${Retail_AccountMessagePageDateFilterClearButton}    //ngb-datepicker//button[@class='btn btn-outline-secondary mr-3']

${Retail_AccountMessagePageSearchBox}    //div[@class='input-group']//input[@placeholder='Search']
${Retail_AccountMessagePageSearchButton}    //button[@class='btn']
${Retail_AccountMessagePageSearchClose}    //cx-icon[@class='cx-icon dpp-icons__close']
${Retail_AccountMessagePageSearchValue}    Test

${Retail_AccountMessagePageDetailsPreviousPageButton}    //a[@aria-label='previous page']
${Retail_AccountMessagePageDetailsNextPageButton}    //a[@aria-label='next page']
${Retail_AccountMessagePageDetailsPage1Button}    //a[@aria-label='page 1']
${Retail_AccountMessagePageDetailsLastPageButton}    (//a[@aria-label='last page'])[1]
${Retail_AccountMessagePageDetailsFirstPageButton}    (//a[@aria-label='first page'])[2]
${Retail_AccountMessagePageDetailsNextPageButtonDisabled}    //a[@class='next disabled']
${Retail_AccountMessagePageDetailsPreviousPageButtonDisabled}    //a[@class='previous disabled']

${Retail_AccountMessagePageNewMessageButton}    //dpp-message-list//button[@type='button']

${Retail_AccountMessagePageNewMessagePopUpContainer}    //div[@class='cx-dialog-body modal-body']
${Retail_AccountMessagePageNewMessagePopUpToSupplierLabel}    //div[@class='col-sm-12 header']//span[@class='message-subject mb-1']
${Retail_AccountMessagePageNewMessagePopUpSubjectLabel}    //div[@class='col-sm-12']//span[contains(text(),'Subject')]
${Retail_AccountMessagePageNewMessagePopUpMessageLabel}    //div[@class='col-sm-12']//span[contains(text(),'Message')]
${Retail_AccountMessagePageNewMessagePopUpUploadLabel}     //div[@class='col-sm-12']//p

${Retail_AccountMessagePageNewMessagePopUpToSupplierTextBox}    //div[@class='col-sm-12 header']//input[@type='text']
${Retail_AccountMessagePageNewMessagePopUpSubjectTextBox}    //div[@class='col-sm-12']//input[@type='text']
${Retail_AccountMessagePageNewMessagePopUpMessageTextBox}    //div[@class='col-sm-12']//textarea[@formcontrolname='message']

${Retail_AccountMessagePageNewMessagePopUpUploadedImageContainer}    //div[@class='d-flex']|//div[@class='images-container']
${Retail_AccountMessagePageNewMessagePopUpUploadButton}    //button[@class='btn image-upload']
${Retail_AccountMessagePageNewMessagePopUpUploadImage}    //input[@type='file']

${Retail_AccountMessagePageNewMessagePopUpCancelButton}    //button[@class='btn btn-sm btn-outline-secondary']
${Retail_AccountMessagePageNewMessagePopUpSendButton}    //button[@class='btn btn-sm btn-secondary ml-2']

${Retail_AccountMessagePageNewMessagePopUpBackButton}    //button[@class='btn btn-secondary']

${Retail_AccountMessagePageNewMessagePopUpSubjectTextBox_Value}    Test New Message

#-----------------------------------------------------Retail Account Message Page Read General Enquiry
${Retail_AccountMessagePageReadMessagesGenEnqContainer}    (//div[@class='row message-container'][.//span[contains(text(),'GENERAL ENQUIRY')]])[1]
${Retail_AccountMessagePageReadMessagesGenEnqTitle}    (//div[@class='row message-container'][.//span[contains(text(),'GENERAL ENQUIRY')]]//span[@class='type message-table-text'])[1]
${Retail_AccountMessagePageReadMessagesGenEnqTicketNumber}    (//div[@class='row message-container'][.//span[contains(text(),'GENERAL ENQUIRY')]]//span[@class='ticket-no'])[1]
${Retail_AccountMessagePageReadMessagesGenEnqFrom/To}    (//div[@class='row message-container'][.//span[contains(text(),'GENERAL ENQUIRY')]]//div[@class='message-from-text message-table-text subject-col col-4'])[1]
${Retail_AccountMessagePageReadMessagesGenEnqMessage}    (//div[@class='row message-container'][.//span[contains(text(),'GENERAL ENQUIRY')]]//span[@class='message-text-ellipsis'])[1]
${Retail_AccountMessagePageReadMessagesGenEnqDate}    (//div[@class='row message-container'][.//span[contains(text(),'GENERAL ENQUIRY')]]//div[@class='col-2 message-table-text'])[1]

#-----------------------------------------------------Retail Account Message Page Read Return Enquiry
${Retail_AccountMessagePageReadMessagesRetEnqContainer}    (//div[@class='row message-container'][.//span[contains(text(),'RETURN ENQUIRY')]])[1]
${Retail_AccountMessagePageReadMessagesRetEnqTitle}    (//div[@class='row message-container'][.//span[contains(text(),'RETURN ENQUIRY')]]//span[@class='type message-table-text'])[1]
${Retail_AccountMessagePageReadMessagesRetEnqTicketNumber}    (//div[@class='row message-container'][.//span[contains(text(),'RETURN ENQUIRY')]]//span[@class='ticket-no'])[1]
${Retail_AccountMessagePageReadMessagesRetEnqFrom/To}    (//div[@class='row message-container'][.//span[contains(text(),'RETURN ENQUIRY')]]//div[@class='message-from-text message-table-text subject-col col-4'])[1]
${Retail_AccountMessagePageReadMessagesRetEnqMessage}    (//div[@class='row message-container'][.//span[contains(text(),'RETURN ENQUIRY')]]//span[@class='message-text-ellipsis'])[1]
${Retail_AccountMessagePageReadMessagesRetEnqDate}    (//div[@class='row message-container'][.//span[contains(text(),'RETURN ENQUIRY')]]//div[@class='col-2 message-table-text'])[1]

#-----------------------------------------------------Retail Account Message Page Read Order Enquiry
${Retail_AccountMessagePageReadMessagesOrdEnqContainer}    (//div[@class='row message-container'][.//span[contains(text(),'ORDER ENQUIRY')]])[1]
${Retail_AccountMessagePageReadMessagesOrdEnqTitle}    (//div[@class='row message-container'][.//span[contains(text(),'ORDER ENQUIRY')]]//span[@class='type message-table-text'])[1]
${Retail_AccountMessagePageReadMessagesOrdEnqTicketNumber}    (//div[@class='row message-container'][.//span[contains(text(),'ORDER ENQUIRY')]]//span[@class='ticket-no'])[1]
${Retail_AccountMessagePageReadMessagesOrdEnqFrom/To}    (//div[@class='row message-container'][.//span[contains(text(),'ORDER ENQUIRY')]]//div[@class='message-from-text message-table-text subject-col col-4'])[1]
${Retail_AccountMessagePageReadMessagesOrdEnqMessage}    (//div[@class='row message-container'][.//span[contains(text(),'ORDER ENQUIRY')]]//span[@class='message-text-ellipsis'])[1]
${Retail_AccountMessagePageReadMessagesOrdEnqDate}    (//div[@class='row message-container'][.//span[contains(text(),'ORDER ENQUIRY')]]//div[@class='col-2 message-table-text'])[1]

#-----------------------------------------------------Retail Account Message Page Read Product Enquiry
${Retail_AccountMessagePageReadMessagesProdEnqContainer}    (//div[@class='row message-container'][.//span[contains(text(),'PRODUCT ENQUIRY')]])[1]
${Retail_AccountMessagePageReadMessagesProdEnqTitle}    (//div[@class='row message-container'][.//span[contains(text(),'PRODUCT ENQUIRY')]]//span[@class='type message-table-text'])[1]
${Retail_AccountMessagePageReadMessagesProdEnqTicketNumber}    (//div[@class='row message-container'][.//span[contains(text(),'PRODUCT ENQUIRY')]]//span[@class='ticket-no'])[1]
${Retail_AccountMessagePageReadMessagesProdEnqFrom/To}    (//div[@class='row message-container'][.//span[contains(text(),'PRODUCT ENQUIRY')]]//div[@class='message-from-text message-table-text subject-col col-4'])[1]
${Retail_AccountMessagePageReadMessagesProdEnqMessage}    (//div[@class='row message-container'][.//span[contains(text(),'PRODUCT ENQUIRY')]]//span[@class='message-text-ellipsis'])[1]
${Retail_AccountMessagePageReadMessagesProdEnqDate}    (//div[@class='row message-container'][.//span[contains(text(),'PRODUCT ENQUIRY')]]//div[@class='col-2 message-table-text'])[1]

#-----------------------------------------------------Retail Account Message Page Unread General Enquiry
${Retail_AccountMessagePageUnreadMessagesGenEnqContainer}    (//div[@class='row message-container not-read'][.//span[contains(text(),'GENERAL ENQUIRY')]])[1]
${Retail_AccountMessagePageUnreadMessagesGenEnqTitle}    (//div[@class='row message-container not-read'][.//span[contains(text(),'GENERAL ENQUIRY')]]//span[@class='type message-table-text'])[1]
${Retail_AccountMessagePageUnreadMessagesGenEnqTicketNumber}    (//div[@class='row message-container not-read'][.//span[contains(text(),'GENERAL ENQUIRY')]]//span[@class='ticket-no'])[1]
${Retail_AccountMessagePageUnreadMessagesGenEnqFrom/To}    (//div[@class='row message-container not-read'][.//span[contains(text(),'GENERAL ENQUIRY')]]//div[@class='message-from-text message-table-text subject-col col-4'])[1]
${Retail_AccountMessagePageUnreadMessagesGenEnqMessage}    (//div[@class='row message-container not-read'][.//span[contains(text(),'GENERAL ENQUIRY')]]//span[@class='message-text-ellipsis'])[1]
${Retail_AccountMessagePageUnreadMessagesGenEnqDate}    (//div[@class='row message-container not-read'][.//span[contains(text(),'GENERAL ENQUIRY')]]//div[@class='col-2 message-table-text'])[1]

#-----------------------------------------------------Retail Account Message Page Unread Return Enquiry
${Retail_AccountMessagePageUnreadMessagesRetEnqContainer}    (//div[@class='row message-container not-read'][.//span[contains(text(),'RETURN ENQUIRY')]])[1]
${Retail_AccountMessagePageUnreadMessagesRetEnqTitle}    (//div[@class='row message-container not-read'][.//span[contains(text(),'RETURN ENQUIRY')]]//span[@class='type message-table-text'])[1]
${Retail_AccountMessagePageUnreadMessagesRetEnqTicketNumber}    (//div[@class='row message-container not-read'][.//span[contains(text(),'RETURN ENQUIRY')]]//span[@class='ticket-no'])[1]
${Retail_AccountMessagePageUnreadMessagesRetEnqFrom/To}    (//div[@class='row message-container not-read'][.//span[contains(text(),'RETURN ENQUIRY')]]//div[@class='message-from-text message-table-text subject-col col-4'])[1]
${Retail_AccountMessagePageUnreadMessagesRetEnqMessage}    (//div[@class='row message-container not-read'][.//span[contains(text(),'RETURN ENQUIRY')]]//span[@class='message-text-ellipsis'])[1]
${Retail_AccountMessagePageUnreadMessagesRetEnqDate}    (//div[@class='row message-container not-read'][.//span[contains(text(),'RETURN ENQUIRY')]]//div[@class='col-2 message-table-text'])[1]

#-----------------------------------------------------Retail Account Message Page Unread Order Enquiry
${Retail_AccountMessagePageUnreadMessagesOrdEnqContainer}    (//div[@class='row message-container not-read'][.//span[contains(text(),'ORDER ENQUIRY')]])[1]
${Retail_AccountMessagePageUnreadMessagesOrdEnqTitle}    (//div[@class='row message-container not-read'][.//span[contains(text(),'ORDER ENQUIRY')]]//span[@class='type message-table-text'])[1]
${Retail_AccountMessagePageUnreadMessagesOrdEnqTicketNumber}    (//div[@class='row message-container not-read'][.//span[contains(text(),'ORDER ENQUIRY')]]//span[@class='ticket-no'])[1]
${Retail_AccountMessagePageUnreadMessagesOrdEnqFrom/To}    (//div[@class='row message-container not-read'][.//span[contains(text(),'ORDER ENQUIRY')]]//div[@class='message-from-text message-table-text subject-col col-4'])[1]
${Retail_AccountMessagePageUnreadMessagesOrdEnqMessage}    (//div[@class='row message-container not-read'][.//span[contains(text(),'ORDER ENQUIRY')]]//span[@class='message-text-ellipsis'])[1]
${Retail_AccountMessagePageUnreadMessagesOrdEnqDate}    (//div[@class='row message-container not-read'][.//span[contains(text(),'ORDER ENQUIRY')]]//div[@class='col-2 message-table-text'])[1]

#-----------------------------------------------------Retail Account Message Page Unread Product Enquiry
${Retail_AccountMessagePageUnreadMessagesProdEnqContainer}    (//div[@class='row message-container not-read'][.//span[contains(text(),'PRODUCT ENQUIRY')]])[1]
${Retail_AccountMessagePageUnreadMessagesProdEnqTitle}    (//div[@class='row message-container not-read'][.//span[contains(text(),'PRODUCT ENQUIRY')]]//span[@class='type message-table-text'])[1]
${Retail_AccountMessagePageUnreadMessagesProdEnqTicketNumber}    (//div[@class='row message-container not-read'][.//span[contains(text(),'PRODUCT ENQUIRY')]]//span[@class='ticket-no'])[1]
${Retail_AccountMessagePageUnreadMessagesProdEnqFrom/To}    (//div[@class='row message-container not-read'][.//span[contains(text(),'PRODUCT ENQUIRY')]]//div[@class='message-from-text message-table-text subject-col col-4'])[1]
${Retail_AccountMessagePageUnreadMessagesProdEnqMessage}    (//div[@class='row message-container not-read'][.//span[contains(text(),'PRODUCT ENQUIRY')]]//span[@class='message-text-ellipsis'])[1]
${Retail_AccountMessagePageUnreadMessagesProdEnqDate}    (//div[@class='row message-container not-read'][.//span[contains(text(),'PRODUCT ENQUIRY')]]//div[@class='col-2 message-table-text'])[1]


${Retail_AccountMessagePageNoMessage}    //dpp-message-list[contains(text(),'No messages found.')]


#-----------------------------------------------------Retail Account Message Details Page-------------------------------
${Retail_AccountMessageDetailsPagePanelHeader}    //div[@class='row pb-3 col-12']
${Retail_AccountMessageDetailsPageBackButton}    //a[@class='back-to-messages']
${Retail_AccountMessageDetailsPageMessageTitle}    //div[@class='p-lg-3 chat-title']
${Retail_AccountMessageDetailsPageMessageBody}    //div[@class='chat-conversation-list p-3 p-lg-4']
${Retail_AccountMessageDetailsPageReplyBody}    //div[@class='p-3 mt-3 messaging-area']
${Retail_AccountMessageDetailsPageReplyTextBox}    //textarea[@formcontrolname='message']
${Retail_AccountMessageDetailsPageUploadImageContainer}    //div[@class='d-flex']|//div[@class='images-container']
${Retail_AccountMessageDetailsPageUploadImageButton}    //button[@class='btn image-upload']
${Retail_AccountMessageDetailsPageUploadImage}    //input[@type='file']
${Retail_AccountMessageDetailsPageCancelButton}    //button[@type='button'][contains(text(),'Cancel')]
${Retail_AccountMessageDetailsPageSendButton}    //button[@type='submit']

${Retail_AccountMessageDetailsPageMessageContentList}    //div[@class='chat-conversation-list p-3 p-lg-4']//div[@class='col-lg-12']
${Retail_AccountMessageDetailsPageMessageContentListValue}    (//div[@class='chat-conversation-list p-3 p-lg-4']//div[@class='col-lg-12'])[1]
${Retail_AccountMessageDetailsPageMessageContentListTimeStampValue}    (//div[@class='col-lg-12']//div[@class='time-stamp'])[1]
${Retail_AccountMessageDetailsPageMessageContentListReplyValue}    (//div[@class='col-lg-12']//div[contains(@class,'chat-text-wrap-content')])[1]

#-----------------------------------------------------Retail Account Message Details Page Values
${Retail_AccountMessageDetailsPageMessageValue}    Hello World QE Test

#-----------------------------------------------------Retail Account Account Detais Page--------------------------------
${Retail_AccountProfileAccountsDetailsPanelContainer}    //dpp-account-details[@class='user-form']
${Retail_AccountProfileAccountsDetailsPanelHeader}    //dpp-account-details[@class='user-form']//h2[contains(text(),'Account Details') or contains(text(),'帳戶資料')]

${Retail_AccountProfileAccountsDetailsFirstNameLabel}    //dpp-account-details[@class='user-form']//span[@class='label-content' and contains(text(),'First Name')]
${Retail_AccountProfileAccountsDetailsLastNameLabel}    //dpp-account-details[@class='user-form']//span[@class='label-content' and contains(text(),'Last Name')]
${Retail_AccountProfileAccountsDetailsEmailLabel}    //dpp-account-details[@class='user-form']//span[@class='label-content' and contains(text(),'Email')]
${Retail_AccountProfileAccountsDetailsPhoneLabel}     //dpp-account-details[@class='user-form']//span[@class='label-content' and (contains(text(),'Phone') or contains(text(),'電話號碼*'))]
${Retail_AccountProfileAccountsDetailsLandlineLabel}    //dpp-account-details[@class='user-form']//span[@class='label-content' and (contains(text(),'Landline') or contains(text(),'住宅電話號碼 (選填)'))]

${Retail_AccountProfileAccountsDetailsFirstNameTextBox}    //dpp-account-details[@class='user-form']//input[@formcontrolname='firstName']
${Retail_AccountProfileAccountsDetailsLastNameTextBox}    //dpp-account-details[@class='user-form']//input[@formcontrolname='lastName']
${Retail_AccountProfileAccountsDetailsEmailTextBox}    //dpp-account-details[@class='user-form']//input[@formcontrolname='email']
${Retail_AccountProfileAccountsDetailsPhoneTextBox}    //dpp-account-details[@class='user-form']//input[@formcontrolname='contactNumber']|//dpp-account-details[@class='user-form']//span[@class='label-content' and (contains(text(),'Phone') or contains(text(),'電話號碼*'))]/following-sibling::dpp-input-contact-number//input
${Retail_AccountProfileAccountsDetailsLandlineTextBox}    //dpp-account-details[@class='user-form']//input[@formcontrolname='landlineNumber']|//dpp-account-details[@class='user-form']//span[@class='label-content' and (contains(text(),'Landline') or contains(text(),'住宅電話號碼 (選填)'))]/following-sibling::dpp-input-contact-number//input

${Retail_AccountProfileAccountsDetailsCancelButton}    //dpp-account-details[@class='user-form']//button[@type='button']
${Retail_AccountProfileAccountsDetailsUpdateButton}    //dpp-account-details[@class='user-form']//button[@type='submit']

${Retail_AccountProfileAccountsDetailsPhoneError}    //div[@class='form-errors']//p[contains(text(),'Enter a valid Phone Number')]
${Retail_AccountProfileAccountsDetailsLandlineError}    //div[@class='form-errors']//p[contains(text(),'Landline Number must begin with a 0 followed by 9 digits')]

${Retail_AccountProfileAccountsDetailsConfirmationContainer}    //div[@class='cx-dialog-body modal-body']
${Retail_AccountProfileAccountsDetailsConfirmationYesButton}    //div[@class='cx-dialog-body modal-body']//button[@class='btn btn-secondary btn-block']
${Retail_AccountProfileAccountsDetailsConfirmationNoButton}    //div[@class='cx-dialog-body modal-body']//button[@class='btn btn-block btn-outline-secondary']

${Retail_AccountProfileAccountsDetailsFirstNameValue}    Test FN
${Retail_AccountProfileAccountsDetailsLastNameValue}    Test LN
${Retail_AccountProfileAccountsDetailsPhoneValue}    0412333444
${Retail_AccountProfileAccountsDetailsLandlineValue}    0421333444

${Retail_HK_AccountProfileAccountsDetails_Phone_Value}    12345678
${Retail_HK_AccountProfileAccountsDetails_Landline_Value}    87654321

${Retail_AccountProfileAccountsDetailsPhoneInvalidValue}    0412333aaa
${Retail_AccountProfileAccountsDetailsLandlineInvalidValue}    0421333aaa

#-----------------------------------------------------Retail Account Change Password Page-------------------------------
${Retail_AccountProfileChangePassPanelContainer}    //dpp-update-password[@class='user-form']
${Retail_AccountProfileChangePassPanelHeader}    //dpp-update-password[@class='user-form']//h2[contains(text(),'Change Password') or contains(text(),'更改密碼')]

${Retail_AccountProfileChangePassCurrentPassLabel}    //dpp-update-password//span[contains(text(),'Current Password')]
${Retail_AccountProfileChangePassNewPassLabel}    //dpp-update-password//span[@class='label-content' and contains(text(),'New Password')]
${Retail_AccountProfileChangePassConfirmPassLabel}    //dpp-update-password//span[@class='label-content' and contains(text(),'Confirm Password')]

${Retail_AccountProfileChangePassCurrentPassTextBox}    //dpp-update-password//input[@formcontrolname='oldPassword']
${Retail_AccountProfileChangePassNewPassTextBox}    //dpp-update-password//input[@formcontrolname='newPassword']
${Retail_AccountProfileChangePassConfirmPassTextBox}    //dpp-update-password//input[@formcontrolname='newPasswordConfirm']

${Retail_AccountProfileChangePassNewPassEyeButtonOff}    //input[@formcontrolname='newPassword']/preceding-sibling::cx-icon[@class='eye cx-icon dpp-icons__eye-off']
${Retail_AccountProfileChangePassConfirmPassEyeButtonOff}    //input[@formcontrolname='newPasswordConfirm']/preceding-sibling::cx-icon[@class='eye cx-icon dpp-icons__eye-off']

${Retail_AccountProfileChangePassNewPassEyeButtonOn}    //input[@formcontrolname='newPassword']/preceding-sibling::cx-icon[@class='eye cx-icon dpp-icons__eye-on']
${Retail_AccountProfileChangePassConfirmPassEyeButtonOn}    //input[@formcontrolname='newPasswordConfirm']/preceding-sibling::cx-icon[@class='eye cx-icon dpp-icons__eye-on']

${Retail_AccountProfileChangePassCancelButton}    //dpp-update-password//button[@type='reset']
${Retail_AccountProfileChangePassUpdateButton}    //dpp-update-password//button[@class='btn btn-secondary']

${Retail_AccountProfileChangePassCurrentPassRequiredError}    //div[@class='form-errors']//p[contains(text(),'Current password is required.')]
${Retail_AccountProfileChangePassNewPassRequiredError}    //div[@class='form-errors']//p[contains(text(),'New password is required.')]
${Retail_AccountProfileChangePassConfirmPassRequiredError}    //div[@class='form-errors']//p[contains(text(),'Confirm password is required.')]

${Retail_AccountProfileChangePassNewPassNotMatchError}    //div[@class='form-errors']//p[contains(text(),'Password do not match the password rule description.')]
${Retail_AccountProfileChangePassConfirmPassNotMatchError}    //div[@class='form-errors']//p[contains(text(),'Your passwords do not match')]

${Retail_AccountProfileChangePassConfirmationContainer}    //div[@class='cx-dialog-body modal-body pt-5']
${Retail_AccountProfileChangePassConfirmationYesButton}    //button[@class='btn btn-block btn-secondary']
${Retail_AccountProfileChangePassConfirmationNoButton}    //button[@class='btn btn-block btn-outline-secondary']


${Retail_AccountProfileChangePassNewPassValue}    HelloWorld1!
${Retail_AccountProfileChangePassConfirmPassValue}    HelloWorld1!

${Retail_AccountProfileChangePassNewPassInvalidValue}    Test1
${Retail_AccountProfileChangePassConfirmPassInvalidValue}    Test

#-----------------------------------------------------Retail Account Company Details Page-------------------------------
${Retail_AccountCompanyDetailsPagePanelContainer}    //dpp-company-details|//dpp-hk-company-details|//dpp-toyota-company-details
${Retail_AccountCompanyDetailsPagePanelHeader}    //dpp-company-details//h2|//dpp-hk-company-details//h2[contains(text(),'Company Details') or contains(text(),'公司詳情')]|//dpp-toyota-company-details//h2[contains(text(),'Company Details') or contains(text(),'公司詳情')]

#-----------------------------------------------------Retail Account Company Details Page Labels
${Retail_AccountCompanyDetailsPagePrefSupplierLabel}    //dpp-company-details//span[@class='label-content' and contains(text(),'Preferred Supplier')]
${Retail_AccountCompanyDetailsPageAccNumLabel}    //span[@class='label-content' and contains(text(),'Account Number')]|//span[@class='label-content' and contains(text(),'Membership Number')]
${Retail_AccountCompanyDetailsPageCompanyNameLabel}    //span[@class='label-content' and contains(text(),'Company Name')]
${Retail_AccountCompanyDetailsPageTradingNameLabel}    //dpp-company-details//span[@class='label-content' and contains(text(),'Trading Name')]
${Retail_AccountCompanyDetailsPagePostalAddressLabel}    //span[@class='label-content' and contains(text(),'Postal Address')]
${Retail_AccountCompanyDetailsPagePostalAddressAddLine1Label}    //dpp-company-details//span[@class='label-content color-grey' and contains(text(),'Address Line 1')]
${Retail_AccountCompanyDetailsPagePostalAddressAddLine2Label}    //span[@class='label-content color-grey' and contains(text(),'Address Line 2')]
${Retail_AccountCompanyDetailsPagePostalAddressSuburbLabel}    //dpp-company-details//div[@formgroupname='postalAddress']//span[@class='label-content' and contains(text(),'Suburb')]
${Retail_AccountCompanyDetailsPagePostalAddressPostalCodeLabel}    //dpp-company-details//div[@formgroupname='postalAddress']//span[@class='label-content' and contains(text(),'Postal Code')]
${Retail_AccountCompanyDetailsPagePostalAddressStateLabel}    //dpp-company-details//div[@formgroupname='postalAddress']//span[@class='label-content' and contains(text(),'State')]|//dpp-company-details//div[@formgroupname='postalAddress']//span[@class='label-content' and contains(text(),'District')]
${Retail_AccountCompanyDetailsPageDelSameAsPostalLabel}    //span[@class='label-content checkbox-content']
${Retail_AccountCompanyDetailsPageDelAddressLabel}    //span[@class='label-content' and contains(text(),'Delivery Address')]
${Retail_AccountCompanyDetailsPageDelAddressAddLine1Label}    //dpp-company-details//span[@class='label-content' and contains(text(),'Address Line 1')]
${Retail_AccountCompanyDetailsPageDelAddressAddLine2Label}    //span[@class='label-content' and contains(text(),'Address Line 2')]
${Retail_AccountCompanyDetailsPageDelAddressSuburbLabel}    //dpp-company-details//div[@formgroupname='deliveryAddress']//span[@class='label-content' and contains(text(),'Suburb')]
${Retail_AccountCompanyDetailsPageDelAddressPostalCodeLabel}    //dpp-company-details//div[@formgroupname='deliveryAddress']//span[@class='label-content' and contains(text(),'Postal Code')]
${Retail_AccountCompanyDetailsPageDelAddressStateLabel}    //dpp-company-details//div[@formgroupname='deliveryAddress']//span[@class='label-content' and contains(text(),'State')]|//dpp-company-details//div[@formgroupname='deliveryAddress']//span[@class='label-content' and contains(text(),'District')]
${Retail_AccountCompanyDetailsPageEmailAddLabel}    //span[@class='label-content' and contains(text(),'Email address')]
${Retail_AccountCompanyDetailsPageCompPhoneNumLabel}    //span[@class='label-content' and contains(text(),'Company Phone Number')]
${Retail_AccountCompanyDetailsPageContFNLabel}    //span[@class='label-content' and contains(text(),'Contact First Name')]
${Retail_AccountCompanyDetailsPageContLNLabel}    //span[@class='label-content' and contains(text(),'Contact Last Name')]
${Retail_AccountCompanyDetailsPageRadioABNLabel}    //dpp-company-details//label[@for='abn']
${Retail_AccountCompanyDetailsPageRadioACNLabel}    //dpp-company-details//label[@for='acn']
${Retail_AccountCompanyDetailsPageABNLabel}    //dpp-company-details//span[@class='label-content' and contains(text(),'ABN')]
${Retail_AccountCompanyDetailsPageOpeningLabel}    //span[@class='label-content' and contains(text(),'Opening Hours')]
${Retail_AccountCompanyDetailsPageClosingLabel}    //span[@class='label-content' and contains(text(),'Closing Hours')]

${Retail_HK_AccountCompanyDetailsPage_PostalAddress_Area_Label}    //div[@formgroupname='postalAddress']//span[@class='label-content' and contains(text(),'Area')]
${Retail_HK_AccountCompanyDetailsPage_PostalAddress_District_Label}    //div[@formgroupname='postalAddress']//span[@class='label-content' and contains(text(),'District')]
${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_Area_Label}    //div[@formgroupname='deliveryAddress']//span[@class='label-content' and contains(text(),'Area')]
${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_District_Label}    //div[@formgroupname='deliveryAddress']//span[@class='label-content' and contains(text(),'District')]

${Retail_HK_AccountCompanyDetailsPage_Landline_Label}    //span[@class='label-content' and contains(text(),'Landline Number')]

#-----------------------------------------------------Retail Account Company Details Page TextBox
${Retail_AccountCompanyDetailsPageAccNumTextBox}    //dpp-company-details//input[@formcontrolname='accountNumber']
${Retail_AccountCompanyDetailsPageCompanyNameTextBox}    //input[@formcontrolname='companyName']
${Retail_AccountCompanyDetailsPageTradingNameTextBox}    //dpp-company-details//input[@formcontrolname='tradingName']
${Retail_AccountCompanyDetailsPagePostalAddressAddLine1TextBox}    //dpp-company-details//div[@formgroupname='postalAddress']//input[@formcontrolname='addressLine1']
${Retail_AccountCompanyDetailsPagePostalAddressAddLine2TextBox}    //div[@formgroupname='postalAddress']//input[@formcontrolname='addressLine2']
${Retail_AccountCompanyDetailsPagePostalAddressSuburbTextBox}    //dpp-company-details//div[@formgroupname='postalAddress']//input[@formcontrolname='suburb']
${Retail_AccountCompanyDetailsPagePostalAddressPostalCodeTextBox}    //dpp-company-details//div[@formgroupname='postalAddress']//input[@formcontrolname='postalCode']
${Retail_AccountCompanyDetailsPageDelAddressAddLine1TextBox}    //dpp-company-details//div[@formgroupname='deliveryAddress']//input[@formcontrolname='addressLine1']
${Retail_AccountCompanyDetailsPageDelAddressAddLine2TextBox}    //div[@formgroupname='deliveryAddress']//input[@formcontrolname='addressLine2']
${Retail_AccountCompanyDetailsPageDelAddressSuburbTextBox}    //dpp-company-details//div[@formgroupname='deliveryAddress']//input[@formcontrolname='suburb']
${Retail_AccountCompanyDetailsPageDelAddressPostalCodeTextBox}    //dpp-company-details//div[@formgroupname='deliveryAddress']//input[@formcontrolname='postalCode']
${Retail_AccountCompanyDetailsPageEmailAddTextBox}    //input[@formcontrolname='email']
${Retail_AccountCompanyDetailsPageCompPhoneNumTextBox}    //dpp-company-details//input[@formcontrolname='telephone' or @formcontrolname='mobileNumber']
${Retail_AccountCompanyDetailsPageContFNTextBox}    //input[@formcontrolname='contactFirstName']
${Retail_AccountCompanyDetailsPageContLNTextBox}    //input[@formcontrolname='contactLastName']
${Retail_AccountCompanyDetailsPageABNTextBox}    //dpp-company-details//input[@formcontrolname='number']

${Retail_HK_AccountCompanyDetailsPage_MemberNumber_TextBox}    //input[@name='membershipNumber']
${Retail_HK_AccountCompanyDetailsPage_PostalAddress_TextBox}     //div[@formgroupname='postalAddress']//dpp-autocomplete-search//div[@role='combobox']//input
${Retail_HK_AccountCompanyDetailsPage_PostalAddress_TextBox_Clear_Button}    //div[@formgroupname='postalAddress']//dpp-autocomplete-search//span[@title='Clear all']
${Retail_HK_AccountCompanyDetailsPage_PostalAddress_Options_Container}    (//form//div[@formgroupname='postalAddress']//ng-dropdown-panel//div//div[@role='option'])
${Retail_HK_AccountCompanyDetailsPage_PostalAddress_Manual_Container}    //form//div[@formgroupname='postalAddress']//ng-dropdown-panel//div//div[@role='option']//p//parent::div
${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_TextBox}    //div[@formgroupname='deliveryAddress']//dpp-autocomplete-search//div[@role='combobox']//input
${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_TextBox_Clear_Button}    //div[@formgroupname='deliveryAddress']//dpp-autocomplete-search//span[@title='Clear all']
${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_Options_Container}    (//form//div[@formgroupname='deliveryAddress']//ng-dropdown-panel//div//div[@role='option'])
${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_Manual_Container}    //form//div[@formgroupname='deliveryAddress']//ng-dropdown-panel//div//div[@role='option']//p//parent::div


${Retail_HK_AccountCompanyDetailsPage_CompanyPhone_TextBox}    //span[@class='label-content' and contains(text(),'Company Phone Number')]/parent::label/following-sibling::dpp-input-contact-number//input
${Retail_HK_AccountCompanyDetailsPage_Landline_TextBox}    //span[@class='label-content' and contains(text(),'Landline Number')]/parent::label/following-sibling::dpp-input-contact-number//input

${Retail_HK_AccountCompanyDetailsPage_PostalAddress_TextBox_Value}

#-----------------------------------------------------Retail Account Company Details Page CheckBox
${Retail_AccountCompanyDetailsPageDelSameAsPostalCheckBox}    //input[@type='checkbox']

#-----------------------------------------------------Retail Account Company Details Page DropDownList
${Retail_AccountCompanyDetailsPagePreferredSupplierComboBox}    //dpp-company-details//ng-select[@formcontrolname='preferredSeller']//div[@class='ng-value-container']
${Retail_AccountCompanyDetailsPagePostalStateComboBox}    (//dpp-company-details//ng-select[@formcontrolname='region']//div[@class='ng-value-container'])[1]
${Retail_AccountCompanyDetailsPagePostalStateComboBoxArrow}    (//dpp-company-details//ng-select[@formcontrolname='region']//span[@class='ng-arrow-wrapper'])[1]

${Retail_AccountCompanyDetailsPageStateComboBoxACT}    //div[@class='ng-dropdown-panel-items scroll-host']//div[@role='option']//span[contains(text(),'ACT')]
${Retail_AccountCompanyDetailsPageStateComboBoxNSW}    //div[@class='ng-dropdown-panel-items scroll-host']//div[@role='option']//span[contains(text(),'NSW')]
${Retail_AccountCompanyDetailsPageStateComboBoxNT}    //div[@class='ng-dropdown-panel-items scroll-host']//div[@role='option']//span[contains(text(),'NT')]
${Retail_AccountCompanyDetailsPageStateComboBoxQLD}    //div[@class='ng-dropdown-panel-items scroll-host']//div[@role='option']//span[contains(text(),'QLD')]
${Retail_AccountCompanyDetailsPageStateComboBoxSA}    //div[@class='ng-dropdown-panel-items scroll-host']//div[@role='option']//span[contains(text(),'SA')]
${Retail_AccountCompanyDetailsPageStateComboBoxTAS}    //div[@class='ng-dropdown-panel-items scroll-host']//div[@role='option']//span[contains(text(),'TAS')]
${Retail_AccountCompanyDetailsPageStateComboBoxVIC}    //div[@class='ng-dropdown-panel-items scroll-host']//div[@role='option']//span[contains(text(),'VIC')]
${Retail_AccountCompanyDetailsPageStateComboBoxWA}    //div[@class='ng-dropdown-panel-items scroll-host']//div[@role='option']//span[contains(text(),'WA')]

${Retail_HK_AccountCompanyDetailsPageDistrictComboBoxHK}    //div[@class='ng-dropdown-panel-items scroll-host']//div[@role='option']//span[contains(text(),'HK')]
${Retail_HK_AccountCompanyDetailsPageDistrictComboBoxKLN}    //div[@class='ng-dropdown-panel-items scroll-host']//div[@role='option']//span[contains(text(),'KLN')]
${Retail_HK_AccountCompanyDetailsPageDistrictComboBoxNT}    //div[@class='ng-dropdown-panel-items scroll-host']//div[@role='option']//span[contains(text(),'NT')]


${Retail_AccountCompanyDetailsPageDelStateComboBox}    (//dpp-company-details//ng-select[@formcontrolname='region']//div[@class='ng-value-container'])[2]
${Retail_AccountCompanyDetailsPageDelStateComboBoxArrow}    (//dpp-company-details//ng-select[@formcontrolname='region']//span[@class='ng-arrow-wrapper'])[2]

${Retail_AccountCompanyDetailsPageOpeningHoursComboBox}    //ng-select[@formcontrolname='openingHours']//div[@class='ng-select-container ng-has-value' or @class='ng-select-container']
${Retail_AccountCompanyDetailsPageClosingHoursComboBox}    //ng-select[@formcontrolname='closingHours']//div[@class='ng-select-container ng-has-value' or @class='ng-select-container']

${Retail_AccountCompanyDetailsPageOpeningHoursComboBoxValue}    (//ng-select[@formcontrolname='openingHours']//ng-dropdown-panel//div[@role='option'])[1]    #1-13 from 7AM to 7PM per hour values
${Retail_AccountCompanyDetailsPageClosingHoursComboBoxValue}    (//ng-select[@formcontrolname='closingHours']//ng-dropdown-panel//div[@role='option'])[10]    #1-13 from 7AM to 7PM per hour values

${Retail_HK_AccountCompanyDetailsPage_Postal_Area_ComboBox}    (//div[@formgroupname='postalAddress']//span[@class='label-container' and contains(text(),'Area')]/following-sibling::ng-select//div[@class='ng-value-container'])
${Retail_HK_AccountCompanyDetailsPage_Postal_Area_ComboBox_Container}    (//form//div[@formgroupname='postalAddress']//ng-select[@formcontrolname='area']//ng-dropdown-panel//div//div[@role='option'])
${Retail_HK_AccountCompanyDetailsPage_Postal_District_ComboBox}    (//div[@formgroupname='postalAddress']//span[@class='label-container' and contains(text(),'District')]/following-sibling::ng-select//div[@class='ng-value-container'])
${Retail_HK_AccountCompanyDetailsPage_Postal_District_ComboBox_Container}    (//form//div[@formgroupname='postalAddress']//ng-select[@formcontrolname='district']//ng-dropdown-panel//div//div[@role='option'])
${Retail_HK_AccountCompanyDetailsPage_Postal_Area_ComboBox_Value}    (//div[@formgroupname='postalAddress']//span[@class='label-container' and contains(text(),'Area')]/following-sibling::ng-select//div[@class='ng-value-container']/parent::div/following-sibling::ng-dropdown-panel//span)
${Retail_HK_AccountCompanyDetailsPage_Postal_District_ComboBox_value}    (//div[@formgroupname='postalAddress']//span[@class='label-container' and contains(text(),'District')]/following-sibling::ng-select//div[@class='ng-value-container']/parent::div/following-sibling::ng-dropdown-panel//span)

${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_Area_ComboBox}    (//div[@formgroupname='deliveryAddress']//span[@class='label-container' and contains(text(),'Area')]//following-sibling::ng-select//div[@class='ng-value-container'])
${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_Area_ComboBox_Container}    (//form//div[@formgroupname='deliveryAddress']//ng-select[@formcontrolname='area']//ng-dropdown-panel//div//div[@role='option'])
${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_District_ComboBox}    (//div[@formgroupname='deliveryAddress']//span[@class='label-container' and contains(text(),'District')]/parent::label//following-sibling::ng-select//div[@class='ng-value-container'])
${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_District_ComboBox_Container}    (//form//div[@formgroupname='deliveryAddress']//ng-select[@formcontrolname='district']//ng-dropdown-panel//div//div[@role='option'])

${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_Area_ComboBox_Value}    (//div[@formgroupname='deliveryAddress']//span[@class='label-container' and contains(text(),'Area')]/following-sibling::ng-select//div[@class='ng-value-container']/parent::div//following-sibling::ng-dropdown-panel//span)
${Retail_HK_AccountCompanyDetailsPage_DeliveryAddress_District_ComboBox_value}    (//div[@formgroupname='deliveryAddress']//span[@class='label-container' and contains(text(),'District')]/parent::label//following-sibling::ng-select//div[@class='ng-value-container']/parent::div/following-sibling::ng-dropdown-panel//span)



#-----------------------------------------------------Retail Account Company Details Page RadioButton
${Retail_AccountCompanyDetailsPageRadioABNRadioButton}    (//dpp-company-details//input[@type='radio'])[1]
${Retail_AccountCompanyDetailsPageRadioACNRadioButton}    (//dpp-company-details//input[@type='radio'])[2]

#-----------------------------------------------------Retail Account Company Details Page Buttons
${Retail_AccountCompanyDetailsPageCancelButton}    //div[@class='mt-3']//button[@type='button']|//div[@class='company-btn-container']//button[@class='btn btn-outline-secondary']
${Retail_AccountCompanyDetailsPageSubmitButton}    //dpp-company-details//div[@class='mt-3']//button[@type='submit']|//div[@class='company-btn-container']//button[@class='btn btn-secondary form-btn']

${Retail_AccountCompanyDetailsPageConfirmationContainer}    //div[@class='cx-modal-content']
${Retail_AccountCompanyDetailsPagesConfirmationYesButton}    //button[@class='btn btn-secondary btn-block']
${Retail_AccountCompanyDetailsPageConfirmationNoButton}    //button[@class='btn btn-block btn-outline-secondary']

#-----------------------------------------------------Retail Account Company Details Page Error Messages
${Retail_AccountCompanyDetailsPageCompanyNameErrorMessage}    //div[@class='form-errors']//p[contains(text(),'Please enter a valid Company Name')]
${Retail_AccountCompanyDetailsPagePostalAddressAddLine1ErrorMessage}    //div[@formgroupname='postalAddress']//div[@class='form-errors']//p[contains(text(),'Please enter Address Line 1')]
${Retail_AccountCompanyDetailsPagePostalAddressSuburbErrorMessage}    //div[@formgroupname='postalAddress']//div[@class='form-errors']//p[contains(text(),'Please enter a valid Suburb')]
${Retail_AccountCompanyDetailsPagePostalAddressPostalCodeErrorMessage}    //div[@formgroupname='postalAddress']//div[@class='form-errors']//p[contains(text(),'Please enter a valid Post Code')]
${Retail_AccountCompanyDetailsPageDelAddressAddLine1ErrorMessage}    //div[@formgroupname='deliveryAddress']//div[@class='form-errors']//p[contains(text(),' Please enter Address Line 1')]
${Retail_AccountCompanyDetailsPageDelAddressSuburbErrorMessage}    //div[@formgroupname='deliveryAddress']//div[@class='form-errors']//p[contains(text(),'Please enter a valid Suburb')]
${Retail_AccountCompanyDetailsPageDelAddressPostalCodeErrorMessage}    //div[@formgroupname='deliveryAddress']//div[@class='form-errors']//p[contains(text(),'Please enter a valid Post Code')]
${Retail_AccountCompanyDetailsPageCompPhoneNumErrorMessage}    //div[@class='form-errors']//p[contains(text(),'Enter a valid Company Phone Number')]
${Retail_AccountCompanyDetailsPageContFNErrorMessage}    //div[@class='form-errors']//p[contains(text(),'Please enter a valid Contact First Name')]
${Retail_AccountCompanyDetailsPageContLNErrorMessage}     //div[@class='form-errors']//p[contains(text(),'Please enter a valid Contact Last Name')]

#-----------------------------------------------------Retail Account Company Details Page Text Values
${Retail_AccountCompanyDetailsPageAccountNumberTextBoxValidText}    654321987
${Retail_AccountCompanyDetailsPageCompanyNameTextBoxValidText}    Test Company Name
${Retail_AccountCompanyDetailsPageTradingNameTextBoxValidText}    Test Trading Name
${Retail_AccountCompanyDetailsPagePostalAddressAddLine1ValidText}    Test Postal Address Line 1
${Retail_AccountCompanyDetailsPagePostalAddressAddLine2ValidText}    Test Postal Address Line 2
${Retail_AccountCompanyDetailsPagePostalAddressSuburbValidText}    Test Postal Suburb
${Retail_AccountCompanyDetailsPagePostalAddressPostalCodeValidText}    8585
${Retail_AccountCompanyDetailsPageDelAddressAddLine1ValidText}    Test Delivery Address Line 1
${Retail_AccountCompanyDetailsPageDelAddressAddLine2ValidText}    Test Delivery Address Line 2
${Retail_AccountCompanyDetailsPageDelAddressSuburbValidText}    Test Delivery Suburb
${Retail_AccountCompanyDetailsPageDelAddressPostalCodeValidText}    8585
${Retail_AccountCompanyDetailsPageEmailAddValidText}    emailtest@yopmail.com
${Retail_AccountCompanyDetailsPageCompPhoneNumValidText}    0432165498
${Retail_AccountCompanyDetailsPageContFNValidText}    Test First Name
${Retail_AccountCompanyDetailsPageContLNValidText}    Test Last Name

${Retail_HK_AccountCompanyDetailsPage_CompPhoneNumber_Valid_Text}    12345678
${Retail_HK_AccountCompanyDetailsPage_LandlineNumber_Valid_Text}    87654321

${Retail_AccountCompanyDetailsPagePostalStateValue}    ${Retail_AccountCompanyDetailsPageStateComboBoxACT}
${Retail_AccountCompanyDetailsPageDelStateValue}    ${Retail_AccountCompanyDetailsPageStateComboBoxQLD}

${Retail_HK_AccountCompanyDetailsPagePostalDistrictValue}    ${Retail_HK_AccountCompanyDetailsPageDistrictComboBoxHK}
${Retail_HK_AccountCompanyDetailsPageDelDistrictValue}    ${Retail_HK_AccountCompanyDetailsPageDistrictComboBoxHK}

#-----------------------------------------------------Retail Account Staff Page-----------------------------------------
${Retail_AccountStaffPagePanelContainer}    //dpp-company-staff
${Retail_AccountStaffPagePanelHeader}    //dpp-company-staff//h3|//dpp-company-staff//*[@class='heading']

#-----------------------------------------------------Retail Account Staff Page Labels
${Retail_AccountStaffPageFirstNameLabel}    (//span[@class='label-content' and contains(text(),'First Name')])[1]
${Retail_AccountStaffPageLastNameLabel}    (//span[@class='label-content' and contains(text(),'Last Name')])[1]
${Retail_AccountStaffPageEmailLabel}    (//span[@class='label-content' and contains(text(),'Email ID')])[1]
${Retail_AccountStaffPagePhoneNumLabel}    (//span[@class='label-content' and contains(text(),'Phone Number')])[1]
${Retail_AccountStaffPageActiveLabel}    (//span[@class='label-content' and contains(text(),'Active')])[1]

#-----------------------------------------------------Retail Account Staff Page TextBox
${Retail_AccountStaffPageFirstNameAddTextBox}    (//input[@formcontrolname='firstName'])[1]
${Retail_AccountStaffPageLastNameAddTextBox}    (//input[@formcontrolname='lastName'])[1]
${Retail_AccountStaffPageEmailAddTextBox}    (//input[@formcontrolname='email'])[1]
${Retail_AccountStaffPagePhoneNumAddTextBox}    (//input[@formcontrolname='phoneNumber'])[1]

${Retail_HK_AccountStaffPage_PhoneNum_Add_TextBox}    //div[@class='input-contact-number container']//input[1]

${Retail_AccountStaffPageFirstNameTextBox}    (//input[@formcontrolname='firstName'])[${Retail_AccountStaffPageIndexValue}]
${Retail_AccountStaffPageLastNameTextBox}    (//input[@formcontrolname='lastName'])[${Retail_AccountStaffPageIndexValue}]
${Retail_AccountStaffPageEmailTextBox}    (//input[@formcontrolname='email'])[${Retail_AccountStaffPageIndexValue}]
${Retail_AccountStaffPagePhoneNumTextBox}    (//input[@formcontrolname='phoneNumber'])[${Retail_AccountStaffPageIndexValue}]|(//dpp-input-contact-number//input[@type='text'])[${Retail_AccountStaffPageIndexValue}]
${Retail_HK_AccountStaffPage_PhoneNum_TextBox}    //div[@class='input-contact-number container'][${Retail_AccountStaffPageIndexValue}]|(//dpp-input-contact-number//input[@type='text'])[${Retail_AccountStaffPageIndexValue}]

#-----------------------------------------------------Retail Account Staff Page Checkbox
${Retail_AccountStaffPageActiveAddCheckBox}    (//input[@formcontrolname='active'])[1]
${Retail_AccountStaffPageActiveCheckBox}    (//input[@formcontrolname='active'])[${Retail_AccountStaffPageIndexValue}]

#-----------------------------------------------------Retail Account Staff Page Button
${Retail_AccountStaffPageAddButton}    //button[@class='btn btn-outline-secondary mx-0']
${Retail_AccountStaffPageEditButton}    (//div[@class='edit-icon']|//cx-icon[@class='cx-icon dpp-icons__pencil'])[${Retail_AccountStaffPageIndexValue}]
${Retail_AccountStaffPageUpdateButton}    //button[@class='btn btn-flex btn-secondary']
${Retail_AccountStaffPageCancelButton}    //button[@class='btn btn-flex btn-outline-secondary']|//button[@class='btn btn-flex btn-outline-secondary mr-3']

${Retail_AccountStaffPageYesButton}    //button[@class='btn btn-secondary btn-block']
${Retail_AccountStaffPageNoButton}    //button[@class='btn btn-block btn-outline-secondary']

#-----------------------------------------------------Retail Account Staff Page Error Messages
${Retail_AccountStaffPageFNErrorMessage}    //div[@class='form-errors']//p[contains(text(),'Please enter a valid First Name')]
${Retail_AccountStaffPageLNErrorMessage}    //div[@class='form-errors']//p[contains(text(),'Please enter a valid Last Name')]
${Retail_AccountStaffPagePhoneNumErrorMessage}    //div[@class='form-errors']//p[contains(text(),'Enter a valid Phone Number')]

#-----------------------------------------------------Retail Account Staff Page Values
${Retail_AccountStaffPageIndexValue}    3
${Retail_AccountStaffPageFirstNameValue}    Test FN
${Retail_AccountStaffPageLastNameValue}    Test LN
${Retail_AccountStaffPageEmailValue}    Testemail1@yopmail.com
${Retail_AccountStaffPagePhoneNumValue}    0400000001

${Retail_HKAccountStaffPage_PhoneNum_Value}    12345678

${Retail_HK_AccountStaffPage_PhoneNum_Add_Value}    12345678

#-----------------------------------------------------Retail All Product Page-------------------------------------------

${AllProdPageLabelFilter}    //dpp-breadcrumb
${AllProdPagePanelHeader}    //div[@class='search-result-heading']//strong[contains(text(),'All Products') or contains(text(),'所有產品')]
${AllProdPageSortProdDropdown}    (//div[@class='cx-sorting top']//div[@class='ng-select-container ng-has-value'])[2]|(//dpp-product-list//div[@class='form-group sort-filter-wrapper row m-0']//ng-select//div)[1]|(//div[@class='ng-select-container ng-has-value'])[2]
${AllProdPageSortProdDropdownRelevance}    //div[@role='option']//span[contains(text(),'Relevance')]
${AllProdPageSortProdDropdownAtoZ}    //div[@role='option']//span[contains(text(),'Name A to Z') or contains(text(),'Name (ascending)')]
${AllProdPageSortProdDropdownZtoA}    //div[@role='option']//span[contains(text(),'Name Z to A') or contains(text(),'Name (descending)')]

${AllProdPageYourPriceToggle}    //div[@class='custom-control custom-switch']
${AllProdPageGSTToggle}     //div[@class='custom-control custom-switch custom-switch--ml']//label

${AllProdPageAddCar/ChangeCarButton}    //dpp-car-selected//div[@class='vehicle-container pt-2']//a|//dpp-car-selected//div[@class='col-12 pt-2']//a

${AllProdPageProdFilterList1stBreakdownIcon}    (//dpp-product-facet-navigation//ul[@class='facets-container']//ul[1]//li//div[@class='d-flex justify-content-between align-items-center']//cx-icon)
#${AllProdPageProdFilterList1stBreakdownIcon}    (//dpp-product-facet-navigation//ul[@class='facets-container']//ul//li//div//cx-icon)
${AllProdPageProdFilterList2ndBreakdownIcon}    (//dpp-product-facet-navigation//ul[@class='facets-container']//ul//li[@class='expanded']//ul//li//div[@class='d-flex justify-content-between']//cx-icon)
${AllProdPageProdFilterList3rdBreakdown}    (//dpp-product-facet-navigation//ul[@class='facets-container']//ul//li[@class='expanded']//ul//ul//li//div[@class='d-flex justify-content-start']//div)



${AllProdPageProdSelectedFilter}    //dpp-product-facet-navigation//li[@class='selected-filter']
${AllProdPageProdSelectedFilterCloseButton}    //dpp-product-facet-navigation//li[@class='selected-filter']//button

${AllProdPageProdSelectedFilterSubFilterCheckBox}    (//dpp-product-facet-navigation//ul[@class='facets-container']//ul//li//div//input[not(@id='inStock')]/ancestor::div[@class='d-flex justify-content-between align-items-center'])



${AllProdPageResultPerPageDropDown}    //div[@class='page-options input-group']//span[@class='ng-arrow-wrapper']
${AllProdPageResultPerPageDropDown20}    //div[@role='option']//span[contains(text(),'20')]
${AllProdPageResultPerPageDropDown50}    //div[@role='option']//span[contains(text(),'50')]
${AllProdPageResultPerPageDropDown100}    //div[@role='option']//span[contains(text(),'100')]

${AllProdPageInStockCheckBoxContainer}    //div[@class='d-flex py-2 justify-content-between']//div[contains(text(),'Filter by Stock') or contains(text(),'依庫存篩選')]
${AllProdPageInStockCheckBox}    //li[@class='checkbox-container']//div//input[@id='inStock']

${AllProdPagePreviousPageButton}    //a[@aria-label='previous page']
${AllProdPageDetailsNextPageButton}    //a[@aria-label='next page']
${AllProdPageDetailsPage1Button}    //a[@aria-label='page 1' and @class='page']
${AllProdPageDetailsLastPageButton}    //a[@aria-label='last page']
${AllProdPageDetailsFirstPageButton}    //a[@aria-label='first page' and @class='first']
${AllProdPageDetailsNextPageButtonDisabled}    //a[@class='next disabled']
${AllProdPagePreviousPageButtonDisabled}    //a[@class='previous disabled']

${AllProdPageDisabledCurrentPage1}     //a[@aria-label='page 1' and @class='page disabled current']


${Retail_HK_AllProdPageLoadmoreButton}    //dpp-product-grid-view//div[@class='showmore']//button[@class='showmore-btn btn btn-secondary align-btn']
${Retail_HK_AllProdPageScrolltoTopButton}    //cx-scroll-to-top//button

${AllProdPageAddtoCartRRPLabel}    (//div[@class='custom-product-list' or @class='product-grid-list'][.//button[@type='submit']]//div[@aria-label='RRP.' or @class='product-msrp' or @aria-label='Retail Price']//span[1])

${AllProdPageAddtoCartButton}    (//dpp-add-to-cart//button[@type='submit'])
${AllProdPageAddOneButton}    (//button[@aria-label='Add one more'])
${AllProdPageRemoveOneButton}    (//button[@aria-label='Remove one'])


#-----------------------------------------------------Retail All Product Page Pop Up Message

${Retail_AllProdPagePopUpMessageContainer}     //div[@class='cx-modal-content']//div[@class='cx-dialog-body modal-body']
${Retail_AllProdPagePopUpSentMessage}    //div[@class='cx-modal-content']//div[@class='cx-dialog-body modal-body thank-you']
${Retail_AllProdPagePopUpMessageToSupplierlabel}    //div[@class='col-sm-12 header']//span
${Retail_AllProdPagePopUpMessageSubjectlabel}    //div[@class='col-sm-12']//span[contains(text(),'Subject')]
${Retail_AllProdPagePopUpMessageMessagelabel}    //div[@class='col-sm-12']//span[contains(text(),'Message')]
${Retail_AllProdPagePopUpMessagePhotolabel}    //dpp-image-upload//p

${Retail_AllProdPagePopUpMessageToSupplierTextBox}    //input[@class='form-control col-sm-5']
${Retail_AllProdPagePopUpMessageSubjectTextBox}    //input[@class='form-control']
${Retail_AllProdPagePopUpMessageMessageTextBox}    //textarea[@formcontrolname='message']

${Retail_AllProdPagePopUpMessageUploadImageContainer}    //div[@class='d-flex']|//div[@class='images-container']
${Retail_AllProdPagePopUpMessageUploadImageButton}    //div[@class='cx-modal-content']//button[@class='btn image-upload']
${Retail_AllProdPagePopUpMessageUploadImage}    //div[@class='cx-modal-content']//input[@type='file']
${Retail_AllProdPagePopUpMessageCancelButton}    //div[@class='cx-modal-content']//button[@class='btn btn-sm btn-outline-secondary']
${Retail_AllProdPagePopUpMessageSendButton}    //div[@class='cx-modal-content']//button[@class='btn btn-sm btn-secondary ml-2']

${Retail_AllProdPagePopUpMessageContinueButton}    //div[@class='cx-modal-content']//button

${Retail_AllProdPageMessagePopUpUpMessageValue}    Test



#-----------------------------------------------------Retail Product Selection------------------------------------------
${Retail_HK_ProductSelectionProductlist}    //div[@class='custom-product-list' or @class='product-grid-list']
${Retail_HK_ProductSelectionProductResult}    //div[@class='showmore-result text-center mb-2']

#-----------------------------------------------------Retail Product Selection In Stock and DC Stock
${ProductSelectionInStockDCStock}    (//div[@class='custom-product-list'][.//p[@class='inStock mr-0']][.//p[@class='inStock pr-2']])
${ProductSelectionInStockDCStockContainer}    (//div[@class='custom-product-list'][.//p[@class='inStock mr-0']][.//p[@class='inStock pr-2']])[1]
${ProductSelectionInStockDCStockProductNameContainer}    (//div[@class='custom-product-list'][.//p[@class='inStock mr-0']][.//p[@class='inStock pr-2']]//div[@class='col-12 col-md-5 mb-3']//a)[1]
${ProductSelectionInStockDCStockProductPriceContainer}    (//div[@class='custom-product-list'][.//p[@class='inStock mr-0']][.//p[@class='inStock pr-2']]//div[@class='col-12 col-md-2 px-0'])[1]
${ProductSelectionInStockDCStockProductImageContainer}    (//div[@class='custom-product-list'][.//p[@class='inStock mr-0']][.//p[@class='inStock pr-2']]//div[@class='col-12 col-md-2'])[1]
${ProductSelectionInStockDCStockProductInStockNumber}    (//div[@class='custom-product-list'][.//p[@class='inStock mr-0']][.//p[@class='inStock pr-2']]//dpp-product-stock//span)[1]
${ProductSelectionInStockDCStockProductDCStockNumber}    (//div[@class='custom-product-list'][.//p[@class='inStock mr-0']][.//p[@class='inStock pr-2']]//dpp-product-stock//span[@class='ml-1'])[1]
${ProductSelectionInStockDCStockAddtoCartButton}    (//div[@class='custom-product-list'][.//p[@class='inStock mr-0']][.//p[@class='inStock pr-2']]//button[@type='submit'])[1]
${ProductSelectionInStockDCStockRemoveOneButton}    (//div[@class='custom-product-list'][.//p[@class='inStock mr-0']][.//p[@class='inStock pr-2']]//button[@aria-label='Remove one'])[1]
${ProductSelectionInStockDCStockQtyTextBox}    (//div[@class='custom-product-list'][.//p[@class='inStock mr-0']][.//p[@class='inStock pr-2']]//input[@type='number'])[1]
${ProductSelectionInStockDCStockAddOneButton}    (//div[@class='custom-product-list'][.//p[@class='inStock mr-0']][.//p[@class='inStock pr-2']]//button[@aria-label='Add one more'])[1]
${ProductSelectionInStockDCStockSoldBySellerButton}    (//div[@class='custom-product-list'][.//p[@class='inStock mr-0']][.//p[@class='inStock pr-2']]//div[@class='sold-by'])[1]
${ProductSelectionInStockDCStockSoldBySellerContainer}    //dpp-sold-by-seller//div[@class='cx-modal-content']
${ProductSelectionInStockDCStockInfoButton}    (//div[@class='custom-product-list'][.//p[@class='inStock mr-0']][.//p[@class='inStock pr-2']]//cx-icon)[1]
${ProductSelectionInStockDCStockInfoContainer}    //dpp-popover-info//cx-popover

${ProductSelectionInStockDCStockRRPLable}    (//div[@class='custom-product-list'][.//p[@class='inStock mr-0']][.//p[@class='inStock pr-2']][.//button[@type='submit']]//div[@aria-label='RRP' or @class='product-msrp']//span[1])

${ProductSelectionInStockDCStockQtyTextBoxValue}    2

${ProductSelectionQtyTextBoxValue}    999

#-----------------------------------------------------Retail Product Selection In Stock Only
${ProductSelectionInStockOnly}    (//div[@class='custom-product-list' or @class='product-grid-list'][.//p[@class='inStock mr-0']][not(.//p[@class='inStock pr-2'])])
${ProductSelectionInStockOnlyContainer}    (//div[@class='custom-product-list' or @class='product-grid-list'][.//p[@class='inStock mr-0']][not(.//p[@class='inStock pr-2'])])[1]
${ProductSelectionInStockOnlyProductNameContainer}    ((//div[@class='custom-product-list'][.//p[@class='inStock mr-0']][not(.//p[@class='inStock pr-2'])]//div[@class='col-12 col-md-5 mb-3']//a)|(//div[@class='product-grid-list'][.//p[@class='inStock mr-0']][not(.//p[@class='inStock pr-2'])]//div[@class='list-item__desc']//span))[1]
${ProductSelectionInStockOnlyProductPriceContainer}    ((//div[@class='custom-product-list'][.//p[@class='inStock mr-0']][not(.//p[@class='inStock pr-2'])]//div[@class='col-12 col-md-2 px-0'])|(//div[@class='product-grid-list'][.//p[@class='inStock mr-0']][not(.//p[@class='inStock pr-2'])]//div[@class='list-item__price']))[1]
${ProductSelectionInStockOnlyProductImageContainer}    ((//div[@class='custom-product-list'][.//p[@class='inStock mr-0']][not(.//p[@class='inStock pr-2'])]//div[@class='col-12 col-md-2'])|(//div[@class='product-grid-list'][.//p[@class='inStock mr-0']][not(.//p[@class='inStock pr-2'])]//div[@class='list-item__img']))[1]
${ProductSelectionInStockOnlyProductStockNumber}    (//div[@class='custom-product-list' or @class='product-grid-list'][.//p[@class='inStock mr-0']][not(.//p[@class='inStock pr-2'])]//dpp-product-stock//span)[1]
${ProductSelectionInStockOnlyProductAddtoCartButton}    (//div[@class='custom-product-list' or @class='product-grid-list'][.//p[@class='inStock mr-0']][not(.//p[@class='inStock pr-2'])]//button[@type='submit'])[1]
${ProductSelectionInStockOnlyRemoveOneButton}    (//div[@class='custom-product-list' or @class='product-grid-list'][.//p[@class='inStock mr-0']][not(.//p[@class='inStock pr-2'])]//button[@aria-label='Remove one'])[1]
${ProductSelectionInStockOnlyQtyTextBox}    (//div[@class='custom-product-list' or @class='product-grid-list'][.//p[@class='inStock mr-0']][not(.//p[@class='inStock pr-2'])]//input[@type='number'])[1]
${ProductSelectionInStockOnlyAddOneButton}    (//div[@class='custom-product-list' or @class='product-grid-list'][.//p[@class='inStock mr-0']][not(.//p[@class='inStock pr-2'])]//button[@aria-label='Add one more'])[1]
${ProductSelectionInStockOnlyProductSoldBySellerButton}    ((//div[@class='custom-product-list'][.//p[@class='inStock mr-0']][not(.//p[@class='inStock pr-2'])]//div[@class='sold-by'])|(//div[@class='product-grid-list'][.//p[@class='inStock mr-0']][not(.//p[@class='inStock pr-2'])]//div[@class='seller-info']))[1]
${ProductSelectionInStockOnlyProductSoldBySellerContainer}    //dpp-sold-by-seller//div[@class='cx-modal-content']

${ProductSelectionInStockOnlyProductRRPLabel}    (//div[@class='custom-product-list' or @class='product-grid-list'][.//p[@class='inStock mr-0']][not(.//p[@class='inStock pr-2'])][.//button[@type='submit']]//div[@aria-label='RRP' or @class='product-msrp']//span[1])

${ProductSelectionInStockOnlyQtyTextBoxValue}    2

#-----------------------------------------------------Retail Product Selection Out of Stock and DC Stock
${ProductSelectionOutofStockDCStock}    (//div[@class='custom-product-list'][.//p[@class='outOfStock mr-0']][.//p[@class='inStock pr-2']])
${ProductSelectionOutofStockDCStockContainer}    (//div[@class='custom-product-list'][.//p[@class='outOfStock mr-0']][.//p[@class='inStock pr-2']])[1]
${ProductSelectionOutofStockDCStockProductNameContainer}    (//div[@class='custom-product-list'][.//p[@class='outOfStock mr-0']][.//p[@class='inStock pr-2']]//div[@class='col-12 col-md-5 mb-3']//a)[1]
${ProductSelectionOutofStockDCStockProductPriceContainer}    (//div[@class='custom-product-list'][.//p[@class='outOfStock mr-0']][.//p[@class='inStock pr-2']]//div[@class='col-12 col-md-2 px-0'])[1]
${ProductSelectionOutofStockDCStockProductImageContainer}    (//div[@class='custom-product-list'][.//p[@class='outOfStock mr-0']][.//p[@class='inStock pr-2']]//div[@class='col-12 col-md-2'])[1]
${ProductSelectionOutofStockDCStockProductStockNumber}    (//div[@class='custom-product-list'][.//p[@class='outOfStock mr-0']][.//p[@class='inStock pr-2']]//dpp-product-stock//span[@class='ml-1'])[1]
${ProductSelectionOutofStockDCStockAddtoCartButton}    (//div[@class='custom-product-list'][.//p[@class='outOfStock mr-0']][.//p[@class='inStock pr-2']]//button[@type='submit'])[1]
${ProductSelectionOutofStockDCStockRemoveOneButton}    (//div[@class='custom-product-list'][.//p[@class='outOfStock mr-0']][.//p[@class='inStock pr-2']]//button[@aria-label='Remove one'])[1]
${ProductSelectionOutofStockDCStockQtyTextBox}    (//div[@class='custom-product-list'][.//p[@class='outOfStock mr-0']][.//p[@class='inStock pr-2']]//input[@type='number'])[1]
${ProductSelectionOutofStockDCStockAddOneButton}    (//div[@class='custom-product-list'][.//p[@class='outOfStock mr-0']][.//p[@class='inStock pr-2']]//button[@aria-label='Add one more'])[1]
${ProductSelectionOutofStockDCStockInfoButton}    (//div[@class='custom-product-list'][.//p[@class='outOfStock mr-0']][.//p[@class='inStock pr-2']]//cx-icon)[1]
${ProductSelectionOutofStockDCStockInfoContainer}    //dpp-popover-info//cx-popover
${ProductSelectionOutofStockDCStockSoldBySellerButton}    (//div[@class='custom-product-list'][.//p[@class='outOfStock mr-0']][.//p[@class='inStock pr-2']]//div[@class='sold-by'])[1]
${ProductSelectionOutofStockDCStockSoldBySellerContainer}    //dpp-sold-by-seller//div[@class='cx-modal-content']

${ProductSelectionOutofStockDCStockRRPLabel}    (//div[@class='custom-product-list'][.//p[@class='outOfStock mr-0']][.//p[@class='inStock pr-2']][.//button[@type='submit']]//div[@aria-label='RRP' or @class='product-msrp']//span[1])

${ProductSelectionOutofStockDCStockQtyTextBoxValue}    2

#-----------------------------------------------------Retail Product Selection Out of Stock
${ProductSelectionOutofStock}    (//div[@class='custom-product-list' or @class='product-grid-list'][.//p[@class='outOfStock mr-0']][not(.//p[@class='inStock pr-2'])])
${ProductSelectionOutofStockContainer}    (//div[@class='custom-product-list' or @class='product-grid-list'][.//p[@class='outOfStock mr-0' or @class='outOfStock mr-0 hk']][not(.//p[@class='inStock pr-2'])])[1]
${ProductSelectionOutofStockProductNameContainer}    ((//div[@class='custom-product-list'][.//p[@class='outOfStock mr-0']][not(.//p[@class='inStock pr-2'])]//div[@class='col-12 col-md-5 mb-3']//a)|(//div[@class='product-grid-list'][.//p[@class='outOfStock mr-0 hk' or @class='outOfStock mr-0']][not(.//p[@class='inStock pr-2'])]//div[@class='list-item__desc']//span))[1]
${ProductSelectionOutofStockProductPriceContainer}    ((//div[@class='custom-product-list'][.//p[@class='outOfStock mr-0']][not(.//p[@class='inStock pr-2'])]//div[@class='col-12 col-md-2 px-0'])|(//div[@class='product-grid-list'][.//p[@class='outOfStock mr-0 hk' or @class='outOfStock mr-0']][not(.//p[@class='inStock pr-2'])]//div[@class='list-item__price']))[1]
${ProductSelectionOutofStockProductImageContainer}    ((//div[@class='custom-product-list'][.//p[@class='outOfStock mr-0']][not(.//p[@class='inStock pr-2'])]//div[@class='col-12 col-md-2'])|(//div[@class='product-grid-list'][.//p[@class='outOfStock mr-0 hk' or @class='outOfStock mr-0']][not(.//p[@class='inStock pr-2'])]//div[@class='list-item__img']))[1]
${ProductSelectionOutofStockEnqButton}    (//div[@class='custom-product-list' or @class='product-grid-list'][.//p[@class='outOfStock mr-0' or @class='outOfStock mr-0 hk']][not(.//p[@class='inStock pr-2'])]//button[@class='btn btn-outline-secondary enquire-btn'])[1]
${ProductSelectionOutofStockSoldBySellerButton}    ((//div[@class='custom-product-list'][.//p[@class='outOfStock mr-0']][not(.//p[@class='inStock pr-2'])]//div[@class='sold-by'])|(//div[@class='product-grid-list'][.//p[@class='outOfStock mr-0 hk'or @class='outOfStock mr-0']][not(.//p[@class='inStock pr-2'])]//div[@class='seller-info']))[1]
${ProductSelectionOutofStockSoldBySellerContainer}    //dpp-sold-by-seller//div[@class='cx-modal-content']

#-----------------------------------------------------Retail Product Selection Price Not Available
${ProductSelectionNoPrice}    (//div[@class='custom-product-list'][.//span[@class='noprice-label']][.//button[contains(text(),'Enquire now')]])
${ProductSelectionNoPriceContainer}    (//div[@class='custom-product-list'][.//span[@class='noprice-label']][.//button[contains(text(),'Enquire now')]])[1]
${ProductSelectionNoPriceProductNameContainer}    (//div[@class='custom-product-list'][.//span[@class='noprice-label']][.//button[contains(text(),'Enquire now')]]//div[@class='col-12 col-md-5 mb-3']//a)[1]
${ProductSelectionNoPricePriceContainer}    (//div[@class='custom-product-list'][.//span[@class='noprice-label']][.//button[contains(text(),'Enquire now')]]//div[@class='col-12 col-md-2 px-0'])[1]
${ProductSelectionNoPriceImageContainer}    (//div[@class='custom-product-list'][.//span[@class='noprice-label']][.//button[contains(text(),'Enquire now')]]//div[@class='col-12 col-md-2'])[1]
${ProductSelectionNoPriceEnqButton}    (//div[@class='custom-product-list'][.//span[@class='noprice-label']][.//button[contains(text(),'Enquire now')]]//button[@class='btn btn-outline-secondary enquire-btn'])[1]
${ProductSelectionNoPriceSoldBySellerButton}    (//div[@class='custom-product-list'][.//span[@class='noprice-label']][.//button[contains(text(),'Enquire now')]]//div[@class='sold-by'])[1]
${ProductSelectionNoPriceSoldBySellerContainer}    //dpp-sold-by-seller//div[@class='cx-modal-content']

#-----------------------------------------------------Retail Product Details Page---------------------------------------
#-----------------------------------------------------Retail Product Details Page In Stock and DC Stock



#-----------------------------------------------------Retail Product Details Page In Stock Only
${ProductDeatilsPageProductImage}    //dpp-product-images
${ProductDeatilsPageProductName}    //div[@class='pl-0 pb-0 mb-0 product-title']
${ProductDeatilsPageProductPartNum}    //span[@class='part-number mb-2']
${ProductDeatilsPageProductPrice}    //div[@class='row price']
${ProductDeatilsPageProductPriceRRP}    //dpp-common-price//span[@class='rrp-info']
${ProductDeatilsPageProductInclGST}    //dpp-common-price//span[@class='gst-info d-block' and contains(text(),'Incl. GST')]
${ProductDeatilsPageProductExclGST}    //dpp-common-price//span[@class='gst-info d-block' and contains(text(),'Excl. GST')]
${ProductDeatilsPageProductNoPrice}    //dpp-common-price//span[@class='gst-info d-block' and contains(text(),'Price not available!')]
${ProductDeatilsPageProductInStock}    //dpp-product-stock//p[@class='inStock mr-0']
${ProductDeatilsPageProductDCStock}    //dpp-available-in-dc//p[@class='inStock']
${ProductDeatilsPageProductOutofStock}    //dpp-product-stock//p[@class='outOfStock mr-0' or @class='outOfStock mr-0 hk']
${ProductDeatilsPageProductSoldBySellerButton}    //div[@class='sold-by']//a
${ProductDeatilsPageProductAddtoCartButton}    //dpp-add-to-cart//button[@type='submit']
${ProductDeatilsPageProductAddtoCartButtonDisabled}    //dpp-add-to-cart//button[@type='submit' and @disabled]
${ProductDeatilsPageProductEnqNowButton}   //dpp-message-enquiry//button

${ProductDeatilsPageProductYourPriceToggle}    //div[@class='custom-control custom-switch']
${ProductDeatilsPageProductGSTToggle}     //div[@class='custom-control custom-switch custom-switch--ml']//label
${ProductDeatilsPageProductYourPriceToggleDisabled}    //div[@class='custom-control custom-switch'][.//input[@disabled]]
${ProductDeatilsPageProductGSTToggleDisabled}    //div[@class='ml-5 custom-control custom-switch']|//div[@class='custom-control custom-switch custom-switch--ml'][.//input[@disabled]]


#-----------------------------------------------------EPC Page----------------------------------------------------------
#-----------------------------------------------------EPC Page L1
${Retail_HK_EPC_L1_Container}    //cx-page-layout[@class='EPCLevel1PageTemplate']
${Retail_HK_EPC_L1_ElectronicParts_Container}    //cx-page-slot[@class='Section2A has-components']
${Retail_HK_EPC_L1_ElectronicParts_Cards_Container}    //cx-page-slot[@class='Section2A has-components']//div[@class='epc-cards row m-0']
${Retail_HK_EPC_L1_ElectronicParts_Cards_Header}    //cx-page-slot[@class='Section2A has-components']//div[@class='epc-title mb-3']

${Retail_HK_EPC_L1_ElectronicParts_Cards_EngineFuelSystem}    //cx-page-slot[@class='Section2A has-components']//div[@class='epc-cards row m-0']//div[contains(text(),'Engine, fuel system, and tools')]//parent::div[@class='epc-card d-flex flex-column justify-content-start align-items-center']
${Retail_HK_EPC_L1_ElectronicParts_Cards_TransmissionChasis}    //cx-page-slot[@class='Section2A has-components']//div[@class='epc-cards row m-0']//div[contains(text(),'Transmission and chassis')]//parent::div[@class='epc-card d-flex flex-column justify-content-start align-items-center']
${Retail_HK_EPC_L1_ElectronicParts_Cards_BodyInterior}    //cx-page-slot[@class='Section2A has-components']//div[@class='epc-cards row m-0']//div[contains(text(),'Body and interior')]//parent::div[@class='epc-card d-flex flex-column justify-content-start align-items-center']
${Retail_HK_EPC_L1_ElectronicParts_Cards_Electrics}    //cx-page-slot[@class='Section2A has-components']//div[@class='epc-cards row m-0']//div[contains(text(),'Electrics')]//parent::div[@class='epc-card d-flex flex-column justify-content-start align-items-center']

${Retail_HK_EPC_L1_MaintenanceParts_Container}    //cx-page-slot[@class='Section2B has-components']
${Retail_HK_EPC_L1_MaintenanceParts_Card_Container}    //cx-page-slot[@class='Section2B has-components']//div[@class='top-sellers d-flex flex-column align-items-center justify-content-between']
${Retail_HK_EPC_L1_MaintenanceParts_Header}    //cx-page-slot[@class='Section2B has-components']//div[@class='maintenance-parts-title mb-4 mt-3 mt-md-0']
${Retail_HK_EPC_L1_MaintenanceParts_Card_ShopNow_Button}    //cx-page-slot[@class='Section2B has-components']//div[@class='top-sellers d-flex flex-column align-items-center justify-content-between']//button



#-----------------------------------------------------EPC Page L2
${Retail_HK_EPC_L2_SelectedCar_Container}    //div[@class='epc-selected-car-container']
${Retail_HK_EPC_L2_SelectedCar_Header_Label}    //div[@class='epc-selected-car-container']//div[@class='col-12 d-flex']
${Retail_HK_EPC_L2_SelectedCar_CarModel_Label}    //div[@class='epc-selected-car-container']//div[@class='row pt-2']
${Retail_HK_EPC_L2_SelectedCar_CarModelCode_Value}    //div[@class='epc-selected-car-container']//div[@class='col-2']//span[@class='car-label' and contains(text(),'Model Code')]/parent::div/preceding-sibling::div
${Retail_HK_EPC_L2_SelectedCar_CarModelCode_Label}    //div[@class='epc-selected-car-container']//div[@class='col-2']//span[@class='car-label' and contains(text(),'Model Code')]
${Retail_HK_EPC_L2_SelectedCar_CarEngine_Value}    //div[@class='epc-selected-car-container']//div[@class='col-2 ml-n3']//span[@class='car-label' and contains(text(),'Engine')]/parent::div/preceding-sibling::div
${Retail_HK_EPC_L2_SelectedCar_CarEngine_Label}    //div[@class='epc-selected-car-container']//div[@class='col-2 ml-n3']//span[@class='car-label' and contains(text(),'Engine')]
${Retail_HK_EPC_L2_SelectedCar_CarYear_Value}     //div[@class='epc-selected-car-container']//div[@class='col-1 pl-5']//span[@class='car-label' and contains(text(),'Year')]/parent::div/preceding-sibling::div
${Retail_HK_EPC_L2_SelectedCar_CarYear_Label}    //div[@class='epc-selected-car-container']//div[@class='col-1 pl-5']//span[@class='car-label' and contains(text(),'Year')]
${Retail_HK_EPC_L2_SelectedCar_CarTransmission_Value}    //div[@class='epc-selected-car-container']//div[@class='col-3']//span[@class='car-label' and contains(text(),'Transmission')]/parent::div/preceding-sibling::div
${Retail_HK_EPC_L2_SelectedCar_CarTransmission_Label}    //div[@class='epc-selected-car-container']//div[@class='col-3']//span[@class='car-label' and contains(text(),'Transmission')]
${Retail_HK_EPC_L2_SelectedCar_MoreInfo_Button}    //div[@class='epc-selected-car-container']//button
${Retail_HK_EPC_L2_SelectedCar_ChangeCar_Button}    //div[@class='epc-selected-car-container']//div[@class='row pt-1']

${Retail_HK_EPC_L2_SelectedCar_MoreInfo_Popup_Container}    //div[@class='cx-modal-content']
${Retail_HK_EPC_L2_SelectedCar_MoreInfo_Popup_Header}    //div[@class='cx-modal-content']//div[@class='cx-dialog-header d-flex justify-content-between flex-column']
${Retail_HK_EPC_L2_SelectedCar_MoreInfo_Popup_Close_Button}     //div[@class='cx-modal-content']//cx-icon
${Retail_HK_EPC_L2_SelectedCar_MoreInfo_Popup_Body_Label}    //div[@class='cx-dialog-body d-flex flex-column']//div[@class='row'][1]//span[1]
${Retail_HK_EPC_L2_SelectedCar_MoreInfo_Popup_Body_Value}    //div[@class='cx-dialog-body d-flex flex-column']//div[@class='row'][1]//span[2]
${Retail_HK_EPC_L2_SelectedCar_MoreInfo_Popup_ProdDate_Label}    //div[@class='cx-dialog-body d-flex flex-column']//div[@class='row'][2]//span[1]
${Retail_HK_EPC_L2_SelectedCar_MoreInfo_Popup_ProdDate_Value}    //div[@class='cx-dialog-body d-flex flex-column']//div[@class='row'][2]//span[2]
${Retail_HK_EPC_L2_SelectedCar_MoreInfo_Popup_Year_Label}    //div[@class='cx-dialog-body d-flex flex-column']//div[@class='row'][3]//span[1]
${Retail_HK_EPC_L2_SelectedCar_MoreInfo_Popup_Year_Value}    //div[@class='cx-dialog-body d-flex flex-column']//div[@class='row'][3]//span[2]
${Retail_HK_EPC_L2_SelectedCar_MoreInfo_Popup_Doors_Label}    //div[@class='cx-dialog-body d-flex flex-column']//div[@class='row'][4]//span[1]
${Retail_HK_EPC_L2_SelectedCar_MoreInfo_Popup_Doors_Value}    //div[@class='cx-dialog-body d-flex flex-column']//div[@class='row'][4]//span[2]
${Retail_HK_EPC_L2_SelectedCar_MoreInfo_Popup_Seating_Label}    //div[@class='cx-dialog-body d-flex flex-column']//div[@class='row'][5]//span[1]
${Retail_HK_EPC_L2_SelectedCar_MoreInfo_Popup_Seating_Value}    //div[@class='cx-dialog-body d-flex flex-column']//div[@class='row'][5]//span[2]
${Retail_HK_EPC_L2_SelectedCar_MoreInfo_Popup_Grade_Label}    //div[@class='cx-dialog-body d-flex flex-column']//div[@class='row'][6]//span[1]
${Retail_HK_EPC_L2_SelectedCar_MoreInfo_Popup_Grade_Value}    //div[@class='cx-dialog-body d-flex flex-column']//div[@class='row'][6]//span[2]
${Retail_HK_EPC_L2_SelectedCar_MoreInfo_Popup_DriverPos_Label}    //div[@class='cx-dialog-body d-flex flex-column']//div[@class='row'][7]//span[1]
${Retail_HK_EPC_L2_SelectedCar_MoreInfo_Popup_DriverPos_Value}    //div[@class='cx-dialog-body d-flex flex-column']//div[@class='row'][7]//span[2]

${Retail_HK_EPC_L2_PartsGroup_Header}    //dpp-epc-parts-group-facet-navigation//div[@class='epc-parts-group-title']
${Retail_HK_EPC_L2_PartsGroup_EngingFuelSystem_Button}    //dpp-epc-parts-group-facet-navigation//a[@class='col-12 p-0 my-1' and contains(text(),' Engine, fuel system, and tools')]|//dpp-epc-parts-group-facet-navigation//a[@class='col-12 p-0 my-1 selected' and contains(text(),' Engine, fuel system, and tools')]
${Retail_HK_EPC_L2_PartsGroup_TransmissionChasis_Button}    //dpp-epc-parts-group-facet-navigation//a[@class='col-12 p-0 my-1' and contains(text(),'Transmission and chassis')]|//dpp-epc-parts-group-facet-navigation//a[@class='col-12 p-0 my-1 selected' and contains(text(),'Transmission and chassis')]
${Retail_HK_EPC_L2_PartsGroup_BodyInterior_Button}    //dpp-epc-parts-group-facet-navigation//a[@class='col-12 p-0 my-1' and contains(text(),'Body and interior')]|//dpp-epc-parts-group-facet-navigation//a[@class='col-12 p-0 my-1 selected' and contains(text(),'Body and interior')]
${Retail_HK_EPC_L2_PartsGroup_Electrics_Button}    //dpp-epc-parts-group-facet-navigation//a[@class='col-12 p-0 my-1' and contains(text(),'Electrics')]|//dpp-epc-parts-group-facet-navigation//a[@class='col-12 p-0 my-1 selected' and contains(text(),'Electrics')]
${Retail_HK_EPC_L2_PartsGroup_All_Button}    //dpp-epc-parts-group-facet-navigation//a[@class='col-12 p-0 my-1' and contains(text(),'All')]|//dpp-epc-parts-group-facet-navigation//a[@class='col-12 p-0 my-1 selected' and contains(text(),'All')]

${Retail_HK_EPC_L2_Schema_All_Header}    //dpp-epc-parts-schema-list//div[@class='epc-schema-header pb-4 row m-0']//span[contains(text(),'All')]

${Retail_HK_EPC_L2_SearchBar_TextBox}    //dpp-input-search//input
${Retail_HK_EPC_L2_Schema_CardList}    (//dpp-epc-parts-schema-list//div[@class='epc-schema-card col-12 col-md-3 my-2 mx-0 px-2'])
${Retail_HK_EPC_L2_Schema_LoadMore_Button}    //dpp-epc-parts-schema-list//button[@class='showmore-btn btn btn-secondary align-btn']

${Retail_HK_EPC_L2_SearchBar_Value}    CAUTION PLATE

#-----------------------------------------------------EPC Page L2 Engine, fuel system, and tools
${Retail_HK_EPC_L2_Schema_EngingFuelSystem_Header}    //dpp-epc-parts-schema-list//div[@class='epc-schema-header pb-4 row m-0']//span[contains(text(),'Engine, fuel system, and tools')]
${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_StandardTool}    //dpp-epc-parts-schema-list//div[contains(text(),'STANDARD TOOL')]/parent::div
${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_PartialEngineAssembly}    //dpp-epc-parts-schema-list//div[contains(text(),'PARTIAL ENGINE ASSEMBLY')]/parent::div
${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_ShortBlockAssembly}    //dpp-epc-parts-schema-list//div[contains(text(),'SHORT BLOCK ASSEMBLY')]/parent::div
${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_EngineOverhaulGasketKit}    //dpp-epc-parts-schema-list//div[contains(text(),'ENGINE OVERHAUL GASKET KIT')]/parent::div
${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_CylinderHead}    //dpp-epc-parts-schema-list//div[contains(text(),'CYLINDER HEAD')]/parent::div
${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_CylinderBlock}    //dpp-epc-parts-schema-list//div[contains(text(),'CYLINDER BLOCK')]/parent::div
${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_TimingGearCoverReadEndPlate}    //dpp-epc-parts-schema-list//div[contains(text(),'TIMING GEAR COVER & REAR END PLATE')]/parent::div
${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_Mounting}    //dpp-epc-parts-schema-list//div[contains(text(),'MOUNTING')]/parent::div
${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_VentilationHose}    //dpp-epc-parts-schema-list//div[contains(text(),'VENTILATION HOSE')]/parent::div
${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_CrankshaftPiston}    //dpp-epc-parts-schema-list//div[contains(text(),'CRANKSHAFT & PISTON')]/parent::div
${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_CamshaftValve}    //dpp-epc-parts-schema-list//div[contains(text(),'CAMSHAFT & VALVE')]/parent::div
${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_EngineOilPump}    //dpp-epc-parts-schema-list//div[contains(text(),'ENGINE OIL PUMP')]/parent::div
${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_OilFilter}    //dpp-epc-parts-schema-list//div[contains(text(),'OIL FILTER')]/parent::div
${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_EngineOilCooler}    //dpp-epc-parts-schema-list//div[contains(text(),'ENGINE OIL COOLER')]/parent::div
${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_WaterPump}    //dpp-epc-parts-schema-list//div[contains(text(),'WATER PUMP')]/parent::div
${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_RadiatorWterOutlet}    //dpp-epc-parts-schema-list//div[contains(text(),'RADIATOR & WATER OUTLET')]/parent::div
${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_VBelt}    //dpp-epc-parts-schema-list//div[contains(text(),'V-BELT')]/parent::div
${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_Manifold}    //dpp-epc-parts-schema-list//div[contains(text(),'MANIFOLD')]/parent::div
${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_ExhaustPipe}    //dpp-epc-parts-schema-list//div[contains(text(),'EXHAUST PIPE')]/parent::div
${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_AirCleaner}    //dpp-epc-parts-schema-list//div[contains(text(),'AIR CLEANER')]/parent::div
${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_VaccumPiping}    //dpp-epc-parts-schema-list//div[contains(text(),'VACUUM PIPING')]/parent::div
${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_CautionPlateNamePlate}    //dpp-epc-parts-schema-list//div[contains(text(),'CAUTION PLATE & NAME PLATE (ENGINE)')]/parent::div
${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_IgnitionCoilSparkPlug}    //dpp-epc-parts-schema-list//div[contains(text(),'IGNITION COIL & SPARK PLUG / GLOW PLUG')]/parent::div
${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_Distributor}    //dpp-epc-parts-schema-list//div[contains(text(),'DISTRIBUTOR')]/parent::div
${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_Alternator}    //dpp-epc-parts-schema-list//div[contains(text(),'ALTERNATOR')]/parent::div
${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_Starter}    //dpp-epc-parts-schema-list//div[contains(text(),'STARTER')]/parent::div
${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_FuelInjectionSystem}    //dpp-epc-parts-schema-list//div[contains(text(),'FUEL INJECTION SYSTEM')]/parent::div
${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_ExhaustGasReciructionSystem}    //dpp-epc-parts-schema-list//div[contains(text(),'EXHAUST GAS RECIRCULATION SYSTEM')]/parent::div


#-----------------------------------------------------EPC Page L2 Transmission and chassis
${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_Header}    //dpp-epc-parts-schema-list//div[@class='epc-schema-header pb-4 row m-0']//span[contains(text(),'Transmission and chassis')]
${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_ClutchReleaseFork}    //dpp-epc-parts-schema-list//div[contains(text(),'CLUTCH & RELEASE FORK')]/parent::div
${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_ClutchPedalFlexibleHose}    //dpp-epc-parts-schema-list//div[contains(text(),'CLUTCH PEDAL & FLEXIBLE HOSE')]/parent::div
${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_ClutchMasterCylinder}    //dpp-epc-parts-schema-list//div[contains(text(),'CLUTCH MASTER CYLINDER')]/parent::div
${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_ClutchReleaseCylinder}    //dpp-epc-parts-schema-list//div[contains(text(),'CLUTCH RELEASE CYLINDER')]/parent::div
${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_TransaxleTransmissionAssyGasketKitMTM}    //dpp-epc-parts-schema-list//div[contains(text(),'TRANSAXLE OR TRANSMISSION ASSY & GASKET KIT (MTM)')]/parent::div
${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_ClutchHousingTransmissionCaseMTM}    //dpp-epc-parts-schema-list//div[contains(text(),'CLUTCH HOUSING & TRANSMISSION CASE (MTM)')]/parent::div
${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_SpeedmeterDrivenGearMTM}    //dpp-epc-parts-schema-list//div[contains(text(),'SPEEDOMETER DRIVEN GEAR (MTM)')]/parent::div
${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_TransmissionGearMTM}    //dpp-epc-parts-schema-list//div[contains(text(),'TRANSMISSION GEAR (MTM)')]/parent::div
${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_GearShiftForkLeverShaftMTM}    //dpp-epc-parts-schema-list//div[contains(text(),'GEAR SHIFT FORK & LEVER SHAFT (MTM)')]/parent::div
${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_ShiftLeverRetainer}    //dpp-epc-parts-schema-list//div[contains(text(),'SHIFT LEVER & RETAINER')]/parent::div
${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_TransaxleTransmissionAssyGasketKitATM}    //dpp-epc-parts-schema-list//div[contains(text(),'TRANSAXLE OR TRANSMISSION ASSY & GASKET KIT (ATM)')]/parent::div
${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_TorqueConverterFrontOilPumpChainATM}    //dpp-epc-parts-schema-list//div[contains(text(),'TORQUE CONVERTER, FRONT OIL PUMP & CHAIN (ATM)')]/parent::div
${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_TransmissionCaseOilPanATM}    //dpp-epc-parts-schema-list//div[contains(text(),'TRANSMISSION CASE & OIL PAN (ATM)')]/parent::div
${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_SpeedometerDrivenGearATM}    //dpp-epc-parts-schema-list//div[contains(text(),'SPEEDOMETER DRIVEN GEAR (ATM)')]/parent::div
${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_OverdriveGearATM}    //dpp-epc-parts-schema-list//div[contains(text(),'OVERDRIVE GEAR (ATM)')]/parent::div
${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_BreakBandMultipleDiscClutch}    //dpp-epc-parts-schema-list//div[contains(text(),'BRAKE BAND & MULTIPLE DISC CLUTCH (ATM)')]/parent::div
${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_CenterSupportPlanetarySunGearATM}    //dpp-epc-parts-schema-list//div[contains(text(),'CENTER SUPPORT & PLANETARY SUN GEAR (ATM)')]/parent::div
${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_BrakeReverseBrakeATM}    //dpp-epc-parts-schema-list//div[contains(text(),'BRAKE NO.3, 1ST & REVERSE BRAKE (ATM)')]/parent::div
${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_PlanetaryGearReversePistonCounterGearATM}    //dpp-epc-parts-schema-list//div[contains(text(),'PLANETARY GEAR, REVERSE PISTON & COUNTER GEAR(ATM)')]/parent::div
${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_RearOilStrainer}    //dpp-epc-parts-schema-list//div[contains(text(),'REAR OIL PUMP & GOVERNOR (ATM)')]/parent::div
${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_ValveBodyOilStrainerATM}    //dpp-epc-parts-schema-list//div[contains(text(),'VALVE BODY & OIL STRAINER (ATM)')]/parent::div
${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_ThrottleLinkValveLever}    //dpp-epc-parts-schema-list//div[contains(text(),'THROTTLE LINK & VALVE LEVER (ATM)')]/parent::div
${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_OilCoolerTubeATM}    //dpp-epc-parts-schema-list//div[contains(text(),'OIL COOLER & TUBE (ATM)')]/parent::div
${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_RearAxleHousingDifferential}    //dpp-epc-parts-schema-list//div[contains(text(),'REAR AXLE HOUSING & DIFFERENTIAL')]/parent::div
${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_RearAxleShaftHub}    //dpp-epc-parts-schema-list//div[contains(text(),'REAR AXLE SHAFT & HUB')]/parent::div
${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_DiscWheelWheelCap}    //dpp-epc-parts-schema-list//div[contains(text(),'DISC WHEEL & WHEEL CAP')]/parent::div
${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_FrontAxleHub}    //dpp-epc-parts-schema-list//div[contains(text(),'FRONT AXLE HUB')]/parent::div
${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_SteeringColumnShaft}    //dpp-epc-parts-schema-list//div[contains(text(),'STEERING COLUMN & SHAFT')]/parent::div
${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_VanePumpReservoirPowerSteering}    //dpp-epc-parts-schema-list//div[contains(text(),'VANE PUMP & RESERVOIR (POWER STEERING)')]/parent::div
${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_PowerSteeringTube}    //dpp-epc-parts-schema-list//div[contains(text(),'POWER STEERING TUBE')]/parent::div
${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_SteeringWheel}    //dpp-epc-parts-schema-list//div[contains(text(),'STEERING WHEEL')]/parent::div
${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_FrontSteeringGearLink}    //dpp-epc-parts-schema-list//div[contains(text(),'FRONT STEERING GEAR & LINK')]/parent::div
${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_ParkingBrakeCable}    //dpp-epc-parts-schema-list//div[contains(text(),'PARKING BRAKE & CABLE')]/parent::div
${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_BrakePedalBracket}    //dpp-epc-parts-schema-list//div[contains(text(),'BRAKE PEDAL & BRACKET')]/parent::div
${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_BreakMasterCylinder}    //dpp-epc-parts-schema-list//div[contains(text(),'BRAKE MASTER CYLINDER')]/parent::div
${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_BrakeBoosterVacuumTube}    //dpp-epc-parts-schema-list//div[contains(text(),'BRAKE BOOSTER & VACUUM TUBE')]/parent::div
${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_FrontDiscBrakeCaliperDustCover}    //dpp-epc-parts-schema-list//div[contains(text(),'FRONT DISC BRAKE CALIPER & DUST COVER')]/parent::div
${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_RearDiscBrakeCaliperDustCover}    //dpp-epc-parts-schema-list//div[contains(text(),'REAR DISC BRAKE CALIPER & DUST COVER')]/parent::div
${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_BrakeTubeClamp}    //dpp-epc-parts-schema-list//div[contains(text(),'BRAKE TUBE & CLAMP')]/parent::div
${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_FrontAxleArmSteeringKnuckle}    //dpp-epc-parts-schema-list//div[contains(text(),'FRONT AXLE ARM & STEERING KNUCKLE')]/parent::div
${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_FrontSpringShockAbsorber}    //dpp-epc-parts-schema-list//div[contains(text(),'FRONT SPRING & SHOCK ABSORBER')]/parent::div
${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_RearSpringShockAbsorber}    //dpp-epc-parts-schema-list//div[contains(text(),'REAR SPRING & SHOCK ABSORBER')]/parent::div

#-----------------------------------------------------EPC Page L2 Body and interior
${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_Header}    //dpp-epc-parts-schema-list//div[@class='epc-schema-header pb-4 row m-0']//span[contains(text(),'Body and interior')]
${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_SuspensionCrossmemberUnderCover}    //dpp-epc-parts-schema-list//div[contains(text(),'SUSPENSION CROSSMEMBER & UNDER COVER')]/parent::div
${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_SpareWheelCarrier}    //dpp-epc-parts-schema-list//div[contains(text(),'SPARE WHEEL CARRIER')]/parent::div
${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_FrontBumperBumperStay}    //dpp-epc-parts-schema-list//div[contains(text(),'FRONT BUMPER & BUMPER STAY')]/parent::div
${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_RearBumperBumperStay}    //dpp-epc-parts-schema-list//div[contains(text(),'REAR BUMPER & BUMPER STAY')]/parent::div
${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_RadiatorGrille}    //dpp-epc-parts-schema-list//div[contains(text(),'RADIATOR GRILLE')]/parent::div
${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_HoodFrontFender}    //dpp-epc-parts-schema-list//div[contains(text(),'HOOD & FRONT FENDER')]/parent::div
${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_HoodLockHinge}    //dpp-epc-parts-schema-list//div[contains(text(),'HOOD LOCK & HINGE')]/parent::div
${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_FrontFenderApronDashPanel}    //dpp-epc-parts-schema-list//div[contains(text(),'FRONT FENDER APRON & DASH PANEL')]/parent::div
${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_FloorSideMember}    //dpp-epc-parts-schema-list//div[contains(text(),'FLOOR SIDE MEMBER')]/parent::div
${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_InstrumentPanelGloveCompartment}    //dpp-epc-parts-schema-list//div[contains(text(),'INSTRUMENT PANEL & GLOVE COMPARTMENT')]/parent::div
${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_CowlPanelWindshieldGlass}    //dpp-epc-parts-schema-list//div[contains(text(),'COWL PANEL & WINDSHIELD GLASS')]/parent::div
${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_FloorPanLowerBackPanel}    //dpp-epc-parts-schema-list//div[contains(text(),'FLOOR PAN & LOWER BACK PANEL')]/parent::div
${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_FloorInsulator}    //dpp-epc-parts-schema-list//div[contains(text(),'FLOOR INSULATOR')]/parent::div
${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_MatCarpet}    //dpp-epc-parts-schema-list//div[contains(text(),'MAT & CARPET')]/parent::div
${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_ConsoleBoxBracket}    //dpp-epc-parts-schema-list//div[contains(text(),'CONSOLE BOX & BRACKET')]/parent::div
${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_SideMember}    //dpp-epc-parts-schema-list//div[contains(text(),'SIDE MEMBER')]/parent::div
${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_RoofSideVentilator}    //dpp-epc-parts-schema-list//div[contains(text(),'ROOF SIDE VENTILATOR')]/parent::div
${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_QuarterWindow}    //dpp-epc-parts-schema-list//div[contains(text(),'QUARTER WINDOW')]/parent::div
${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_RoofPanelBackWindowGlass}    //dpp-epc-parts-schema-list//div[contains(text(),'ROOF PANEL & BACK WINDOW GLASS')]/parent::div
${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_LuggageCompartmentDoorLock}    //dpp-epc-parts-schema-list//div[contains(text(),'LUGGAGE COMPARTMENT DOOR & LOCK')]/parent::div
${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_EngineHoodLock}    //dpp-epc-parts-schema-list//div[contains(text(),'ENGINE HOOD & LOCK')]/parent::div
${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_InsideTrimBoardDoorOpeningTrimMoulding}    //dpp-epc-parts-schema-list//div[contains(text(),'INSIDE TRIM BOARD & DOOR OPENING TRIM MOULDING')]/parent::div
${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_RoofHeadliningSilencerPad}    //dpp-epc-parts-schema-list//div[contains(text(),'ROOF HEADLINING & SILENCER PAD')]/parent::div
${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_PackageTrayPanelLaggageCompartmentMat}    //dpp-epc-parts-schema-list//div[contains(text(),'PACKAGE TRAY PANEL & LUGGAGE COMPARTMENT MAT')]/parent::div
${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_FrontDoorPanelGlass}    //dpp-epc-parts-schema-list//div[contains(text(),'FRONT DOOR PANEL & GLASS')]/parent::div
${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_FrontDoorLockHandle}    //dpp-epc-parts-schema-list//div[contains(text(),'FRONT DOOR LOCK & HANDLE')]/parent::div
${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_FrondDoorWindowRegulatorHinge}    //dpp-epc-parts-schema-list//div[contains(text(),'FRONT DOOR WINDOW REGULATOR & HINGE')]/parent::div
${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_LockCylinderSet}    //dpp-epc-parts-schema-list//div[contains(text(),'LOCK CYLINDER SET')]/parent::div
${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_FrontSeatSearTrack}    //dpp-epc-parts-schema-list//div[contains(text(),'FRONT SEAT & SEAT TRACK')]/parent::div
${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_SeatBeltChildRestrainSeat}    //dpp-epc-parts-schema-list//div[contains(text(),'SEAT BELT & CHILD RESTRAINT SEAT')]/parent::div
${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_ArmrestVisor}    //dpp-epc-parts-schema-list//div[contains(text(),'ARMREST & VISOR')]/parent::div
${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_BatteryCarrier}    //dpp-epc-parts-schema-list//div[contains(text(),'BATTERY CARRIER')]/parent::div
${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_CautionPlate}    //dpp-epc-parts-schema-list//div[contains(text(),'CAUTION PLATE (EXTERIOR & INTERIOR)')]/parent::div
${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_AshReceptacle}    //dpp-epc-parts-schema-list//div[contains(text(),'ASH RECEPTACLE')]/parent::div
${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_EmplemNamePlate}    //dpp-epc-parts-schema-list//div[contains(text(),'EMBLEM & NAME PLATE (EXTERIOR & INTERIOR)')]/parent::div
${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_FrontMoulding}    //dpp-epc-parts-schema-list//div[contains(text(),'FRONT MOULDING')]/parent::div
${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_SideMoulding}    //dpp-epc-parts-schema-list//div[contains(text(),'SIDE MOULDING')]/parent::div
${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_RearMoulding}    //dpp-epc-parts-schema-list//div[contains(text(),'REAR MOULDING')]/parent::div
${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_MudguardSpoiler}    //dpp-epc-parts-schema-list//div[contains(text(),'MUDGUARD & SPOILER')]/parent::div
${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_FuelTankTube}    //dpp-epc-parts-schema-list//div[contains(text(),'FUEL TANK & TUBE')]/parent::div
${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_AcceleratorLink}    //dpp-epc-parts-schema-list//div[contains(text(),'ACCELERATOR LINK')]/parent::div


#-----------------------------------------------------EPC Page L2 Electrics
${Retail_HK_EPC_L2_Schema_Electrics_CardList_Header}    //dpp-epc-parts-schema-list//div[@class='epc-schema-header pb-4 row m-0']//span[contains(text(),'Electrics')]
${Retail_HK_EPC_L2_Schema_Electrics_CardList_Headlamp}    //dpp-epc-parts-schema-list//div[contains(text(),'HEADLAMP')]/parent::div
${Retail_HK_EPC_L2_Schema_Electrics_CardList_FogLamp}    //dpp-epc-parts-schema-list//div[contains(text(),'FOG LAMP')]/parent::div
${Retail_HK_EPC_L2_Schema_Electrics_CardList_FrontTurnSignalLamp}    //dpp-epc-parts-schema-list//div[contains(text(),'FRONT TURN SIGNAL LAMP')]/parent::div
${Retail_HK_EPC_L2_Schema_Electrics_CardList_SideTurnSignalLampOuterMirrorLamp}    //dpp-epc-parts-schema-list//div[contains(text(),'SIDE TURN SIGNAL LAMP & OUTER MIRROR LAMP')]/parent::div
${Retail_HK_EPC_L2_Schema_Electrics_CardList_RearCombinationLamp}    //dpp-epc-parts-schema-list//div[contains(text(),'REAR COMBINATION LAMP')]/parent::div
${Retail_HK_EPC_L2_Schema_Electrics_CardList_BackUpLamp}    //dpp-epc-parts-schema-list//div[contains(text(),'BACK UP LAMP')]/parent::div
${Retail_HK_EPC_L2_Schema_Electrics_CardList_RearLicensePlateLamp}    //dpp-epc-parts-schema-list//div[contains(text(),'REAR LICENSE PLATE LAMP')]/parent::div
${Retail_HK_EPC_L2_Schema_Electrics_CardList_RearSideMarkerLamp}    //dpp-epc-parts-schema-list//div[contains(text(),'REAR SIDE MARKER LAMP')]/parent::div
${Retail_HK_EPC_L2_Schema_Electrics_CardList_CenterStopLamp}    //dpp-epc-parts-schema-list//div[contains(text(),'CENTER STOP LAMP')]/parent::div
${Retail_HK_EPC_L2_Schema_Electrics_CardList_InteriorLamp}    //dpp-epc-parts-schema-list//div[contains(text(),'INTERIOR LAMP')]/parent::div
${Retail_HK_EPC_L2_Schema_Electrics_CardList_BatteryBatteryCable}    //dpp-epc-parts-schema-list//div[contains(text(),'BATTERY & BATTERY CABLE')]/parent::div
${Retail_HK_EPC_L2_Schema_Electrics_CardList_WiringClamp}    //dpp-epc-parts-schema-list//div[contains(text(),'WIRING & CLAMP')]/parent::div
${Retail_HK_EPC_L2_Schema_Electrics_CardList_Meter}    //dpp-epc-parts-schema-list//div[contains(text(),'METER')]/parent::div
${Retail_HK_EPC_L2_Schema_Electrics_CardList_Indicator}    //dpp-epc-parts-schema-list//div[contains(text(),'INDICATOR')]/parent::div
${Retail_HK_EPC_L2_Schema_Electrics_CardList_SwitchRelayComputer}    //dpp-epc-parts-schema-list//div[contains(text(),'SWITCH & RELAY & COMPUTER')]/parent::div
${Retail_HK_EPC_L2_Schema_Electrics_CardList_ElectronicFuelInjectionSystem}    //dpp-epc-parts-schema-list//div[contains(text(),'ELECTRONIC FUEL INJECTION SYSTEM')]/parent::div
${Retail_HK_EPC_L2_Schema_Electrics_CardList_CruisControl}    //dpp-epc-parts-schema-list//div[contains(text(),'CRUISE CONTROL (AUTO DRIVE)')]/parent::div
${Retail_HK_EPC_L2_Schema_Electrics_CardList_OverdriveElectronicControlledTransmission}    //dpp-epc-parts-schema-list//div[contains(text(),'OVERDRIVE & ELECTRONIC CONTROLLED TRANSMISSION')]/parent::div
${Retail_HK_EPC_L2_Schema_Electrics_CardList_ABSVSC}    //dpp-epc-parts-schema-list//div[contains(text(),'ABS & VSC')]/parent::div
${Retail_HK_EPC_L2_Schema_Electrics_CardList_AntiTheftDevice}    //dpp-epc-parts-schema-list//div[contains(text(),'ANTI-THEFT DEVICE')]/parent::div
${Retail_HK_EPC_L2_Schema_Electrics_CardList_WindshieldWiper}    //dpp-epc-parts-schema-list//div[contains(text(),'WINDSHIELD WIPER')]/parent::div
${Retail_HK_EPC_L2_Schema_Electrics_CardList_WindshieldWasher}    //dpp-epc-parts-schema-list//div[contains(text(),'WINDSHIELD WASHER')]/parent::div
${Retail_HK_EPC_L2_Schema_Electrics_CardList_DoorMotorDoorSolenoid}    //dpp-epc-parts-schema-list//div[contains(text(),'DOOR MOTOR & DOOR SOLENOID')]/parent::div
${Retail_HK_EPC_L2_Schema_Electrics_CardList_RadioReiverAmplifierCondenser}    //dpp-epc-parts-schema-list//div[contains(text(),'RADIO RECEIVER & AMPLIFIER & CONDENSER')]/parent::div
${Retail_HK_EPC_L2_Schema_Electrics_CardList_Speaker}    //dpp-epc-parts-schema-list//div[contains(text(),'SPEAKER')]/parent::div
${Retail_HK_EPC_L2_Schema_Electrics_CardList_Antena}    //dpp-epc-parts-schema-list//div[contains(text(),'ANTENNA')]/parent::div
${Retail_HK_EPC_L2_Schema_Electrics_CardList_Horn}    //dpp-epc-parts-schema-list//div[contains(text(),'HORN')]/parent::div
${Retail_HK_EPC_L2_Schema_Electrics_CardList_Mirror}    //dpp-epc-parts-schema-list//div[contains(text(),'MIRROR')]/parent::div
${Retail_HK_EPC_L2_Schema_Electrics_CardList_HeatingAirConditioningSet}    //dpp-epc-parts-schema-list//div[contains(text(),'HEATING & AIR CONDITIONING - SET')]/parent::div
${Retail_HK_EPC_L2_Schema_Electrics_CardList_HeatingAirConditioningHeaterUnitBlower}    //dpp-epc-parts-schema-list//div[contains(text(),'HEATING & AIR CONDITIONING - HEATER UNIT & BLOWER')]/parent::div
${Retail_HK_EPC_L2_Schema_Electrics_CardList_HeatingAirConditioningCoolerUnit}    //dpp-epc-parts-schema-list//div[contains(text(),'HEATING & AIR CONDITIONING - COOLER UNIT')]/parent::div
${Retail_HK_EPC_L2_Schema_Electrics_CardList_HeatingAirConditioningControlAirDuct}    //dpp-epc-parts-schema-list//div[contains(text(),'HEATING & AIR CONDITIONING - CONTROL & AIR DUCT')]/parent::div
${Retail_HK_EPC_L2_Schema_Electrics_CardList_HeatingAirConditioningWaterPiping}    //dpp-epc-parts-schema-list//div[contains(text(),'HEATING & AIR CONDITIONING - WATER PIPING')]/parent::div
${Retail_HK_EPC_L2_Schema_Electrics_CardList_HeatingAirConditioningVacuumPiping}    //dpp-epc-parts-schema-list//div[contains(text(),'HEATING & AIR CONDITIONING - VACUUM PIPING')]/parent::div
${Retail_HK_EPC_L2_Schema_Electrics_CardList_HeatingAirConditioningCoolerPiping}    //dpp-epc-parts-schema-list//div[contains(text(),'HEATING & AIR CONDITIONING - COOLER PIPING')]/parent::div
${Retail_HK_EPC_L2_Schema_Electrics_CardList_HeatingAirConditioningCompressor}    //dpp-epc-parts-schema-list//div[contains(text(),'HEATING & AIR CONDITIONING - COMPRESSOR')]/parent::div


#-----------------------------------------------------EPC Page L3
${Retail_HK_EPC_L3_SchemaCar_Header_Label}    //div[@class='col-12 d-flex']
${Retail_HK_EPC_L3_SchemaCar_Header_Prev_Button_Disabled}    //div[@class='parts-pagination']//div[@class='col-6 d-flex justify-content-end pr-3']//button[@class='link cx-action-link next-prev-btn' and @disabled='true']
${Retail_HK_EPC_L3_SchemaCar_Header_Next_Button_Disabled}    //div[@class='parts-pagination']//div[@class='col-6 d-flex justify-content-end pr-3']//button[@class='link cx-action-link next-prev-btn' and @disabled='true' and contains(text(),'Next')]
${Retail_HK_EPC_L3_SchemaCar_Header_Prev_Button_Enabled}    //div[@class='parts-pagination']//div[@class='col-6 d-flex justify-content-end pr-3']//button[@class='link cx-action-link next-prev-btn active' and contains(text(),'Prev')]
${Retail_HK_EPC_L3_SchemaCar_Header_Next_Button_Enabled}    //div[@class='parts-pagination']//div[@class='col-6 d-flex justify-content-end pr-3']//button[@class='link cx-action-link next-prev-btn active' and contains(text(),'Next')]

${Retail_HK_EPC_L3_SchemaCar_Diagram}    //dpp-dpp-epc-parts-diagram
${Retail_HK_EPC_L3_PartsListCards_Container}    //dpp-epc-part-list//div[@class='part-list-wrapper d-flex flex-column']
${Retail_HK_EPC_L3_PartsListCards_Options}      (//dpp-epc-part-list//div[@class='part-list-card d-flex flex-column' or @class='part-list-card d-flex flex-column m-0'])

${Retail_HK_EPC_L3_PartsListCards_Options_PartNum}    (//dpp-epc-part-list//div[@class='part-list-card d-flex flex-column' or @class='part-list-card d-flex flex-column m-0']//div[@class='pnc-id'])
${Retail_HK_EPC_L3_PartsListCards_Options_ProdName}    (//dpp-epc-part-list//div[@class='part-list-card d-flex flex-column' or @class='part-list-card d-flex flex-column m-0']//div[@class='pnc-name'])
${Retail_HK_EPC_L3_PartsListCards_Options_Expand_Button}    (//dpp-epc-part-list//div[@class='part-list-card d-flex flex-column' or @class='part-list-card d-flex flex-column m-0']//button//span[contains(text(),'EXPAND')])

${Retail_HK_EPC_L3_PartsListCards_Option_Details_Container}    //dpp-epc-part-detail//div[@class='part-detail-container']
${Retail_HK_EPC_L3_PartsListCards_Option_Details_PartNo_Label}    //dpp-epc-part-detail//div[@class='part-detail-container']//div[@class='header-container']//div[@class='col-2']//p[contains(text(),'Part No')]
${Retail_HK_EPC_L3_PartsListCards_Option_Details_DetailsSpec_Label}    //dpp-epc-part-detail//div[@class='part-detail-container']//div[@class='header-container']//div[@class='col-3']//p[contains(text(),'Details/Spec')]
${Retail_HK_EPC_L3_PartsListCards_Option_Details_Stock_Label}    //dpp-epc-part-detail//div[@class='part-detail-container']//div[@class='header-container']//div[@class='col-1']//p[contains(text(),'Stock')]
${Retail_HK_EPC_L3_PartsListCards_Option_Details_Price_Label}    //dpp-epc-part-detail//div[@class='part-detail-container']//div[@class='header-container']//div[@class='col-2']//p[contains(text(),'Price')]
${Retail_HK_EPC_L3_PartsListCards_Option_Details_Note_Label}    //dpp-epc-part-detail//div[@class='part-detail-container']//div[@class='header-container']//div[@class='col-4']//p[contains(text(),'Note')]

${Retail_HK_EPC_L3_PartsListCards_Option_Details_PartNo_Value}    //dpp-epc-part-detail//div[@class='part-detail-container']//div[@class='row part-details']//div[@class='col-2']//p[@class='m-0 part-no']
${Retail_HK_EPC_L3_PartsListCards_Option_Details_DetailsSpec_Value}    //dpp-epc-part-detail//div[@class='part-detail-container']//div[@class='row part-details']//div[@class='col-3']//p[@class='m-0 compatibility']
${Retail_HK_EPC_L3_PartsListCards_Option_Details_Stock_Value}    //dpp-epc-part-detail//div[@class='part-detail-container']//div[@class='row part-details']//div[@class='col-1']//p
${Retail_HK_EPC_L3_PartsListCards_Option_Details_Price_Value}    //dpp-epc-part-detail//div[@class='part-detail-container']//div[@class='row part-details']//div[@class='col-2' or @class='col-2 pr-0']//p[@class='m-0 price' or @class='m-0 not-available']
${Retail_HK_EPC_L3_PartsListCards_Option_Details_MoreInfo_Button}    //dpp-epc-part-detail//div[@class='part-detail-container']//div[@class='row part-details']//div[@class='col-4 d-flex justify-content-between flex-wrap more-info-wrapper']//span[contains(text(),'More Info')]
${Retail_HK_EPC_L3_PartsListCards_Option_Details_HideInfo_Button}    //dpp-epc-part-detail//div[@class='part-detail-container']//div[@class='row part-details']//div[@class='col-4 d-flex justify-content-between flex-wrap more-info-wrapper']//span[contains(text(),'Hide Info')]

${Retail_HK_EPC_L3_PartsListCards_Option_MoreDetails_Container}    //dpp-epc-part-detail//div[@class='part-detail-container']//div[@class='mt-3 more-details']






















#------------------------YopMail------------------------
${YopMail}    https://yopmail.com/en/

${Yopmail_Banner}    //header//img[@id='logoacc']
${Yopmail_Email_TextBox}    //div[@class='ycolleft']//div[@class='nw']//div[@class='tooltip click']//input
${Yopmail_Email_Next_Button}    //div[@class='ycolleft']//div[@class='ycptctn']//button
${Yopmail_Refresh_Button}    //div[@class='wmmain']//button[@id='refresh']
${Yopmail_Menu_Button}    (//div[@class='wmmain']//div[@class='wminboxheader']//button//i[@class='material-icons-outlined'])[1]
${Yopmail_ClearInbox_Button}    //div[@class='wmmain']//div[@class='wminboxheader']//div[@class='menu']//button[@id='delall']
${Yopmail_InboxMessage_Option1}    (//body[@class='bodyinbox yscrollbar']//div[@class='m'])[1]
${Yopmail_InboxMessage_Option2}    (//body[@class='bodyinbox yscrollbar']//div[@class='m'])[2]

${Yopmail_InboxBody}    //body[@class='bodymail yscrollbar']
${Yopmail_Inbox_Title_Message}    (//div[@class='fl']//div)[1]
${Yopmail_Inbox_Sender_Email}    //div[@class='fl']//div//span
${Yopmail_Inbox_ShowPicture_Button}    //div[@class='fl']//div[@class='noprint']//button

${Yopmail_InboxBody_Header}    //div[@id='mail']//div//tbody//tr//a/parent::div/parent::td
#(//div[@id='mail']//div//tbody//tr)[1]
${Yopmail_InboxBody_Content}     (//div[@id='mail']//div//tbody//tr//table/parent::td)[2]
${Yopmail_InboxBody_Footer}    //div[@id='mail']//div//tbody//tr//a[contains(text(),'Contact Us') or contains(text(),'聯繫我們')]/parent::td
#(//div[@id='mail']//div//tbody//tr)[3]

${Yopmail_Inbox_List_Frame}    ifinbox
${YopMail_Message_Frame}    ifmail

${PartsLaneEmail}    admin@partslane.com.hk




#------------------------Inboxes------------------------
${Inboxes}    https://inboxes.com/
${GetFirstInbox}    //div[@class='flex-row justify-center items-center text-center mt-16 mb-4 lg:mr-8 lg:ml-8']//button[@type='button']
${Add_Inbox_Button}    //div[@class='flex relative max-w-md w-full max-h-full']//button[contains(text(),'Add Inbox')]
${Cancel_Inbox_Button}    //div[@class='flex relative max-w-md w-full max-h-full']//button[contains(text(),'Cancel')]
${Close_Inbox_Button}    //div[@class='flex relative max-w-md w-full max-h-full']//button[@aria-label='Close modal']
${Email_Inbox_TextBox}    //div[@class='flex flex-wrap -mx-3 mb-6']//input
${Email_Inbox_Dropdown}    //div[@class='flex flex-wrap -mx-3 mb-6']//Select
${Email_Inbox_Dropdown_Value}    //div[@class='flex flex-wrap -mx-3 mb-6']//Select//option[@value='robot-mail.com']

${Email_Inbox_Email_Text}    (//h1//span)[2]
${Email_Inbox_Copy_Button}    (//h1//span)[3]
${Email_Inbox_Add_Button}    //button[contains(text(),'Add Inbox')]
${Email_Inbox_DeleteInbox_Button}    //button[contains(text(),'Delete Inbox')]
${Email_Inbox_YourInbox_Button}    //button[contains(text(),'Your inboxes')]

${Email_Inbox_Reload_Button}    //div//button[@title='Reload']
${Email_Inbox_Delete_Button}     //div//button[@title='Delete']

${Email_Inbox_MarkAll_CheckBox}    //div[@class='flex items-center']//input[@type='checkbox']
${Email_Inbox_Message_Selection_1}    (//div//table//tbody//tr[1])

${Email_Inbox_BackToInbox_Button}    //div//a[contains(text(),'Back to Inbox')]

${Email_Inbox_Body_Header}    //tbody//tbody//tr//div
${Email_Inbox_Body_Text}    //tbody//tbody//td//p
${Email_Inbox_Body_Footer}    (//tr//td)[9]

//tbody//tbody//tr//td//a//font[contains(text(),'Contact Us')]




