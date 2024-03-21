*** Settings ***
Documentation       Suite description

Resource  ../../../Resource/testdata/config.robot

*** Variables ***
#-----------------------------------------------------Retail Login Page-------------------------------------------------
${Logo}    //*[@class='logo is-initialized']
${Header}    //div[@class='heading' and (contains(text(),'Login') or (contains(text(),'客戶登入')))]
${Email}    //*[@type='email']
${Pass}    //*[@type='password']
${Remember}    //div[@class='remember-me-checkbox']
${RememberCheck}    //input[@type='checkbox']
${Forgot}    //a[(contains(text(),'Forgot Password')) or contains(text(),'忘記密碼')]
${LoginButton}    //button[@type='submit']
${NoAccount}    //div[@class='not-having-account']
${CreateAccount}    //a[@class='create-account']
${FooterLogo}    //div[@class='footer-logo']
${SP}    //*[(contains(text(),' Shipping Policy ') or contains(text(),'運送政策'))]
${PN}    //*[(contains(text(),' Privacy Policy ') or contains(text(),'私隱條款'))]
${TnC}    //*[contains(text(),' Terms & Conditions ') or contains(text(),'條款及細則')]
${2023}    //*[contains(text(),' © 2023 PartsLane. All Rights Reserved. ') or contains(text(),'2023 Partslane. 保留所有權利.')]
${AboutUs}    //*[(contains(text(),' About Us ') or contains(text(),'關於我們'))]
${FAQ}    //*[(contains(text(),' Frequently Asked Questions ') or contains(text(),'常見問題'))]
${ContactUS}  //*[(contains(text(),' Contact Us ') or contains(text(),'聯絡我們'))]

${ForgotHeader}    //div[@class='heading']
${InvalidEmailMessage}    //*[(contains(text(), 'Please enter a valid email address') or contains(text(),'請輸入正確的電子郵件'))]
${InvalidForgotEmailMessage}    //*[(contains(text(), 'Please enter a valid email address') or contains(text(),'請輸入有效的電子郵件地址'))]
${InvalidEmailPassMessage}    //*[(contains(text(), 'Your username or password was incorrect.') or contains(text(),'您的用戶名或密碼不正確。'))]

${InvalidUser}    Hello
${InvalidEmail}    Hello@yahoo.com
${InvalidPass}    Hello

#-----------------------------------------------------Create Account----------------------------------------------------
${JPL}     //*[(contains(text(), 'Join PartsLane') or contains(text(),'加入PartsLane'))]
${CompanyName}    //div/label/span[(contains(text(),'Company Name') or contains(text(),'公司名稱*'))]
${CMField}    //div/label/input[@formcontrolname='companyName']
${PostalAddress}    //*[(contains(text(), 'Postal Address*') or contains(text(),'郵寄地址*'))]
${PAField}    //form//div[@formgroupname='postalAddress']//div[@class='col-12']//div[@role='combobox']
${AddressLine1}    //div/label/span[@class='label-content color-grey']
${AL1Field}    //div/label/input[@name='postalAddress.addressLine2']
${Area1}    (//*[(contains(text(), 'Area*') or contains(text(),'地區*'))])[1]
${AF1ield}    (//div/label/ng-select[@bindvalue='isocode'])[1]
${District1}    (//div[@class='ng-placeholder'])[3]
${DistrictField1}    (//*[(contains(text(), 'District*') or contains(text(),'區*'))])[1]
${DeliveryAddressPostal}    //div/label/span[@class='label-content checkbox-content']
${DeliveryCheckBox}    //div/label/input[@type='checkbox']
${DeliveryAddress}    //div/input[@autocomplete='a7b792368a61']
${DeliveryField}    //div/input[@autocomplete='a7b792368a61']
${AddressLine2}    (//div/span[@class='label-content'])[2]
${AL2Field}    //div/label/input[@name='deliveryAddress.addressLine2']
${Area2}    (//*[(contains(text(), 'Area*') or contains(text(),'地區*'))])[2]
${AF1ield2}    (//div/label/ng-select[@bindvalue='isocode'])[2]
${District2}    (//div[@class='ng-placeholder'])[6]
${District1Field2}    (//*[(contains(text(), 'District*') or contains(text(),'區*'))])[2]
${OpeningHours}    //*[(contains(text(),' Opening Hours* ') or contains(text(),'營業時間*'))]
${OHField}    (//div[@class='ng-value'])[1]
${ClosingHours}    //*[(contains(text(),'Closing Hours*') or contains(text(),'關閉時間*'))]
${CHField}    (//div[@class='ng-value'])[2]
${FirstName}    //*[(contains(text(),'Contact First Name*') or contains(text(),'聯絡人名字*'))]
${FNfield}    //div/label/input[@placeholder='E.g. John']
${LastName}    //*[(contains(text(),'Contact Last Name*') or contains(text(),'聯絡人姓氏*'))]
${LNField}    //div/label/input[@placeholder='E.g. Doe']
${EmailAddress}    //*[(contains(text(),'Email address*') or contains(text(),'電郵*'))]
${EAField}    //div/label/input[@placeholder='E.g. john123@gmail.com']
${ContactNumber}    //*[(contains(text(),'Company Phone Number*') or contains(text(),'公司電話號碼*'))]
${CNField}    (//div/label/input[@placeholder='E.g. 1234 5678'])[1]
${LandlineNumber}    //*[(contains(text(),'Landline Number (Optional)') or contains(text(),'座機號碼（選填）'))]
${LNField}    (//div/label/input[@placeholder='E.g. 1234 5678'])[2]
${Condition}     //div[@class='terms-block']
${ConditionBox}     //div/input[@formcontrolname='acceptTnc']
${ImnotRobotBox}    //div[@id='rc-anchor-container']
${CaptchaFrame}    reCAPTCHA
${Submit}    //button[@type='submit']

#-----------------------------------------------------FooterLinks-------------------------------------------------------
${AboutUsPage}    //dpp-storefront
${AboutUSId}    //dpp-storefront//h1[(contains(text(),'About Us'))]
${ContactUsPage}    //dpp-storefront
${ContactUsId}    //dpp-storefront//strong[(contains(text(),'Contact Us'))]
${ShippingPolicyPage}    //dpp-storefront
${ShippingId}    //dpp-storefront//h1[(contains(text(),'Delivery Coverage'))]
${PrivacyPage}    //dpp-storefront
${PrivacyId}    //dpp-storefront//span[(contains(text(),'PRIVACY POLICY'))]
${T&CPage}    //dpp-storefront
${T&CId}    //dpp-storefront//span[(contains(text(),'Website Terms of Use'))]
