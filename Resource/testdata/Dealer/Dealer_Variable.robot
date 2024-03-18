*** Settings ***
Documentation       Suite description

Resource  ../../../Resource/testdata/Dealer/AU_Config/AU_S2_Config.robot


*** Variables ***
#-----------------------------------------------------Dealer Login Page-------------------------------------------------
${Logo}    //dpp-login-form//cx-media[@format='logo']
${Header}    //div[@class='heading' and (contains(text(),'Login') or contains(text(),'供應商登入'))]
${Email}    //*[@type='email']
${Pass}    //*[@type='password']
${Remember}    //div[@class='remember-me-checkbox']
${RememberCheck}    //input[@type='checkbox']
${Forgot}    //a[contains(text(),'Forgot Password') or contains(text(),'忘記密碼')]
${LoginButton}    //button[@type='submit']
${NoAccount}    //div[@class='not-having-account']
${CreateAccount}    //a[@class='create-account']
${FooterLogo}    //div[@class='footer-logo']
${PN}    //*[contains(text(),' Privacy Policy ') or contains(text(),'私隱條款')]
${TnC}    //*[contains(text(),' Terms & Conditions ') or contains(text(),'條款及細則')]
${CopyRight}    (//div[@class='wrapper'])[3]

${InvalidEmailMessage}    //div[@class='form-errors']
${InvalidEmailPassMessage}    //div[@class='alert alert-danger']

${SuccessfulLogoutMessage}    //div[@class='alert alert-success']
${SessionExpiredMessage}    //div[@class='alert alert-danger']//span[contains(text(),'Your session has expired.')]

${Dealer_HK_LoginPage_English_Button}    //dpp-language-toggle//span[contains(text(),'EN')]
${Dealer_HK_LoginPage_Chinese_Button}    //dpp-language-toggle//span[contains(text(),'中文')]


#-----------------------------------------------------Dealer Forgot Password Page---------------------------------------
${ResetPassHeader}    //div[contains(text(),'Reset Password')]
${ResetPassSubHead}    //div[@class='subheading']
${ResetPassEmail}    //*[@type='email']
${ResetPassSubmit}    //button[@type='submit']
${ResetPassCreateAccount}    //a[@class='create-account']
${ResetPassErrorMessage}    //div[@class='form-errors']

${ResetPassValidEmail}    Test@yopmail.com
${ResetPassInvalidEmail}    test

#-----------------------------------------------------Dealer Create Account Page----------------------------------------


#-----------------------------------------------------Dealer Home Page--------------------------------------------------
${HomepageLogo}    (//div//a[@href='/dppdealer/'])[1]
${HomepageUserGreeting}    //cx-page-slot[@position='SiteLogin']//div[@class='cx-login-greet']
${HomepageUserAccount}    //dpp-login//button|(//dpp-login//button)[1]
${HomepageUserMyAccount}    (//dpp-navigation//li//a[@href='/dppdealer/my-account/orders'])[1]
${HomepageUserLogout}    //li//a[@href='/dppdealer/logout']
${HomepageOrders}    //dpp-order-notification//cx-icon[@class='cx-icon dpp-icons__header-orders']
${HomepageReturn}    //dpp-return-notification//cx-icon[@class='cx-icon dpp-icons__header-returns']
${HomepageNewBuyer}    //dpp-new-buyer-notification//cx-icon[@class='cx-icon dpp-icons__header-new-buyer']
${HomepageMessage}    //dpp-message-notification//cx-icon[@class='cx-icon dpp-icons__message-header']
${HomepageMyAccountLabel}    //div[@class='myaccount']//h2
${HomepageOrdersMenu}    //ul[@class='vertical-menu tab-level']//*[contains(text(),' Orders ')]
${HomepageReturnMenu}    //ul[@class='vertical-menu tab-level']//*[contains(text(),' Return ')]
${HomepageCustomerMenu}    //ul[@class='vertical-menu tab-level']//*[contains(text(),' Customer ')]
${HomepageCustomerNewReg}    //div[@class='tab-data has-child']//a[contains(text(),'New Registration Request')]
${HomepageCustomerBuyerRelation}    //div[@class='tab-data has-child']//a[contains(text(),'Customer Relationship') or contains(text(),'Buyer Relationship')]
${HomepageCustomerDropdownClosed}    (//ul[@class='vertical-menu tab-level']//div[@class='dropdown-icon'])[1]
${HomepageCustomerDropdownOpen}    (//ul[@class='vertical-menu tab-level']//div[@class='dropdown-icon opened'])[1]
${HomepageMessagesMenu}    //ul[@class='vertical-menu tab-level']//*[contains(text(),' Messages ') or contains(text(),'Inbox')]
${HomepageProfileMenu}    //ul[@class='vertical-menu tab-level']//*[contains(text(),' Profile ')]
${HomepageProfileDropdownClosed}    (//ul[@class='vertical-menu tab-level']//div[@class='dropdown-icon'])[2]
${HomepageProfileDropdownOpen}    (//ul[@class='vertical-menu tab-level']//div[@class='dropdown-icon opened'])[2]
${HomepageProfileAccountDetails}    //div[@class='tab-data has-child']//a[contains(text(),'Account Details')]
${HomepageProfileChangePass}   //div[@class='tab-data has-child']//a[contains(text(),'Change Password')]
${HomepageCompanyMenu}    //ul[@class='vertical-menu tab-level']//a[@class='has-nochild'][contains(text(),' Company ')]
${HomepageCompanyDetails}    //div[@class='tab-data has-child']//a[contains(text(),'Company Details')]
${HomepageCompanyStaff}    //div[@class='tab-data has-child']//a[contains(text(),'Staff')]
${HomepageProfileDropdownClosed}    (//ul[@class='vertical-menu tab-level']//div[@class='dropdown-icon'])[3]
${HomepageProfileDropdownOpen}    (//ul[@class='vertical-menu tab-level']//div[@class='dropdown-icon opened'])[1]
${HomepageSettingsMenu}    //ul[@class='vertical-menu tab-level']//a[@class='has-nochild'][contains(text(),' Settings')]


#-----------------------------------------------------Dealer Order Page-------------------------------------------------
${OrderPagePanelContainer}    //cx-page-slot[@position='BodyContent']
${OrderPageCustomerOderHeader}    //div[@class='cx-order-history-header d-flex']//*[contains(text(),'Customer Orders')]
${OrderPageTotalOrders}    //div[@class='total-orders ml-3']
${OrderPageSortBar}    //div[@class='cx-order-history-sort top']

${OrderPageStatusFilter}    //ng-select[@bindvalue='code']//div[@class='ng-select-container ng-has-value']
${OrderPageStatusFilterALL}    //div[@class='ng-dropdown-panel-items scroll-host']//div[@role='option']//span[contains(text(),'ALL')]
${OrderPageStatusFilterReceived}    //div[@class='ng-dropdown-panel-items scroll-host']//div[@role='option']//span[contains(text(),'Received')]
${OrderPageStatusFilterSubmitted}    //div[@class='ng-dropdown-panel-items scroll-host']//div[@role='option']//span[contains(text(),'Submitted')]
${OrderPageStatusFilterDispatched}    (//div[@class='ng-dropdown-panel-items scroll-host']//div[@role='option']//span[contains(text(),'Dispatched')])[1]
${OrderPageStatusFilterPartiallyDispatched}    //div[@class='ng-dropdown-panel-items scroll-host']//div[@role='option']//span[contains(text(),'Partially Dispatched')]
${OrderPageStatusFilterOrderwithReturns}    //div[@class='ng-dropdown-panel-items scroll-host']//div[@role='option']//span[contains(text(),'Order with Returns')]

${OrderPageDateFilter}    //div[@id='dateRangePicker']
${OrderPageDateFilterContainer}    //ngb-datepicker[@class='dropdown-menu show']
${OrderPageDateFilterPreviousMonth}    //ngb-datepicker-navigation//button[@aria-label='Previous month']
${OrderPageDateFilterNextMonth}    //ngb-datepicker-navigation//button[@aria-label='Next month']
${OrderPageDateFilterSelectMonthDropDown}    //select[@aria-label='Select month']
${OrderPageDateFilterSelectMonth}    (//select[@aria-label='Select month']//option)[2]     #${variable 1-12}
${OrderPageDateFilterSelectYearDropDown}    //select[@aria-label='Select year']
${OrderPageDateFilterSelectYear}    //select[@aria-label='Select year']//option[contains(text(),'2022')]    #${variable 2023}
${OrderPageDateFilterMonthName1}    (//div[@class='ngb-dp-month-name'])[1]
${OrderPageDateFilterMonthName2}    (//div[@class='ngb-dp-month-name'])[2]
${OrderPageDateFilterWeekdays1}    (//div[@class='ngb-dp-week ngb-dp-weekdays'])[1]
${OrderPageDateFilterWeekdays2}    (//div[@class='ngb-dp-week ngb-dp-weekdays'])[2]
${OrderPageDateFilterMonth1Days1stSelection}    (//div[@class='ngb-dp-month'][1]//span[@class='custom-day'])[1]    #${variable 1-31}
${OrderPageDateFilterMonth1Days2ndSelection}    (//div[@class='ngb-dp-month'][1]//span[@class='custom-day'])[15]    #${variable 1-31}
${OrderPageDateFilterMonth2Days1stSelection}    (//div[@class='ngb-dp-month'][2]//span[@class='custom-day'])[1]    #${variable 1-31}
${OrderPageDateFilterMonth2Days2ndSelection}    (//div[@class='ngb-dp-month'][2]//span[@class='custom-day'])[15]    #${variable 1-31}
${OrderPageDateFilterSubmitButton}    //ngb-datepicker//button[@class='btn btn-outline-secondary']
${OrderPageDateFilterClearButton}    //ngb-datepicker//button[@class='btn btn-outline-secondary mr-3']

${OrderPageSearchBox}    //div[@class='input-group']//input[@placeholder='Search']
${OrderPageSearchButton}    //button[@class='btn']
${OrderPageSearchClose}    //cx-icon[@class='cx-icon dpp-icons__close']
${OrderPageSearchValue}    PL0000066002

${OrderPageArrangeFilter}    //cx-sorting//div[@class='ng-select-container ng-has-value']
${OrderPageArrangeFilterNewtoOld}    //cx-sorting//div[@role='option']//span[contains(text(),'Newest to Oldest')]
${OrderPageArrangeFilterOldtoNew}    //cx-sorting//div[@role='option']//span[contains(text(),'Oldest to Newest')]
${OrderPageArrangeFilterOrderNum}    //cx-sorting//div[@role='option']//span[contains(text(),'Order Number')]

${OrderPageArrangeNoOrdersMessage}    //div[@class='noOrders']

${OrderPageDetailsColumn}    //thead
${OrderPageDetailsPartslaneRefLabel}    //th[@class='partslane-reference']
${OrderPageDetailsCustNameLabel}    //th[@class='account-number']
${OrderPageDetailsCustAccNumLabel}    //th[@class='supplier']
${OrderPageDetailsCustOrdNumLabel}    //th[@class='your-reference']
${OrderPageDetailsCustRefLabel}    //th[@class='supplier-reference']
${OrderPageDetailsRegoLabel}    //th[@class='rego']
${OrderPageDetailsOrderDateLabel}    //th[@class='order-date']
${OrderPageDetailsTotalLabel}    //th[@class='total']
${OrderPageDetailsStatusLabel}    //th[@class='status']
${OrderPageDetailsReturnLabel}    //th[@class='return-icon']

${OrderPageHistory1}    (//tr//td[@class='cx-order-history-code']//a[@class='cx-order-history-value'])[1]|(//tr//td[@class='cx-order-history-code'])[1]    #${variable 1-15}

#-----------------------------------------------------Dealer Order Page Received
${OrderPageReceivedContainer}    (//tr[.//td[@class='cx-order-history-total' and contains(text(),'Received')]])[1]|(//tr[.//td[@class='cx-order-history-status' and contains(text(),'Received')]])[1]
${OrderPageReceivedPartRef}    (//tr[.//td[@class='cx-order-history-total' and contains(text(),'Received')]]//td[@class='cx-order-history-code'])[1]|(//tr[.//td[@class='cx-order-history-status' and contains(text(),'Received')]]//td[@class='cx-order-history-code'])[1]

#-----------------------------------------------------Dealer Order Page Submitted
${OrderPageSubmittedContainer}    (//tr[.//td[@class='cx-order-history-total' and contains(text(),'Submitted')]])[1]|(//tr[.//td[@class='cx-order-history-status' and contains(text(),'Submitted')]])[1]
${OrderPageSubmittedPartRef}    (//tr[.//td[@class='cx-order-history-total' and contains(text(),'Submitted')]]//td[@class='cx-order-history-code'])[1]|(//tr[.//td[@class='cx-order-history-status' and contains(text(),'Submitted')]]//td[@class='cx-order-history-code'])[1]

#-----------------------------------------------------Dealer Order Page Dispatched
${OrderPageDispatchedContainer}    (//tr[.//td[@class='cx-order-history-total' and starts-with(text(),' Dispatched ')]])[1]|(//tr[.//td[@class='cx-order-history-status' and starts-with(text(),' Dispatched ')]])[1]
${OrderPageDispatchedPartRef}    (//tr[.//td[@class='cx-order-history-total' and starts-with(text(),' Dispatched ')]]//td[@class='cx-order-history-code'])[1]|(//tr[.//td[@class='cx-order-history-status' and starts-with(text(),' Dispatched ')]]//td[@class='cx-order-history-code'])[1]

#-----------------------------------------------------Dealer Order Page Partially Dispatched
${OrderPagePartiallyDispatchedContainer}    (//tr[.//td[@class='cx-order-history-total' and starts-with(text(),' Partially Dispatched ')]])[1]|(//tr[.//td[@class='cx-order-history-status' and starts-with(text(),' Partially Dispatched ')]])[1]
${OrderPagePartiallyDispatchedPartRef}    (//tr[.//td[@class='cx-order-history-total' and starts-with(text(),' Partially Dispatched ')]]//td[@class='cx-order-history-code'])[1]|(//tr[.//td[@class='cx-order-history-status' and starts-with(text(),' Partially Dispatched ')]]//td[@class='cx-order-history-code'])[1]

#-----------------------------------------------------Dealer Order Page Orders with Returns
${OrderPageOrderwithReturnContainer}    (//tr[.//td[@class='cx-order-history-total']][.//cx-icon[@class='cx-icon dpp-icons__returns-request']])[1]|(//tr[.//td[@class='cx-order-history-status']][.//cx-icon[@class='cx-icon dpp-icons__returns-request']])[1]
${OrderPageOrderwithReturnPartRef}    (//tr[.//td[@class='cx-order-history-total']][.//cx-icon[@class='cx-icon dpp-icons__returns-request']]//td[@class='cx-order-history-code'])[1]|(//tr[.//td[@class='cx-order-history-status']][.//cx-icon[@class='cx-icon dpp-icons__returns-request']]//td[@class='cx-order-history-code'])[1]


${OrderPageDetailsPreviousPageButton}    //a[@aria-label='previous page']
${OrderPageDetailsNextPageButton}    //a[@aria-label='next page']
${OrderPageDetailsPage1Button}    //a[@aria-label='page 1']
${OrderPageDetailsLastPageButton}    //a[@aria-label='last page']
${OrderPageDetailsFirstPageButton}    (//a[@aria-label='first page'])[2]
${OrderPageDetailsNextPageButtonDisabled}    //a[@class='next disabled']
${OrderPageDetailsPreviousPageButtonDisabled}    //a[@class='previous disabled']

#-----------------------------------------------------HK Dealer Order Page-----------------------------------------
${Retail_HK_AccountOrderPageDetailsColumn}    //thead
${Retail_HK_AccountOrderPageDetailsPartslaneRefLabel}   //th[@class='partslane-reference']//span[contains(text(),'PartsLane')]
${Retail_HK_AccountOrderPageDetailsCustAccNumLabel}    //th[@class='company-supplier-name']//span[contains(text(),'Company')]
${Retail_HK_AccountOrderPageDetailsOrderDateLabel}    //th[@class='order-date']//span[contains(text(),'Order')]
${Retail_HK_AccountOrderPageDetailsDeliveryMethod}    //th[@class='delivery-method']//span[contains(text(),'Delivery Method')]
${Retail_HK_AccountOrderPageDetailsPaymentMethod}     //th[@class='payment-method']//span[contains(text(),'Payment')]
${Retail_HK_AccountOrderPageDetailsTotalLabel}    //th[@class='total']//span[contains(text(),'Total')]
${Retail_HK_AccountOrderPageDetailsStatusLabel}    //th[@class='status']//span[contains(text(),'Order Status')]
${Retail_HK_AccountOrderPageDetailsReturnLabel}    //th[@class='return-icon']//span[contains(text(),'Returns')]
${Retail_HK_AccountOrderPageDetailsSupplierLabel}   //thead//span[contains(text(),'Supplier')]

${Retail_HK_AccountOrderPageDetailsReferenceNumber}    (//td[@class='cx-order-history-code'])[1]
${Retail_AccountpageOrdersMenu}    //ul[@class='vertical-menu tab-level']//*[contains(text(),' Orders ')]|//ul[@class='vertical-menu tab-level']//*[contains(text(),' Order History ')]
${Retail_AccountOrderPagePanelContainer}    //cx-page-slot[@position='BodyContent']
#-----------------------------------------------------HK Dealer Order Details Page-----------------------------------------
${OrderPageDetailsReferenceNumber}  (//td[@class='cx-order-history-code'])[1]
${OrderDetailsOrderHeader}    //div[@class='order-header col-12 col-md-9 pl-0' or @class='order-header col-9 pl-0']
${OrderDetailsOrderStatus}    //span[@class='status-value']

${OrderDetailsContainer}    //div[@class='order-details-container']

${OrderDetailsContainerRefNumLabel}    (//div[@class='details']//div[@class='col-12 col-md-5' or @class='col-4'])[1]
${OrderDetailsContainerCustNameLabel}    (//div[@class='details']//div[@class='col-12 col-md-5' or @class='col-4'])[2]
${OrderDetailsContainerComNameLabel}    (//div[@class='details']//div[@class='col-12 col-md-5' or @class='col-4'])[3]
${OrderDetailsContainerADPLabel}    (//div[@class='details']//div[@class='col-12 col-md-5' or @class='col-4'])[4]
${OrderDetailsContainerMembershipLabel}    (//div[@class='details']//div[@class='col-12 col-md-5' or @class='col-4'])[5]
${OrderDetailsContainerOrderDateLabel}    (//div[@class='details']//div[@class='col-12 col-md-5' or @class='col-4'])[6]
${OrderDetailsContainerPaymenMethodLabel}    (//div[@class='details']//div[@class='col-12 col-md-5' or @class='col-4'])[7]
${OrderDetailsContainerDeliveryMethodLabel}    (//div[@class='details']//div[@class='col-12 col-md-5' or @class='col-4'])[8]


${OrderDetailsBackButton}    //span[contains(text(),'Back to Customer Orders')]

${OrderDetailsContainerRefNumValue}    (//div[@class='order-details-container']//span)[1]
${OrderDetailsContainerCustNameValue}    (//div[@class='order-details-container']//span)[2]
${OrderDetailsContainerComNameValue}    (//div[@class='order-details-container']//span)[3]
${OrderDetailsContainerADPValue}    (//div[@class='order-details-container']//span)[4]
${OrderDetailsContainerMembershipValue}    (//div[@class='order-details-container']//span)[5]
${OrderDetailsContainerOrderDateValue}    (//div[@class='order-details-container']//span)[6]
${OrderDetailsContainerPaymenMethodValue}    (//div[@class='col-12 col-md-5' or @class='col-4'])[7]
${OrderDetailsContainerDeliveryMethodValue}    (//div[@class='col-12 col-md-5' or @class='col-4'])[7]

${OrderDetailsReturnContainer}    //div[@class='order-details-items-table return-order-items']

${OrderDetailsReturnHeader}    //div[@class='row header return-request-header']
${OrderDetailsReturnDescription}    //span[@class='order-table-heading' and (contains(text(),'Description'))]
${OrderDetailsReturnPrice}    (//span[@class='order-table-heading' and (contains(text(),'Price'))])[1]
${OrderDetailsReturnRRP}    //span[@class='order-table-heading' and (contains(text(),'RRP'))]
${OrderDetailsReturnOrder}    //span[@class='order-table-heading' and (contains(text(),'Order'))]
${OrderDetailsReturnShipped}    //span[@class='order-table-heading' and (contains(text(),'Shipped'))]
${OrderDetailsReturnPending}    //span[@class='order-table-heading' and (contains(text(),'Pending'))]
${OrderDetailsReturnTotal}    //span[@class='order-table-heading' and (contains(text(),'Total'))]

${OrderDetailsBillingContainer}    //div[@class='billing-address-order-summary-container mt-3']
${OrderDetailsBillingLabel}    //p[(contains(text(),'Billing Address'))]
${OrderDetailsOrderSummaryLabel}    //p[(contains(text(),'Order Summary'))]
${OrderDetailsBillingDetailsAndTotal}    //div[@class='row mt-2 content']
${OrderDetailsAddressField}    //p[@class='address-field']
${OrderDetailsSummaryField}    //div[@class='col-12 col-md-6 col-lg-5 px-0 px-md-3']
${OrderDetailsDeliveryInstructionField}    //div[@class='col-md-12 col-sm-12 px-0 px-md-3']



#-----------------------------------------------------Dealer Retrun Page------------------------------------------------
${ReturnPagePanelContainer}    //cx-page-slot[@position='BodyContent']

${ReturnPageReturnHeader}    //h3[@class='return-requests-heading']
${ReturnPageTotalReturnRequests}    //h3[@class='return-requests-heading']//span
${ReturnPageFilterRow}    //dpp-return-request-list//div[@class='row']

${ReturnPageStatusFilter}    //div[@class='col-11 col-md-3 pr-lg-0 pr-1 pr-md-1 pl-0 pl-md-3' or @class='col-10 col-sm-10 col-md-3 pr-lg-0 pr-0 pr-md-1 pl-0 pl-md-3']//div[@class='ng-select-container ng-has-value']
${RetrunPageStatusFilterALL}    //div[@class='col-11 col-md-3 pr-lg-0 pr-1 pr-md-1 pl-0 pl-md-3' or @class='col-10 col-sm-10 col-md-3 pr-lg-0 pr-0 pr-md-1 pl-0 pl-md-3']//div[@role='option']//span[contains(text(),'All')]
${RetrunPageStatusFilterAccepted}    //div[@class='col-11 col-md-3 pr-lg-0 pr-1 pr-md-1 pl-0 pl-md-3' or @class='col-10 col-sm-10 col-md-3 pr-lg-0 pr-0 pr-md-1 pl-0 pl-md-3']//div[@role='option']//span[contains(text(),'Accepted')]
${RetrunPageStatusFilterDeclined}    //div[@class='col-11 col-md-3 pr-lg-0 pr-1 pr-md-1 pl-0 pl-md-3' or @class='col-10 col-sm-10 col-md-3 pr-lg-0 pr-0 pr-md-1 pl-0 pl-md-3']//div[@role='option']//span[contains(text(),'Declined')]
${RetrunPageStatusFilterInProgress}    //div[@class='col-11 col-md-3 pr-lg-0 pr-1 pr-md-1 pl-0 pl-md-3' or @class='col-10 col-sm-10 col-md-3 pr-lg-0 pr-0 pr-md-1 pl-0 pl-md-3']//div[@role='option']//span[contains(text(),'In Progress')]

${ReturnPageDateFilter}    //button[@class='calendar']
${ReturnPageDateFilterContainer}    //ngb-datepicker[@class='dropdown-menu show']
${ReturnPageDateFilterPreviousMonth}    //ngb-datepicker-navigation//button[@aria-label='Previous month']
${ReturnPageDateFilterNextMonth}    //ngb-datepicker-navigation//button[@aria-label='Next month']
${ReturnPageDateFilterSelectMonthDropDown}    //select[@aria-label='Select month']
${ReturnPageDateFilterSelectMonth}    //select[@aria-label='Select month']//option[2]     #${variable 1-12}
${ReturnPageDateFilterSelectYearDropDown}    //select[@aria-label='Select year']
${ReturnPageDateFilterSelectYear}    //select[@aria-label='Select year']//option[contains(text(),'2020')]    #${variable 2023}
${ReturnPageDateFilterMonthName1}    (//div[@class='ngb-dp-month-name'])[1]
${ReturnPageDateFilterMonthName2}    (//div[@class='ngb-dp-month-name'])[2]
${ReturnPageDateFilterWeekdays1}    (//div[@class='ngb-dp-week ngb-dp-weekdays'])[1]
${ReturnPageDateFilterWeekdays2}    (//div[@class='ngb-dp-week ngb-dp-weekdays'])[2]
${ReturnPageDateFilterMonth1Days1stSelection}    (//div[@class='ngb-dp-month'][1]//span[@class='custom-day'])[1]    #${variable 1-31}
${ReturnPageDateFilterMonth1Days2ndSelection}    (//div[@class='ngb-dp-month'][1]//span[@class='custom-day'])[15]    #${variable 1-31}
${ReturnPageDateFilterMonth2Days1stSelection}    (//div[@class='ngb-dp-month'][2]//span[@class='custom-day'])[1]    #${variable 1-31}
${ReturnPageDateFilterMonth2Days2ndSelection}    (//div[@class='ngb-dp-month'][2]//span[@class='custom-day'])[15]    #${variable 1-31}
${ReturnPageDateFilterSubmitButton}    //ngb-datepicker//button[@class='btn btn-outline-secondary']
${ReturnPageDateFilterClearButton}    //ngb-datepicker//button[@class='btn btn-outline-secondary mr-3']

${RetrunPageSearchBox}    //div[@class='input-group']//input[@placeholder='Search']
${ReturnPageSearchClose}    //cx-icon[@class='cx-icon dpp-icons__close']
${RetrunPageSearchButton}    //button[@class='btn']
${ReturnPageSearchValue}    PL0000047003

${RetrunPageArrangeFilter}    //div[@class='col-md-3' or @class='col-6 col-md-4 pl-0 pr-0 pr-md-3']//div
${ReturnPageArrangeFilterNewtoOld}    //div[@class='col-md-3' or @class='col-6 col-md-4 pl-0 pr-0 pr-md-3']//div[@role='option']//span[contains(text(),'Newest to Oldest')]
${ReturnPageArrangeFilterOldtoNew}    //div[@class='col-md-3' or @class='col-6 col-md-4 pl-0 pr-0 pr-md-3']//div[@role='option']//span[contains(text(),'Oldest to Newest')]

${ReturnPageNoRequestMessage}    //dpp-return-request-list[contains(text(),'No return request found.')]

${ReturnPageDetailsColumn}    //thead
${ReturnPageDetailsRetrunRequestIDLabel}    //th[@class='return-request-id']
${ReturnPageDetailsRefLabel}    //th[@class='partslane-reference']
${ReturnPageDetailsCustOrdNumLabel}    //th[@class='your-reference dpp-dealer']
${ReturnPageDetailsCustNameLabel}    //th[@class='customer-name']
${ReturnPageDetailsSupRefLabel}    //th[@class='supplier-reference dpp-dealer']
${ReturnPageDetailsReqDateLabel}    //th[@class='request-date dpp-dealer']
${ReturnPageDetailsStatusLabel}    //th[@class='total']

${ReturnPageHistory1}    (//td//a[@class='cx-return-requests-value'])[1]|(//div//a[@class='cx-return-requests-value'])[1]

#-----------------------------------------------------Dealer Retrun Page Accepted
${ReturnPageAcceptedContainer}    (//tr[.//td[@class='cx-return-requests-total status-col-value' and contains(text(),'Accepted')]])[1]|(//div[@class='row return-content'][.//div//span[contains(text(),'Accepted')]])[1]
${ReturnPageAcceptedReturnID}    (//tr[.//td[@class='cx-return-requests-total status-col-value' and contains(text(),'Accepted')]]//td[@class='cx-return-requests-code']/a)[1]|(//div[@class='row return-content'][.//div//span[contains(text(),'Accepted')]]//div[@class='col']/a)[1]

#-----------------------------------------------------Dealer Retrun Page Declined
${ReturnPageDeclinedContainer}    (//tr[.//td[@class='cx-return-requests-total status-col-value' and contains(text(),'Declined')]])[1]|(//div[@class='row return-content'][.//div//span[contains(text(),'Declined')]])[1]
${ReturnPageDeclinedReturnID}    (//tr[.//td[@class='cx-return-requests-total status-col-value' and contains(text(),'Declined')]]//td[@class='cx-return-requests-code']/a)[1]|(//div[@class='row return-content'][.//div//span[contains(text(),'Declined')]]//div[@class='col']/a)[1]

#-----------------------------------------------------Dealer Retrun Page In Progress
${ReturnPageInProgressContainer}    (//tr[.//td[@class='cx-return-requests-total status-col-value' and contains(text(),'In Progress')]])[1]|(//div[@class='row return-content'][.//div//span[contains(text(),'In Progress')]])[1]
${ReturnPageInProgressReturnID}    (//tr[.//td[@class='cx-return-requests-total status-col-value' and contains(text(),'In Progress')]]//td[@class='cx-return-requests-code']/a)[1]|(//div[@class='row return-content'][.//div//span[contains(text(),'In Progress')]]//div[@class='col']/a)[1]

${ReturnPageDetailsPreviousPageButton}    //a[@aria-label='previous page']
${ReturnPageDetailsNextPageButton}    //a[@aria-label='next page']
${ReturnPageDetailsPage1Button}    //a[@aria-label='page 1']
${ReturnPageDetailsLastPageButton}    //a[@aria-label='last page']
${ReturnPageDetailsFirstPageButton}    //a[@aria-label='first page']
${ReturnPageDetailsNextPageButtonDisabled}    //a[@class='next disabled']
${ReturnPageDetailsPreviousPageButtonDisabled}    //a[@class='previous disabled']

#-----------------------------------------------------Dealer Retrun Details Page----------------------------------------
#${ReturnPageOrderDetailsHeader}    //span[@class='return-request-heading']
${ReturnPageOrderDetailsHeader}    //span[contains(text(),'Return Request')]
${ReturnPageOrderDetailsStatus}    //span[@class='status']
${ReturnPageOrderDetailsBack}    //a[@class='back-to-order-history']
${ReturnPageOrderDetailsContainer}    //div[@class='order-details-container']
${ReturnPageOrderDetailsPartsRefLabel}    //div[@class='col-12 col-md-5' or @class='col-4']//p[(contains(text(),'PartsLane Reference'))]
${ReturnPageOrderDetailsCustOrderNumLabel}    //div[@class='col-12 col-md-5' or @class='col-4']//p[(contains(text(),'Customer Order Number'))]
${ReturnPageOrderDetailsCustNameLabel}    //div[@class='col-12 col-md-5' or @class='col-4']//p[(contains(text(),'Customer Name'))]
${ReturnPageOrderDetailsSupRefLabel}    //div[@class='col-12 col-md-5' or @class='col-4']//p[(contains(text(),'Supplier Reference'))]
${ReturnPageOrderDetailsSupLabel}    (//div[@class='col-12 col-md-5' or @class='col-4']//p[(contains(text(),'Supplier'))])[1]
${ReturnPageOrderDetailsOrderDateLabel}    //div[@class='col-12 col-md-5' or @class='col-4']//p[(contains(text(),'Order Date'))]
${ReturnPageOrderDetailsRetReqDateLabel}    //div[@class='col-12 col-md-5' or @class='col-4']//p[(contains(text(),'Return Request Date'))]
${ReturnPageOrderDetailsPartsRefValue}    (//div[@class='col']//span)[1]
${ReturnPageOrderDetailsCustOrderNumValue}    (//div[@class='col']//span)[2]
${ReturnPageOrderDetailsCustNameValue}    (//div[@class='col']//span)[3]
${ReturnPageOrderDetailsSupRefValue}    (//div[@class='col']//span)[4]
${ReturnPageOrderDetailsSupValue}    (//div[@class='col']//span)[5]
${ReturnPageOrderDetailsOrderDateValue}    (//div[@class='col']//span)[6]
${ReturnPageOrderDetailsRetReqDateValue}    (//div[@class='col']//span)[7]

${ReturnPageOrderReturnContainer}    //table
${ReturnPageOrderReturnHeader}    //h2[@class='returned']
${ReturnPageOrderReturnItemList}    //table[@class='return-request-detail-table']

${ReturnPageOrderReturnDataSectionContainer}    //div[@class='cancel-order-container' or @class='return-request-data-section']
${ReturnPageOrderReturnDataSectionReasonLabel}    //div[@class='form-group']//span[@class='label-content']
${ReturnPageOrderReturnDataSectionReasonSelection}    //div[@class='ng-select-container ng-has-value']
${ReturnPageOrderReturnDataSectionQtyLabel}    //div[@class='form-group']//span[@class='label-content qty-return']
${ReturnPageOrderReturnDataSectionQtyValue}    //div[@class='col-3 pl-0']//input
${ReturnPageOrderReturnDataSectionNoteLabel}    //div[@class='form-group col-12']//span[@class='label-content']
${ReturnPageOrderReturnDataSectionNoteTextField}    //div[@class='form-group col-12']//textarea
${ReturnPageOrderReturnDataSectionImageLabel}    //div[@class='form-group pl-0 col-12']//label
${ReturnPageOrderReturnDataSectionImageField}    //div[@class='d-flex image-section']

${ReturnPageOrderReturnApproveRejectContainer}     //div[@class='approve-reject-contanier']
${ReturnPageOrderReturnApproveButton}    //input[@type='radio' and @id='approve']
${ReturnPageOrderReturnApproveLabel}    //div//label[@for='approve']
${ReturnPageOrderReturnRejectButton}    //input[@type='radio' and @id='reject']
${ReturnPageOrderReturnRejectLabel}    //div//label[@for='reject']
${ReturnPageOrderReturnNoteLabel}    //div//label[@for='approveReject']
${ReturnPageOrderReturnApproveRejectNoteTextField}    //div//textarea[@name='approveReject']

${ReturnPageOrderReturnConfirmButton}    //button[@class='btn btn-secondary confirm-status-btn']

${ReturnPageOrderReturnConfirmConfirmationModal}    //div[@class='cx-modal-content modal-body']
${ReturnPageOrderReturnConfirmConfirmationCancelButton}    //div[@class='cx-modal-content modal-body']//button[@class='btn btn-block btn-outline-secondary']
${ReturnPageOrderReturnConfirmConfirmationConfirmButton}    //div[@class='cx-modal-content modal-body']//button[@class='btn btn-block btn-secondary']

${ReturnPageOrderReturnMessageContainer}    //div[@class='approve-reject-contanier']
${ReturnPageOrderReturnMessageSupplierButton}    //button[@class='btn btn-outline-secondary']

${ReturnPageOrderReturnDetailsMessagePopUpContainer}    //div[@class='cx-dialog-body modal-body']
${ReturnPageOrderReturnDetailsMessagePopUpToSupplierLabel}    //div[@class='col-sm-12 header']//span[@class='message-subject mb-1']
${ReturnPageOrderReturnDetailsMessagePopUpSubjectLabel}    //div[@class='col-sm-12']//span[contains(text(),'Subject')]
${ReturnPageOrderReturnDetailsMessagePopUpMessageLabel}    //div[@class='col-sm-12']//span[contains(text(),'Message')]
${ReturnPageOrderReturnDetailsMessagePopUpUploadLabel}     //div[@class='col-sm-12']//p

${ReturnPageOrderReturnDetailsMessagePopUpToSupplierTextBox}    //div[@class='col-sm-12 header']//input[@type='text']
${ReturnPageOrderReturnDetailsMessagePopUpSubjectTextBox}    //div[@class='col-sm-12']//input[@type='text']
${ReturnPageOrderReturnDetailsMessagePopUpMessageTextBox}    //div[@class='col-sm-12']//textarea[@formcontrolname='message']

${ReturnPageOrderReturnDetailsMessagePopUpUploadedImageContainer}    //div[@class='images-container']
${ReturnPageOrderReturnDetailsMessagePopUpUploadButton}    //button[@class='btn image-upload']
${ReturnPageOrderReturnDetailsMessagePopUpUploadImage}    //input[@type='file']

${ReturnPageOrderReturnDetailsMessagePopUpCancelButton}    //button[@class='btn btn-sm btn-outline-secondary']
${ReturnPageOrderReturnDetailsMessagePopUpSendButton}    //button[@class='btn btn-sm btn-secondary ml-2']

${ReturnPageOrderReturnDetailsMessagePopUpSendThankModal}    //div[@class='cx-modal-content']
${ReturnPageOrderReturnDetailsMessagePopUpSendThankButton}    //div[@class='cx-modal-content']//button[@class='btn btn-secondary']

#-----------------------------------------------------Dealer Retrun Details Page Values
${ReturnPageOrderReturnApproveRejectNoteValue}    Hello World QE Test
${ReturnPageOrderReturnDetailsMessagePopUpUpMessabeValue}    Hello World QE Test

#-----------------------------------------------------Dealer New Reg Req Page-------------------------------------------
${NewRegReqPagePanelContainer}    //div[@class='registration-request']
${NewRegReqPagePanelHeader}    //div[@class='registration-request']//h3

${NewRegReqPageNumReqHeader}    //div[@class='col-md-7']//h4
${NewRegReqPageFilterLabel}    //div[@class='form-group']
${NewRegReqPageFilterSelection}    //div[@class='col-md-5']//div[@class='ng-select-container ng-has-value']
${NewRegReqPageFilterAll}    //div[@class='col-md-5']//div[@role='option']//span[contains(text(),'All')]
${NewRegReqPageFilterInProgress}    //div[@class='col-md-5']//div[@role='option']//span[contains(text(),'In Progress')]
${NewRegReqPageFilterApproved}    //div[@class='col-md-5']//div[@role='option']//span[contains(text(),'Approved')]
${NewRegReqPageFilterRejected}    //div[@class='col-md-5']//div[@role='option']//span[contains(text(),'Rejected')]

${NewRegReqPageAccNumLabel}    //th[@scope='col' and contains(text(),'Account Number')]
${NewRegReqPageCompanyNameLabel}    //th[@scope='col' and contains(text(),'Company Name')]
${NewRegReqPageDateLabel}    //th[@scope='col' and contains(text(),'Date')]
${NewRegReqPageStatusLabel}    //th[@scope='col' and contains(text(),'Status')]

${NewRegReqPageHistory1}    (//td[@class='cx-order-history-code']//a[@class='cx-buyer-registration-pk-value'])[1]

${NewRegReqPageDetailsPreviousPageButton}    //a[@aria-label='previous page']
${NewRegReqPageDetailsNextPageButton}    //a[@aria-label='next page']
${NewRegReqPageDetailsPage1Button}    //a[@aria-label='page 1']
${NewRegReqPageDetailsLastPageButton}    //a[@aria-label='last page']
${NewRegReqPageDetailsFirstPageButton}    //a[@aria-label='first page']
${NewRegReqPageDetailsNextPageButtonDisabled}    //a[@class='next disabled']
${NewRegReqPageDetailsPreviousPageButtonDisabled}    //a[@class='previous disabled']


#-----------------------------------------------------Dealer New Registraion Page Approved
${NewRegReqPageApprovedContainer}    (//tr[.//td//span[@class='color-green']])[1]
${NewRegReqPageApprovedAccNum}    (//tr[.//td//span[@class='color-green']]//td[@class='cx-order-history-code'])[1]
${NewRegReqPageApprovedCompName}    (//tr[.//td//span[@class='color-green']]//td[@class='cx-order-history-placed'])[1]
${NewRegReqPageApprovedDate}    (//tr[.//td//span[@class='color-green']]//td[@class='cx-order-history-total'][1])[1]
${NewRegReqPageApprovedStatus}    (//tr[.//td//span[@class='color-green']]//td[@class='cx-order-history-total'][2])[1]

#-----------------------------------------------------Dealer New Registraion Page Rejected
${NewRegReqPageRejectedContainer}    (//tr[.//td//span[@class='color-red']])[1]
${NewRegReqPageRejectedAccNum}    (//tr[.//td//span[@class='color-red']]//td[@class='cx-order-history-code'])[1]
${NewRegReqPageRejectedCompName}    (//tr[.//td//span[@class='color-red']]//td[@class='cx-order-history-placed'])[1]
${NewRegReqPageRejectedDate}    (//tr[.//td//span[@class='color-red']]//td[@class='cx-order-history-total'][1])[1]
${NewRegReqPageRejectedStatus}    (//tr[.//td//span[@class='color-red']]//td[@class='cx-order-history-total'][2])[1]

#-----------------------------------------------------Dealer New Registraion Page In Progress
${NewRegReqPageInProgressContainer}    (//tr[.//td//span[@class='color-yellow']])[1]
${NewRegReqPageInProgressAccNum}    (//tr[.//td//span[@class='color-yellow']]//td[@class='cx-order-history-code'])[1]
${NewRegReqPageInProgressCompName}    (//tr[.//td//span[@class='color-yellow']]//td[@class='cx-order-history-placed'])[1]
${NewRegReqPageInProgressDate}    (//tr[.//td//span[@class='color-yellow']]//td[@class='cx-order-history-total'][1])[1]
${NewRegReqPageInProgressStatus}    (//tr[.//td//span[@class='color-yellow']]//td[@class='cx-order-history-total'][2])[1]

#${NewRegReqPageRejectedContainer}    (//tr[.//span[@class='color-red']])[1]
#${NewRegReqPageRejectedCompNameContainer}    (//tr[.//span[@class='color-red']]//td[@class='cx-order-history-code'])[1]
#${NewRegReqPageRejectedAccountNumContainer}    (//tr[.//span[@class='color-red']]//td[@class='cx-order-history-placed'])[1]
#${NewRegReqPageRejectedDateContainer}    (//tr[.//span[@class='color-red']]//td[@class='cx-order-history-total'][1])[1]
#${NewRegReqPageRejectedStatusContainer}    (//tr[.//span[@class='color-red']]//td[@class='cx-order-history-total'][2])[1]


#-----------------------------------------------------Dealer New Reg Req Buyer Details Page-----------------------------
${NewRegReqPageBuyerDetailsBackToReg}    //a[@class='back-to-registration-request']//div[@class='ml-2']

${NewRegReqPageBuyerDetailsPanelContainer}    //div[@class='cx-section']
${NewRegReqPageBuyerDetailsPanelHeader}    //div[@class='cx-section']//h1
${NewRegReqPageBuyerDetailsStatus}    //span[@class='status-container']//span
${NewRegReqPageBuyerDetailsPrefSupLabel}    //span[@class='label-content'][contains(text(),'Preferred Supplier')]
${NewRegReqPageBuyerDetailsAccNumLabel}    //span[@class='label-content'][contains(text(),'Account Number')]
${NewRegReqPageBuyerDetailsCompNameLabel}    //span[@class='label-content'][contains(text(),'Company Name')]
${NewRegReqPageBuyerDetailsTradeNameLabel}    //span[@class='label-content'][contains(text(),'Trading Name')]
${NewRegReqPageBuyerDetailsPostalAddLabel}    //span[@class='label-content'][contains(text(),'Postal Address')]
${NewRegReqPageBuyerDetailsAdd1Label}    //span[@class='label-content color-grey'][contains(text(),'Address Line 1')]
${NewRegReqPageBuyerDetailsAdd2Label}    //span[@class='label-content color-grey'][contains(text(),'Address Line 2')]
${NewRegReqPageBuyerDetailsSuburbLabel}    //span[@class='label-content'][contains(text(),'Suburb')]
${NewRegReqPageBuyerDetailsPostalCodeLabel}    //span[@class='label-content'][contains(text(),'Postal Code')]
${NewRegReqPageBuyerDetailsStateLabel}    (//span[@class='label-content'][contains(text(),'State')])[1]
${NewRegReqPageBuyerDetailsDelAddCheckLabel}    //span[@class='label-content checkbox-content']
${NewRegReqPageBuyerDetailsABNRadioLabel}    //div[@class='form-group']//label[@for='abn']
${NewRegReqPageBuyerDetailsACNRadioLabel}    //div[@class='form-group']//label[@for='acn']
${NewRegReqPageBuyerDetailsABNLabel}    //span[@class='label-content'][contains(text(),'ABN')]
${NewRegReqPageBuyerDetailsOpeningLabel}    //span[@class='label-content'][contains(text(),'Opening Hours')]
${NewRegReqPageBuyerDetailsClosingLabel}    //span[@class='label-content'][contains(text(),'Closing Hours')]
${NewRegReqPageBuyerDetailsContactFNLabel}    //span[@class='label-content'][contains(text(),'Contact First Name')]
${NewRegReqPageBuyerDetailsContactLNLabel}    //span[@class='label-content'][contains(text(),'Contact Last Name')]
${NewRegReqPageBuyerDetailsEmailAddLabel}    //span[@class='label-content'][contains(text(),'Email address')]
${NewRegReqPageBuyerDetailsCompPhoneNumLabel}    //span[@class='label-content'][contains(text(),'Company Phone Number')]
${NewRegReqPageBuyerDetailsLandNumLabel}    //span[@class='label-content'][contains(text(),'Landline Number')]

${NewRegReqPageBuyerDetailsApprovalLabel}    //span[@class='label-content'][contains(text(),'Approval Comments')]
${NewRegReqPageBuyerDetailsRejectLabel}    //span[@class='label-content'][contains(text(),'Rejection Comments')]

${NewRegReqPageBuyerDetailsPrefSelComboBox}    (//div[@class='ng-select-container ng-has-value'])[1]
${NewRegReqPageBuyerDetailsAccTextBox}    //div[@class='col-md-6']//input[@formcontrolname='accountNumber']
${NewRegReqPageBuyerDetailsCompNameTextBox}    //div[@class='col-md-6']//input[@formcontrolname='companyName']
${NewRegReqPageBuyerDetailsTradeNameTextBox}    //div[@class='col-md-6']//input[@formcontrolname='tradingName']
${NewRegReqPageBuyerDetailsAdd1TextBox}    //div[@formgroupname='postalAddress']//input[@formcontrolname='addressLine1']
${NewRegReqPageBuyerDetailsAdd2TextBox}    //div[@formgroupname='postalAddress']//input[@formcontrolname='addressLine2']
${NewRegReqPageBuyerDetailsSuburbTextBox}    //div[@formgroupname='postalAddress']//input[@formcontrolname='suburb']
${NewRegReqPageBuyerDetailsPostalCodeTextBox}    //div[@formgroupname='postalAddress']//input[@formcontrolname='postalCode']
${NewRegReqPageBuyerDetailsStateComboBox}    //div[@formgroupname='postalAddress']//div[@class='ng-select-container ng-has-value']
${NewRegReqPageBuyerDetailsDelAddCheckBox}    //input[@type='checkbox']
${NewRegReqPageBuyerDetailsABNButton}    //div[@class='form-group']//input[@type='radio' and @value='abn']
${NewRegReqPageBuyerDetailsACNButton}    //div[@class='form-group']//input[@type='radio' and @value='acn']
${NewRegReqPageBuyerDetailsABNTextBox}    //div[@class='form-group']//input[@formcontrolname='number']
${NewRegReqPageBuyerDetailsOpeningComboBox}    //ng-select[@formcontrolname='openingHours']//div[@class='ng-select-container ng-has-value' or @class='ng-value-container']
${NewRegReqPageBuyerDetailsClosingComboBox}    //ng-select[@formcontrolname='closingHours']//div[@class='ng-select-container ng-has-value' or @class='ng-value-container']
${NewRegReqPageBuyerDetailsContactFNTextBox}    //div[@class='form-group']//input[@formcontrolname='contactFirstName']
${NewRegReqPageBuyerDetailsContactLNTextBox}    //div[@class='form-group']//input[@formcontrolname='contactLastName']
${NewRegReqPageBuyerDetailsEmailAddTextBox}    //div[@class='form-group']//input[@formcontrolname='email']
${NewRegReqPageBuyerDetailsCompPhoneNumTextBox}    //div[@class='form-group']//input[@formcontrolname='mobileNumber']
${NewRegReqPageBuyerDetailsLandNumTextBox}    //div[@class='form-group']//input[@formcontrolname='landlineNumber']

${NewRegReqPageBuyerDetailsApproveRejectTextBox}    //textarea[@formcontrolname='number']
${NewRegReqPageBuyerDetailsRejectButton}    //button[@class='btn btn-outline-secondary']
${NewRegReqPageBuyerDetailsAcceptButton}    //button[@class='btn btn-secondary ml-2']

#${NewRegReqPageBuyerDetailsStatusTextArea}    //label//textarea[@class='form-control textarea-control']


#-----------------------------------------------------Dealer Customer Rel Page------------------------------------------
${BuyerRelPagePanelContainer}    //dpp-buyer-relationship|//dpp-hk-buyer-relationship
${BuyerRelPagePanelHeader}    //dpp-buyer-relationship//h3|//dpp-hk-buyer-relationship//h3
${CustRelPageDesc}    //p[@class='description']
${CustRelPageBuyerLabel}    //th[@class='item']
${CustRelPageActiveLabel}    //th[contains(text(),'Active')]

${CustRelPageCustName}    (//tr[.//input[@type='checkbox']]//td[@class='item'])[1]
${CustRelPageCustCheckbox}    (//tr[.//td[@class='item']]//input[@type='checkbox'])[1]

${CustRelPageCheckbox}    (//td[@class='chkbox']//input[@type='checkbox'])[1]
${CustRelPageModal}    //div[@class='cx-modal-content']
${CustRelPageModalYes}    //div[@class='cx-dialog-row text-center']//button[contains(text(),'Yes')]
${CustRelPageModalNo}    //div[@class='cx-dialog-row text-center']//button[contains(text(),'No')]

#-----------------------------------------------------Dealer Message Page-----------------------------------------------
${MessagePagePanelContainer}    //dpp-message-list
${MessagePagePanelHeader}    //dpp-message-list//h3
${MessagePageReadMessages}    //div[@class='row message-container']
${MessagePageUnreadMessages}    //div[@class='row message-container not-read']
${MessagePageReadMessagesProdEnq}    //div[@class='row message-container']//div[@class='pl-1 pointer enquiry-col-value col-2']//span[contains(text(),'PRODUCT ENQUIRY')]
${MessagePageReadMessagesGenEnq}    //div[@class='row message-container']//div[@class='pl-1 pointer enquiry-col-value col-2']//span[contains(text(),'GENERAL ENQUIRY')]
${MessagePageReadMessagesOrdEnq}    //div[@class='row message-container']//div[@class='pl-1 pointer enquiry-col-value col-2']//span[contains(text(),'ORDER ENQUIRY')]

${MessagePageEnquiryFilter}    //ng-select[@bindvalue='code']//div[@class='ng-select-container ng-has-value']
${MessagePageEnquiryFilterAll}    //div[@class='ng-dropdown-panel-items scroll-host']//span[contains(text(),'ALL')]
${MessagePageEnquiryFilterProductEnquiry}    //div[@class='ng-dropdown-panel-items scroll-host']//span[contains(text(),'Product Enquiry')]
${MessagePageEnquiryFilterOrderEnquiry}    //div[@class='ng-dropdown-panel-items scroll-host']//span[contains(text(),'Order Enquiry')]
${MessagePageEnquiryFilterReturnEnquiry}    //div[@class='ng-dropdown-panel-items scroll-host']//span[contains(text(),'Return Enquiry')]
${MessagePageEnquiryFilterGeneralEnquiry}    //div[@class='ng-dropdown-panel-items scroll-host']//span[contains(text(),'General Enquiry')]

${MessagePageDateFilter}    //div[@id='dateRangePicker']
${MessagePageDateFilterContainer}    //ngb-datepicker[@class='dropdown-menu show']
${MessagePageDateFilterPreviousMonth}    //ngb-datepicker-navigation//button[@aria-label='Previous month']
${MessagePageDateFilterNextMonth}    //ngb-datepicker-navigation//button[@aria-label='Next month']
${MessagePageDateFilterSelectMonthDropDown}    //select[@aria-label='Select month']
${MessagePageDateFilterSelectMonth}    (//select[@aria-label='Select month']//option)[2]     #${variable 1-12}
${MessagePageDateFilterSelectYearDropDown}    //select[@aria-label='Select year']
${MessagePageDateFilterSelectYear}    //select[@aria-label='Select year']//option[contains(text(),'2022')]    #${variable 2023}
${MessagePageDateFilterMonthName1}    (//div[@class='ngb-dp-month-name'])[1]
${MessagePageDateFilterMonthName2}    (//div[@class='ngb-dp-month-name'])[2]
${MessagePageDateFilterWeekdays1}    (//div[@class='ngb-dp-week ngb-dp-weekdays'])[1]
${MessagePageDateFilterWeekdays2}    (//div[@class='ngb-dp-week ngb-dp-weekdays'])[2]
${MessagePageDateFilterMonth1Days1stSelection}    (//div[@class='ngb-dp-month'][1]//span[@class='custom-day'])[1]    #${variable 1-31}
${MessagePageDateFilterMonth1Days2ndSelection}    (//div[@class='ngb-dp-month'][1]//span[@class='custom-day'])[15]    #${variable 1-31}
${MessagePageDateFilterMonth2Days1stSelection}    (//div[@class='ngb-dp-month'][2]//span[@class='custom-day'])[1]    #${variable 1-31}
${MessagePageDateFilterMonth2Days2ndSelection}    (//div[@class='ngb-dp-month'][2]//span[@class='custom-day'])[15]    #${variable 1-31}
${MessagePageDateFilterSubmitButton}    //ngb-datepicker//button[@class='btn btn-outline-secondary']
${MessagePageDateFilterClearButton}    //ngb-datepicker//button[@class='btn btn-outline-secondary mr-3']

${MessagePageSearchBox}    //div[@class='input-group']//input[@placeholder='Search']
${MessagePageSearchButton}    //button[@class='btn']
${MessagePageSearchClose}    //cx-icon[@class='cx-icon dpp-icons__close']
${MessagePageSearchValue}    Test

${MessagePageDetailsPreviousPageButton}    //a[@aria-label='previous page']
${MessagePageDetailsNextPageButton}    //a[@aria-label='next page']
${MessagePageDetailsPage1Button}    //a[@aria-label='page 1']
${MessagePageDetailsLastPageButton}    (//a[@aria-label='last page'])[1]
${MessagePageDetailsFirstPageButton}    (//a[@aria-label='first page'])[2]
${MessagePageDetailsNextPageButtonDisabled}    //a[@class='next disabled']
${MessagePageDetailsPreviousPageButtonDisabled}    //a[@class='previous disabled']

#-----------------------------------------------------Dealer Message Page Read General Enquiry
${MessagePageReadMessagesGenEnqContainer}    (//div[@class='row message-container'][.//span[contains(text(),'GENERAL ENQUIRY')]])[1]
${MessagePageReadMessagesGenEnqTitle}    (//div[@class='row message-container'][.//span[contains(text(),'GENERAL ENQUIRY')]]//span[@class='type message-table-text'])[1]
${MessagePageReadMessagesGenEnqTicketNumber}    (//div[@class='row message-container'][.//span[contains(text(),'GENERAL ENQUIRY')]]//span[@class='ticket-no'])[1]
${MessagePageReadMessagesGenEnqFrom/To}    (//div[@class='row message-container'][.//span[contains(text(),'GENERAL ENQUIRY')]]//div[@class='col-3 message-table-text subject-col'])[1]
${MessagePageReadMessagesGenEnqMessage}    (//div[@class='row message-container'][.//span[contains(text(),'GENERAL ENQUIRY')]]//span[@class='message-text-ellipsis'])[1]
${MessagePageReadMessagesGenEnqDate}    (//div[@class='row message-container'][.//span[contains(text(),'GENERAL ENQUIRY')]]//div[@class='col-6 col-sm-2 col-md-2 col-lg-2 pl-0 message-table-text date-time'])[1]

#-----------------------------------------------------Dealer Message Page Read Order Enquiry
${MessagePageReadMessagesOrdEnqContainer}    (//div[@class='row message-container'][.//span[contains(text(),'ORDER ENQUIRY')]])[1]
${MessagePageReadMessagesOrdEnqTitle}    (//div[@class='row message-container'][.//span[contains(text(),'ORDER ENQUIRY')]]//span[@class='type message-table-text'])[1]
${MessagePageReadMessagesOrdEnqTicketNumber}    (//div[@class='row message-container'][.//span[contains(text(),'ORDER ENQUIRY')]]//span[@class='ticket-no'])[1]
${MessagePageReadMessagesOrdEnqFrom/To}    (//div[@class='row message-container'][.//span[contains(text(),'ORDER ENQUIRY')]]//div[@class='col-3 message-table-text subject-col'])[1]
${MessagePageReadMessagesOrdEnqMessage}    (//div[@class='row message-container'][.//span[contains(text(),'ORDER ENQUIRY')]]//span[@class='message-text-ellipsis'])[1]
${MessagePageReadMessagesOrdEnqDate}    (//div[@class='row message-container'][.//span[contains(text(),'ORDER ENQUIRY')]]//div[@class='col-6 col-sm-2 col-md-2 col-lg-2 pl-0 message-table-text date-time'])[1]

#-----------------------------------------------------Dealer Message Page Read Return Enquiry
${MessagePageReadMessagesReturnEnqContainer}    (//div[@class='row message-container'][.//span[contains(text(),'RETURN ENQUIRY')]])[1]
${MessagePageReadMessagesReturnEnqTitle}    (//div[@class='row message-container'][.//span[contains(text(),'RETURN ENQUIRY')]]//span[@class='type message-table-text'])[1]
${MessagePageReadMessagesReturnEnqTicketNumber}    (//div[@class='row message-container'][.//span[contains(text(),'RETURN ENQUIRY')]]//span[@class='ticket-no'])[1]
${MessagePageReadMessagesReturnEnqFrom/To}    (//div[@class='row message-container'][.//span[contains(text(),'RETURN ENQUIRY')]]//div[@class='col-3 message-table-text subject-col'])[1]
${MessagePageReadMessagesReturnEnqMessage}    (//div[@class='row message-container'][.//span[contains(text(),'RETURN ENQUIRY')]]//span[@class='message-text-ellipsis'])[1]
${MessagePageReadMessagesReturnEnqDate}    (//div[@class='row message-container'][.//span[contains(text(),'RETURN ENQUIRY')]]//div[@class='col-6 col-sm-2 col-md-2 col-lg-2 pl-0 message-table-text date-time'])[1]

#-----------------------------------------------------Dealer Message Page Read Product Enquiry
${MessagePageReadMessagesProdEnqContainer}    (//div[@class='row message-container'][.//span[contains(text(),'PRODUCT ENQUIRY')]])[1]
${MessagePageReadMessagesProdEnqTitle}    (//div[@class='row message-container'][.//span[contains(text(),'PRODUCT ENQUIRY')]]//span[@class='type message-table-text'])[1]
${MessagePageReadMessagesProdEnqTicketNumber}    (//div[@class='row message-container'][.//span[contains(text(),'PRODUCT ENQUIRY')]]//span[@class='ticket-no'])[1]
${MessagePageReadMessagesProdEnqFrom/To}    (//div[@class='row message-container'][.//span[contains(text(),'PRODUCT ENQUIRY')]]//div[@class='col-3 message-table-text subject-col'])[1]
${MessagePageReadMessagesProdEnqMessage}    (//div[@class='row message-container'][.//span[contains(text(),'PRODUCT ENQUIRY')]]//span[@class='message-text-ellipsis'])[1]
${MessagePageReadMessagesProdEnqDate}    (//div[@class='row message-container'][.//span[contains(text(),'PRODUCT ENQUIRY')]]//div[@class='col-6 col-sm-2 col-md-2 col-lg-2 pl-0 message-table-text date-time'])[1]

#-----------------------------------------------------Dealer Message Page Unread General Enquiry
${MessagePageUnreadMessagesGenEnqContainer}    (//div[@class='row message-container not-read'][.//span[contains(text(),'GENERAL ENQUIRY')]])[1]
${MessagePageUnreadMessagesGenEnqTitle}    (//div[@class='row message-container not-read'][.//span[contains(text(),'GENERAL ENQUIRY')]]//span[@class='type message-table-text'])[1]
${MessagePageUnreadMessagesGenEnqTicketNumber}    (//div[@class='row message-container not-read'][.//span[contains(text(),'GENERAL ENQUIRY')]]//span[@class='ticket-no'])[1]
${MessagePageUnreadMessagesGenEnqFrom/To}    (//div[@class='row message-container not-read'][.//span[contains(text(),'GENERAL ENQUIRY')]]//div[@class='col-3 message-table-text subject-col message-not-read'])[1]
${MessagePageUnreadMessagesGenEnqMessage}    (//div[@class='row message-container not-read'][.//span[contains(text(),'GENERAL ENQUIRY')]]//span[@class='message-text-ellipsis'])[1]
${MessagePageUnreadMessagesGenEnqDate}    (//div[@class='row message-container not-read'][.//span[contains(text(),'GENERAL ENQUIRY')]]//div[@class='col-6 col-sm-2 col-md-2 col-lg-2 pl-0 message-table-text date-time message-not-read'])[1]

#-----------------------------------------------------Dealer Message Page Unread Order Enquiry
${MessagePageUnreadMessagesOrdEnqContainer}    (//div[@class='row message-container not-read'][.//span[contains(text(),'ORDER ENQUIRY')]])[1]
${MessagePageUnreadMessagesOrdEnqTitle}    (//div[@class='row message-container not-read'][.//span[contains(text(),'ORDER ENQUIRY')]]//span[@class='type message-table-text'])[1]
${MessagePageUnreadMessagesOrdEnqTicketNumber}    (//div[@class='row message-container not-read'][.//span[contains(text(),'ORDER ENQUIRY')]]//span[@class='ticket-no'])[1]
${MessagePageUnreadMessagesOrdEnqFrom/To}    (//div[@class='row message-container not-read'][.//span[contains(text(),'ORDER ENQUIRY')]]//div[@class='col-3 message-table-text subject-col message-not-read'])[1]
${MessagePageUnreadMessagesOrdEnqMessage}    (//div[@class='row message-container not-read'][.//span[contains(text(),'ORDER ENQUIRY')]]//span[@class='message-text-ellipsis'])[1]
${MessagePageUnreadMessagesOrdEnqDate}    (//div[@class='row message-container not-read'][.//span[contains(text(),'ORDER ENQUIRY')]]//div[@class='col-6 col-sm-2 col-md-2 col-lg-2 pl-0 message-table-text date-time message-not-read'])[1]

#-----------------------------------------------------Dealer Message Page Unread Return Enquiry
${MessagePageUnreadMessagesReturnEnqContainer}    (//div[@class='row message-container not-read'][.//span[contains(text(),'RETURN ENQUIRY')]])[1]
${MessagePageUnreadMessagesReturnEnqTitle}    (//div[@class='row message-container not-read'][.//span[contains(text(),'RETURN ENQUIRY')]]//span[@class='type message-table-text'])[1]
${MessagePageUnreadMessagesReturnEnqTicketNumber}    (//div[@class='row message-container not-read'][.//span[contains(text(),'RETURN ENQUIRY')]]//span[@class='ticket-no'])[1]
${MessagePageUnreadMessagesReturnEnqFrom/To}    (//div[@class='row message-container not-read'][.//span[contains(text(),'RETURN ENQUIRY')]]//div[@class='col-3 message-table-text subject-col message-not-read'])[1]
${MessagePageUnreadMessagesReturnEnqMessage}    (//div[@class='row message-container not-read'][.//span[contains(text(),'RETURN ENQUIRY')]]//span[@class='message-text-ellipsis'])[1]
${MessagePageUnreadMessagesReturnEnqDate}    (//div[@class='row message-container not-read'][.//span[contains(text(),'RETURN ENQUIRY')]]//div[@class='col-6 col-sm-2 col-md-2 col-lg-2 pl-0 message-table-text date-time message-not-read'])[1]

#-----------------------------------------------------Dealer Message Page Unread Product Enquiry
${MessagePageUnreadMessagesProdEnqContainer}    (//div[@class='row message-container not-read'][.//span[contains(text(),'PRODUCT ENQUIRY')]])[1]
${MessagePageUnreadMessagesProdEnqTitle}    (//div[@class='row message-container not-read'][.//span[contains(text(),'PRODUCT ENQUIRY')]]//span[@class='type message-table-text'])[1]
${MessagePageUnreadMessagesProdEnqTicketNumber}    (//div[@class='row message-container not-read'][.//span[contains(text(),'PRODUCT ENQUIRY')]]//span[@class='ticket-no'])[1]
${MessagePageUnreadMessagesProdEnqFrom/To}    (//div[@class='row message-container not-read'][.//span[contains(text(),'PRODUCT ENQUIRY')]]//div[@class='col-3 message-table-text subject-col message-not-read'])[1]
${MessagePageUnreadMessagesProdEnqMessage}    (//div[@class='row message-container not-read'][.//span[contains(text(),'PRODUCT ENQUIRY')]]//span[@class='message-text-ellipsis'])[1]
${MessagePageUnreadMessagesProdEnqDate}    (//div[@class='row message-container not-read'][.//span[contains(text(),'PRODUCT ENQUIRY')]]//div[@class='col-6 col-sm-2 col-md-2 col-lg-2 pl-0 message-table-text date-time message-not-read'])[1]


${MessagePageNoMessage}    //dpp-message-list[contains(text(),'No messages found.')]
${MessagePageAllUnreadMessages}    (//div[@class='row message-container not-read'])
#-----------------------------------------------------Dealer Message Details Page---------------------------------------
${MessageDetailsPagePanelHeader}    //div[@class='row pb-3 col-12']
${MessageDetailsPageBackButton}    //a[@class='back-to-messages']
${MessageDetailsPageMessageTitle}    //div[@class='p-lg-3 chat-title']
${MessageDetailsPageMessageBody}    //div[@class='chat-conversation-list p-3 p-lg-4']
${MessageDetailsPageReplyBody}    //div[@class='p-3 mt-3 messaging-area']
${MessageDetailsPageReplyTextBox}    //textarea[@formcontrolname='message']
${MessageDetailsPageUploadImageContainer}    //div[@class='images-container']
${MessageDetailsPageUploadImageButton}    //button[@class='btn image-upload']
${MessageDetailsPageUploadImage}    //input[@type='file']
${MessageDetailsPageCancelButton}    //button[@type='button'][contains(text(),'Cancel')]
${MessageDetailsPageSendButton}    //button[@type='submit']

${MessageDetailsPageMessageContentList}    //div[@class='chat-conversation-list p-3 p-lg-4']//div[@class='col-lg-12']
${MessageDetailsPageMessageContentListValue}    (//div[@class='chat-conversation-list p-3 p-lg-4']//div[@class='col-lg-12'])[1]
${MessageDetailsPageMessageContentListTimeStampValue}    (//div[@class='col-lg-12']//div[@class='time-stamp'])[1]
${MessageDetailsPageMessageContentListReplyValue}    (//div[@class='col-lg-12']//div[contains(@class,'chat-text-wrap-content')])[1]

#-----------------------------------------------------Dealer Message Details Page Values
${MessageDetailsPageMessageValue}    Hello World QE Test

#-----------------------------------------------------Dealer Account Detais Page----------------------------------------
${ProfileAccountsDetailsPanelContainer}    //dpp-account-details[@class='user-form']
${ProfileAccountsDetailsPanelHeader}    //dpp-account-details[@class='user-form']//*[contains(text(),'Account Details')]

${ProfileAccountsDetailsFirstNameLabel}    //dpp-account-details[@class='user-form']//span[@class='label-content' and contains(text(),'First Name')]
${ProfileAccountsDetailsLastNameLabel}    //dpp-account-details[@class='user-form']//span[@class='label-content' and contains(text(),'Last Name')]
${ProfileAccountsDetailsEmailLabel}    //dpp-account-details[@class='user-form']//span[@class='label-content' and contains(text(),'Email')]
${ProfileAccountsDetailsPhoneLabel}    //dpp-account-details[@class='user-form']//span[@class='label-content' and contains(text(),'Phone')]
${ProfileAccountsDetailsLandlineLabel}    //dpp-account-details[@class='user-form']//span[@class='label-content' and contains(text(),'Landline')]

${ProfileAccountsDetailsFirstNameTextBox}    //dpp-account-details[@class='user-form']//input[@formcontrolname='firstName']
${ProfileAccountsDetailsLastNameTextBox}    //dpp-account-details[@class='user-form']//input[@formcontrolname='lastName']
${ProfileAccountsDetailsEmailTextBox}    //dpp-account-details[@class='user-form']//input[@formcontrolname='email']
${ProfileAccountsDetailsPhoneTextBox}    //dpp-account-details[@class='user-form']//input[@formcontrolname='contactNumber']|//dpp-account-details[@class='user-form']//span[@class='label-content' and (contains(text(),'Phone') or contains(text(),'電話號碼*'))]/following-sibling::dpp-input-contact-number//input
${ProfileAccountsDetailsLandlineTextBox}    //dpp-account-details[@class='user-form']//input[@formcontrolname='landlineNumber']|//dpp-account-details[@class='user-form']//span[@class='label-content' and (contains(text(),'Landline') or contains(text(),'住宅電話號碼 (選填)'))]/following-sibling::dpp-input-contact-number//input

${ProfileAccountsDetailsCancelButton}    //dpp-account-details[@class='user-form']//button[@type='button']
${ProfileAccountsDetailsUpdateButton}    //dpp-account-details[@class='user-form']//button[@type='submit']

${ProfileAccountsDetailsPhoneError}    //div[@class='form-errors']//p[contains(text(),'Enter a valid Phone Number')]
${ProfileAccountsDetailsLandlineError}    //div[@class='form-errors']//p[contains(text(),'Landline Number must begin with a 0 followed by 9 digits')]

${ProfileAccountsDetailsConfirmationContainer}    //div[@class='cx-dialog-body modal-body pt-5']
${ProfileAccountsDetailsConfirmationYesButton}    //button[@class='btn btn-block btn-secondary backToHomepage-button']
${ProfileAccountsDetailsConfirmationNoButton}    //div[@class='col-sm-12 cta py-2']//button[@class='btn btn-block btn-outline-secondary']

${ProfileAccountsDetailsFirstNameValue}    Test FN
${ProfileAccountsDetailsLastNameValue}    Test LN
${ProfileAccountsDetailsPhoneValue}    0412333444
${ProfileAccountsDetailsLandlineValue}    0421333444

${ProfileAccountsDetailsPhoneInvalidValue}    0412333aaa
${ProfileAccountsDetailsLandlineInvalidValue}    0421333aaa

#-----------------------------------------------------Dealer Change Password Page---------------------------------------
${ProfileChangePassPanelContainer}    //dpp-update-password[@class='user-form']
${ProfileChangePassPanelHeader}    //dpp-update-password[@class='user-form']//h2

${ProfileChangePassCurrentPassLabel}    //dpp-update-password//span[@class='label-content' and contains(text(),'Current Password')]
${ProfileChangePassNewPassLabel}    //dpp-update-password//span[@class='label-content' and contains(text(),'New Password')]
${ProfileChangePassConfirmPassLabel}    //dpp-update-password//span[@class='label-content' and contains(text(),'Confirm Password')]

${ProfileChangePassCurrentPassTextBox}    //dpp-update-password//input[@formcontrolname='oldPassword']
${ProfileChangePassNewPassTextBox}    //dpp-update-password//input[@formcontrolname='newPassword']
${ProfileChangePassConfirmPassTextBox}    //dpp-update-password//input[@formcontrolname='newPasswordConfirm']

${ProfileChangePassNewPassEyeButtonOff}    //div[@class='col-md-6 px-0'][.//input[@formcontrolname='newPassword']]//cx-icon[@class='eye cx-icon dpp-icons__eye-off']
${ProfileChangePassConfirmPassEyeButtonOff}    //div[@class='col-md-6 px-0'][.//input[@formcontrolname='newPasswordConfirm']]//cx-icon[@class='eye cx-icon dpp-icons__eye-off']

${ProfileChangePassNewPassEyeButtonOn}    //div[@class='col-md-6 px-0'][.//input[@formcontrolname='newPassword']]//cx-icon[@class='eye cx-icon dpp-icons__eye-on']
${ProfileChangePassConfirmPassEyeButtonOn}    //div[@class='col-md-6 px-0'][.//input[@formcontrolname='newPasswordConfirm']]//cx-icon[@class='eye cx-icon dpp-icons__eye-on']

${ProfileChangePassCancelButton}    //dpp-update-password//button[@type='reset']
${ProfileChangePassUpdateButton}    //dpp-update-password//button[@class='btn btn-secondary']

${ProfileChangePassCurrentPassRequiredError}    //div[@class='form-errors']//p[contains(text(),'Current password is required.')]
${ProfileChangePassNewPassRequiredError}    //div[@class='form-errors']//p[contains(text(),'New password is required.')]
${ProfileChangePassConfirmPassRequiredError}    //div[@class='form-errors']//p[contains(text(),'Confirm password is required.')]

${ProfileChangePassNewPassNotMatchError}    //div[@class='form-errors']//p[contains(text(),'Password do not match the password rule description.')]
${ProfileChangePassConfirmPassNotMatchError}    //div[@class='form-errors']//p[contains(text(),'Your passwords do not match')]

${ProfileChangePassConfirmationContainer}    //div[@class='cx-dialog-body modal-body pt-5']
${ProfileChangePassConfirmationYesButton}    //button[@class='btn btn-block btn-secondary backToHomepage-button']
${ProfileChangePassConfirmationNoButton}    //div[@class='col-sm-12 cta py-2']//button[@class='btn btn-block btn-outline-secondary']

${ProfileChangePassCurrentPassValue}    ${Password}
${ProfileChangePassNewPassValue}    HelloWorld1!
${ProfileChangePassConfirmPassValue}    HelloWorld1!

${ProfileChangePassNewPassInvalidValue}    Test1
${ProfileChangePassConfirmPassInvalidValue}    Test

#-----------------------------------------------------Dealer Company Details Page---------------------------------------
${CompanyDetailsPagePanelContainer}    //dpp-company-details|//dpp-hk-company-details
${CompanyDetailsPagePanelHeader}    //dpp-company-details//h2|//dpp-hk-company-details//h2

#-----------------------------------------------------Dealer Company Details Page Labels
${CompanyDetailsPageCompanyNameLabel}    //dpp-company-details//span[@class='label-content' and contains(text(),'Company Name')]
${CompanyDetailsPageTradingNameLabel}    //dpp-company-details//span[@class='label-content' and contains(text(),'Trading Name')]
${CompanyDetailsPagePostalAddressLabel}    //dpp-company-details//span[@class='label-content' and contains(text(),'Postal Address')]
${CompanyDetailsPagePostalAddressAddLine1Label}    //dpp-company-details//span[@class='label-content color-grey' and contains(text(),'Address Line 1')]
${CompanyDetailsPagePostalAddressAddLine2Label}    //dpp-company-details//span[@class='label-content color-grey' and contains(text(),'Address Line 2')]
${CompanyDetailsPagePostalAddressSuburbLabel}    //dpp-company-details//div[@formgroupname='postalAddress']//span[@class='label-content' and contains(text(),'Suburb')]
${CompanyDetailsPagePostalAddressPostalCodeLabel}    //dpp-company-details//div[@formgroupname='postalAddress']//span[@class='label-content' and contains(text(),'Postal Code')]
${CompanyDetailsPagePostalAddressStateLabel}    //dpp-company-details//div[@formgroupname='postalAddress']//span[@class='label-content' and contains(text(),'State')]
${CompanyDetailsPageDelSameAsPostalLabel}    //dpp-company-details//span[@class='label-content checkbox-content']
${CompanyDetailsPageDelAddressLabel}    //dpp-company-details//span[@class='label-content' and contains(text(),'Delivery Address')]
${CompanyDetailsPageDelAddressAddLine1Label}    //dpp-company-details//span[@class='label-content' and contains(text(),'Address Line 1')]
${CompanyDetailsPageDelAddressAddLine2Label}    //dpp-company-details//span[@class='label-content' and contains(text(),'Address Line 2')]
${CompanyDetailsPageDelAddressSuburbLabel}    //dpp-company-details//div[@formgroupname='deliveryAddress']//span[@class='label-content' and contains(text(),'Suburb')]
${CompanyDetailsPageDelAddressPostalCodeLabel}    //dpp-company-details//div[@formgroupname='deliveryAddress']//span[@class='label-content' and contains(text(),'Postal Code')]
${CompanyDetailsPageDelAddressStateLabel}    //dpp-company-details//div[@formgroupname='deliveryAddress']//span[@class='label-content' and contains(text(),'State')]
${CompanyDetailsPageEmailAddLabel}    //dpp-company-details//span[@class='label-content' and contains(text(),'Email address')]
${CompanyDetailsPageCompPhoneNumLabel}    //dpp-company-details//span[@class='label-content' and contains(text(),'Company Phone Number')]
${CompanyDetailsPageContFNLabel}    //dpp-company-details//span[@class='label-content' and contains(text(),'Contact First Name')]
${CompanyDetailsPageContLNLabel}    //dpp-company-details//span[@class='label-content' and contains(text(),'Contact Last Name')]
${CompanyDetailsPageRadioABNLabel}    //dpp-company-details//label[@for='abn']
${CompanyDetailsPageRadioACNLabel}    //dpp-company-details//label[@for='acn']
${CompanyDetailsPageABNLabel}    //dpp-company-details//span[@class='label-content' and contains(text(),'ABN')]
${CompanyDetailsPageOpeningLabel}    //dpp-company-details//span[@class='label-content' and contains(text(),'Opening Hours')]
${CompanyDetailsPageClosingLabel}    //dpp-company-details//span[@class='label-content' and contains(text(),'Closing Hours')]

#-----------------------------------------------------Dealer Company Details Page TextBox
${CompanyDetailsPageCompanyNameTextBox}    //dpp-company-details//input[@formcontrolname='companyName']
${CompanyDetailsPageTradingNameTextBox}    //dpp-company-details//input[@formcontrolname='tradingName']
${CompanyDetailsPagePostalAddressAddLine1TextBox}    //dpp-company-details//div[@formgroupname='postalAddress']//input[@formcontrolname='addressLine1']
${CompanyDetailsPagePostalAddressAddLine2TextBox}    //dpp-company-details//div[@formgroupname='postalAddress']//input[@formcontrolname='addressLine2']
${CompanyDetailsPagePostalAddressSuburbTextBox}    //dpp-company-details//div[@formgroupname='postalAddress']//input[@formcontrolname='suburb']
${CompanyDetailsPagePostalAddressPostalCodeTextBox}    //dpp-company-details//div[@formgroupname='postalAddress']//input[@formcontrolname='postalCode']
${CompanyDetailsPageDelAddressAddLine1TextBox}    //dpp-company-details//div[@formgroupname='deliveryAddress']//input[@formcontrolname='addressLine1']
${CompanyDetailsPageDelAddressAddLine2TextBox}    //dpp-company-details//div[@formgroupname='deliveryAddress']//input[@formcontrolname='addressLine2']
${CompanyDetailsPageDelAddressSuburbTextBox}    //dpp-company-details//div[@formgroupname='deliveryAddress']//input[@formcontrolname='suburb']
${CompanyDetailsPageDelAddressPostalCodeTextBox}    //dpp-company-details//div[@formgroupname='deliveryAddress']//input[@formcontrolname='postalCode']
${CompanyDetailsPageEmailAddTextBox}    //dpp-company-details//input[@formcontrolname='email']
${CompanyDetailsPageCompPhoneNumTextBox}    //dpp-company-details//input[@formcontrolname='telephone' or @formcontrolname='mobileNumber']
${CompanyDetailsPageContFNTextBox}    //dpp-company-details//input[@formcontrolname='contactFirstName']
${CompanyDetailsPageContLNTextBox}    //dpp-company-details//input[@formcontrolname='contactLastName']
${CompanyDetailsPageABNTextBox}    //dpp-company-details//input[@formcontrolname='number']

#-----------------------------------------------------Dealer Company Details Page CheckBox
${CompanyDetailsPageDelSameAsPostalCheckBox}    //dpp-company-details//input[@type='checkbox']|//dpp-hk-company-details//input[@type='checkbox']

#-----------------------------------------------------Dealer Company Details Page DropDownList
${CompanyDetailsPagePostalStateComboBox}    (//dpp-company-details//ng-select[@formcontrolname='region']//div[@class='ng-value-container'])[1]
${CompanyDetailsPagePostalStateComboBoxArrow}    (//dpp-company-details//ng-select[@formcontrolname='region']//span[@class='ng-arrow-wrapper'])[1]

${CompanyDetailsPageStateComboBoxACT}    //div[@class='ng-dropdown-panel-items scroll-host']//div[@role='option']//span[contains(text(),'ACT')]
${CompanyDetailsPageStateComboBoxNSW}    //div[@class='ng-dropdown-panel-items scroll-host']//div[@role='option']//span[contains(text(),'NSW')]
${CompanyDetailsPageStateComboBoxNT}    //div[@class='ng-dropdown-panel-items scroll-host']//div[@role='option']//span[contains(text(),'NT')]
${CompanyDetailsPageStateComboBoxQLD}    //div[@class='ng-dropdown-panel-items scroll-host']//div[@role='option']//span[contains(text(),'QLD')]
${CompanyDetailsPageStateComboBoxSA}    //div[@class='ng-dropdown-panel-items scroll-host']//div[@role='option']//span[contains(text(),'SA')]
${CompanyDetailsPageStateComboBoxTAS}    //div[@class='ng-dropdown-panel-items scroll-host']//div[@role='option']//span[contains(text(),'TAS')]
${CompanyDetailsPageStateComboBoxVIC}    //div[@class='ng-dropdown-panel-items scroll-host']//div[@role='option']//span[contains(text(),'VIC')]
${CompanyDetailsPageStateComboBoxWA}    //div[@class='ng-dropdown-panel-items scroll-host']//div[@role='option']//span[contains(text(),'WA')]

${CompanyDetailsPageDelStateComboBox}    (//dpp-company-details//ng-select[@formcontrolname='region']//div[@class='ng-value-container'])[2]
${CompanyDetailsPageDelStateComboBoxArrow}    (//dpp-company-details//ng-select[@formcontrolname='region']//span[@class='ng-arrow-wrapper'])[2]

${CompanyDetailsPageOpeningHoursComboBox}    //ng-select[@formcontrolname='openingHours']//div[@class='ng-select-container ng-has-value']
${CompanyDetailsPageClosingHoursComboBox}    //ng-select[@formcontrolname='closingHours']//div[@class='ng-select-container ng-has-value']

${CompanyDetailsPageOpeningHoursComboBoxValue}    (//ng-select[@formcontrolname='openingHours']//ng-dropdown-panel//div[@role='option'])[1]    #1-13 from 7AM to 7PM per hour values
${CompanyDetailsPageClosingHoursComboBoxValue}    (//ng-select[@formcontrolname='closingHours']//ng-dropdown-panel//div[@role='option'])[10]    #1-13 from 7AM to 7PM per hour values

#-----------------------------------------------------Dealer Company Details Page RadioButton
${CompanyDetailsPageRadioABNRadioButton}    (//dpp-company-details//input[@type='radio'])[1]
${CompanyDetailsPageRadioACNRadioButton}    (//dpp-company-details//input[@type='radio'])[2]

#-----------------------------------------------------Dealer Company Details Page Buttons
${CompanyDetailsPageCancelButton}    //dpp-company-details//button[@type='button']
${CompanyDetailsPageSubmitButton}    //dpp-company-details//button[@type='submit']

${CompanyDetailsPageConfirmationContainer}    //div[@class='cx-modal-content']
${CompanyDetailsPagesConfirmationYesButton}    //button[@class='btn btn-secondary btn-block']
${CompanyDetailsPageConfirmationNoButton}    //button[@class='btn btn-block btn-outline-secondary']

#-----------------------------------------------------Dealer Company Details Page Error Messages
${CompanyDetailsPageCompanyNameErrorMessage}    //div[@class='form-errors']//p[contains(text(),'Please enter a valid Company Name')]
${CompanyDetailsPagePostalAddressAddLine1ErrorMessage}    //div[@formgroupname='postalAddress']//div[@class='form-errors']//p[contains(text(),'Please enter Address Line 1')]
${CompanyDetailsPagePostalAddressSuburbErrorMessage}    //div[@formgroupname='postalAddress']//div[@class='form-errors']//p[contains(text(),'Please enter a valid Suburb')]
${CompanyDetailsPagePostalAddressPostalCodeErrorMessage}    //div[@formgroupname='postalAddress']//div[@class='form-errors']//p[contains(text(),'Please enter a valid Post Code')]
${CompanyDetailsPageDelAddressAddLine1ErrorMessage}    //div[@formgroupname='deliveryAddress']//div[@class='form-errors']//p[contains(text(),' Please enter Address Line 1')]
${CompanyDetailsPageDelAddressSuburbErrorMessage}    //div[@formgroupname='deliveryAddress']//div[@class='form-errors']//p[contains(text(),'Please enter a valid Suburb')]
${CompanyDetailsPageDelAddressPostalCodeErrorMessage}    //div[@formgroupname='deliveryAddress']//div[@class='form-errors']//p[contains(text(),'Please enter a valid Post Code')]
${CompanyDetailsPageCompPhoneNumErrorMessage}    //div[@class='form-errors']//p[contains(text(),'Enter a valid Company Phone Number')]
${CompanyDetailsPageContFNErrorMessage}    //div[@class='form-errors']//p[contains(text(),'Please enter a valid Contact First Name')]
${CompanyDetailsPageContLNErrorMessage}     //div[@class='form-errors']//p[contains(text(),'Please enter a valid Contact Last Name')]

#-----------------------------------------------------Dealer Company Details Page Text Values
${CompanyDetailsPageCompanyNameTextBoxValidText}    Test Company Name
${CompanyDetailsPageTradingNameTextBoxValidText}    Test Trading Name
${CompanyDetailsPagePostalAddressAddLine1ValidText}    Test Postal Address Line 1
${CompanyDetailsPagePostalAddressAddLine2ValidText}    Test Postal Address Line 2
${CompanyDetailsPagePostalAddressSuburbValidText}    Test Postal Suburb
${CompanyDetailsPagePostalAddressPostalCodeValidText}    8585
${CompanyDetailsPageDelAddressAddLine1ValidText}    Test Delivery Address Line 1
${CompanyDetailsPageDelAddressAddLine2ValidText}    Test Delivery Address Line 2
${CompanyDetailsPageDelAddressSuburbValidText}    Test Delivery Suburb
${CompanyDetailsPageDelAddressPostalCodeValidText}    8585
${CompanyDetailsPageCompPhoneNumValidText}    0432165498
${CompanyDetailsPageContFNValidText}    Test First Name
${CompanyDetailsPageContLNValidText}    Test Last Name

${CompanyDetailsPagePostalStateValue}    ${CompanyDetailsPageStateComboBoxACT}
${CompanyDetailsPageDelStateValue}    ${CompanyDetailsPageStateComboBoxQLD}

#-----------------------------------------------------Dealer Staff Page-------------------------------------------------

${StaffPagePanelContainer}    //dpp-company-staff
${StaffPagePanelHeader}    //dpp-company-staff//*[@class='heading']

#-----------------------------------------------------Dealer Staff Page Labels
${StaffPageFirstNameLabel}    (//span[@class='label-content' and contains(text(),'First Name')])[1]
${StaffPageLastNameLabel}    (//span[@class='label-content' and contains(text(),'Last Name')])[1]
${StaffPageEmailLabel}    (//span[@class='label-content' and contains(text(),'Email ID')])[1]
${StaffPagePhoneNumLabel}    (//span[@class='label-content' and contains(text(),'Phone Number')])[1]
${StaffPageActiveLabel}    (//span[@class='label-content' and contains(text(),'Active')])[1]

#-----------------------------------------------------Dealer Staff Page TextBox
${StaffPageFirstNameAddTextBox}    (//input[@formcontrolname='firstName'])[1]
${StaffPageLastNameAddTextBox}    (//input[@formcontrolname='lastName'])[1]
${StaffPageEmailAddTextBox}    (//input[@formcontrolname='email'])[1]
${StaffPagePhoneNumAddTextBox}    (//input[@formcontrolname='phoneNumber'])[1]

${StaffPageFirstNameTextBox}    (//input[@formcontrolname='firstName'])[${StaffPageIndexValue}]
${StaffPageLastNameTextBox}    (//input[@formcontrolname='lastName'])[${StaffPageIndexValue}]
${StaffPageEmailTextBox}    (//input[@formcontrolname='email'])[${StaffPageIndexValue}]
${StaffPagePhoneNumTextBox}    (//input[@formcontrolname='phoneNumber'])[${StaffPageIndexValue}]

#-----------------------------------------------------Dealer Staff Page Checkbox
${StaffPageActiveAddCheckBox}    (//input[@formcontrolname='active'])[1]
${StaffPageActiveCheckBox}    (//input[@formcontrolname='active'])[${StaffPageIndexValue}]

#-----------------------------------------------------Dealer Staff Page Button
${StaffPageAddButton}    //button[@class='btn btn-outline-secondary mx-0']
${StaffPageEditButton}    (//cx-icon[@class='cx-icon dpp-icons__pencil'])[${StaffPageIndexValue}]
${StaffPageUpdateButton}    //button[@class='btn btn-flex btn-secondary']
${StaffPageCancelAddButton}    //button[@class='btn btn-flex btn-outline-secondary']
${StaffPageCancelButton}    //button[@class='btn btn-flex btn-outline-secondary mr-3']

${StaffPageYesButton}    //button[@class='btn btn-secondary btn-block']
${StaffPageNoButton}    //button[@class='btn btn-block btn-outline-secondary']

#-----------------------------------------------------Dealer Staff Page Error Messages
${StaffPageFNErrorMessage}    //div[@class='form-errors']//p[contains(text(),'Please enter a valid First Name')]
${StaffPageLNErrorMessage}    //div[@class='form-errors']//p[contains(text(),'Please enter a valid Last Name')]
${StaffPagePhoneNumErrorMessage}    //div[@class='form-errors']//p[contains(text(),'Enter a valid Phone Number')]

#-----------------------------------------------------Dealer Staff Page Values
${StaffPageIndexValue}    3
${StaffPageFirstNameValue}    Test FN
${StaffPageLastNameValue}    Test LN
${StaffPageEmailValue}    Testemail@yopmail.com
${StaffPagePhoneNumValue}    0412345678

#-----------------------------------------------------Dealer Settings Page----------------------------------------------

${SettingsPagePanelContainer}    //dpp-order-settings
${SettingsPagePanelHeader}    //dpp-order-settings//h1

#-----------------------------------------------------Dealer Settings Page Containers
${SettingsPageEmailNotifContainer}    (//div[@class='order-settings-section-container group-type-border'])[1]
${SettingsPageGeneralMessNotifContainer}    (//div[@class='order-settings-section-container group-type-border'])[2]
${SettingsPageOrderMessNotifContainer}    (//div[@class='order-settings-section-container group-type-border'])[3]
${SettingsPageReturnMessNotifContainer}    (//div[@class='order-settings-section-container group-type-border'])[4]
${SettingsPageProductMessNotifContainer}    (//div[@class='order-settings-section-container group-type-border'])[5]
${SettingsPageOrderCreateNotifContainer}    (//div[@class='order-settings-section-container group-type-border'])[6]
${SettingsPageBackOrderNotifContainer}    (//div[@class='order-settings-section-container'])[1]
${SettingsPagePartNumMaskContainer}    (//div[@class='order-settings-section-container'])[2]
${SettingsPageReturnsContainer}    (//div[@class='order-settings-section-container'])[3]
${SettingsPageDCOrderContainer}    //div[@class='order-settings-section-container dc-stock-padding']

#-----------------------------------------------------Dealer Settings Page Toggle
${SettingsPageEmailNotifToggle}    (//div[@class='order-settings-section-container group-type-border'])[1]//span[@class='slider round']
${SettingsPageGeneralMessNotifToggle}    (//div[@class='order-settings-section-container group-type-border'])[2]//span[@class='slider round']
${SettingsPageOrderMessNotifToggle}    (//div[@class='order-settings-section-container group-type-border'])[3]//span[@class='slider round']
${SettingsPageReturnMessNotifToggle}    (//div[@class='order-settings-section-container group-type-border'])[4]//span[@class='slider round']
${SettingsPageProductMessNotifToggle}    (//div[@class='order-settings-section-container group-type-border'])[5]//span[@class='slider round']
${SettingsPageOrderCreateNotifToggle}    (//div[@class='order-settings-section-container group-type-border'])[6]//span[@class='slider round']
${SettingsPageBackOrderNotifToggle}    (//div[@class='order-settings-section-container'])[1]//span[@class='slider round']
${SettingsPagePartNumMaskToggle}    (//div[@class='order-settings-section-container'])[2]//span[@class='slider round']
${SettingsPageReturnsToggle}    (//div[@class='order-settings-section-container'])[3]//span[@class='slider round']
${SettingsPageDCOrderToggle}    //div[@class='order-settings-section-container dc-stock-padding']//span[@class='slider round']


#-----------------------------------------------------Dealer Settings Page + Icon
${SettingsPageEmailNotifAddIcon}    (//div[@class='order-settings-section-container group-type-border'])[1]//cx-icon[@class='cx-icon dpp-icons__plus action-icon']
${SettingsPageGeneralMessNotifAddIcon}    (//div[@class='order-settings-section-container group-type-border'])[2]//cx-icon[@class='cx-icon dpp-icons__plus action-icon']
${SettingsPageOrderMessNotifAddIcon}    (//div[@class='order-settings-section-container group-type-border'])[3]//cx-icon[@class='cx-icon dpp-icons__plus action-icon']
${SettingsPageReturnMessNotifAddIcon}    (//div[@class='order-settings-section-container group-type-border'])[4]//cx-icon[@class='cx-icon dpp-icons__plus action-icon']
${SettingsPageProductMessNotifAddIcon}    (//div[@class='order-settings-section-container group-type-border'])[5]//cx-icon[@class='cx-icon dpp-icons__plus action-icon']
${SettingsPageOrderCreateNotifAddIcon}    (//div[@class='order-settings-section-container group-type-border'])[6]//cx-icon[@class='cx-icon dpp-icons__plus action-icon']
${SettingsPageBackOrderNotifAddIcon}    (//div[@class='order-settings-section-container'])//cx-icon[@class='cx-icon dpp-icons__plus action-icon']

#-----------------------------------------------------Dealer Settings Page x Icon
${SettingsPageEmailNotifDelIcon}    ((//div[@class='order-settings-section-container group-type-border'])[1]//cx-icon[@class='cx-icon dpp-icons__remove action-icon'])
${SettingsPageGeneralMessNotifDelIcon}    ((//div[@class='order-settings-section-container group-type-border'])[2]//cx-icon[@class='cx-icon dpp-icons__remove action-icon'])
${SettingsPageOrderMessNotifDelIcon}    ((//div[@class='order-settings-section-container group-type-border'])[3]//cx-icon[@class='cx-icon dpp-icons__remove action-icon'])
${SettingsPageReturnMessNotifDelIcon}    ((//div[@class='order-settings-section-container group-type-border'])[4]//cx-icon[@class='cx-icon dpp-icons__remove action-icon'])
${SettingsPageProductMessNotifDelIcon}    ((//div[@class='order-settings-section-container group-type-border'])[5]//cx-icon[@class='cx-icon dpp-icons__remove action-icon'])
${SettingsPageOrderCreateNotifDelIcon}    ((//div[@class='order-settings-section-container group-type-border'])[6]//cx-icon[@class='cx-icon dpp-icons__remove action-icon'])
${SettingsPageBackOrderNotifDelIcon}    ((//div[@class='order-settings-section-container'])[1][1]//cx-icon[@class='cx-icon dpp-icons__remove action-icon'])

#-----------------------------------------------------Dealer Settings Page Edit Button
${SettingsPageEmailNotifEditButton}    ((//div[@class='order-settings-section-container group-type-border'])[1]//cx-icon[@class='cx-icon dpp-icons__pencil-active action-icon'])
${SettingsPageGeneralMessNotifEditButton}    ((//div[@class='order-settings-section-container group-type-border'])[2]//cx-icon[@class='cx-icon dpp-icons__pencil-active action-icon'])
${SettingsPageOrderMessNotifEditButton}    ((//div[@class='order-settings-section-container group-type-border'])[3]//cx-icon[@class='cx-icon dpp-icons__pencil-active action-icon'])
${SettingsPageReturnMessNotifEditButton}    ((//div[@class='order-settings-section-container group-type-border'])[4]//cx-icon[@class='cx-icon dpp-icons__pencil-active action-icon'])
${SettingsPageProductMessNotifEditButton}    ((//div[@class='order-settings-section-container group-type-border'])[5]//cx-icon[@class='cx-icon dpp-icons__pencil-active action-icon'])
${SettingsPageOrderCreateNotifEditButton}    ((//div[@class='order-settings-section-container group-type-border'])[6]//cx-icon[@class='cx-icon dpp-icons__pencil-active action-icon'])
${SettingsPageBackOrderNotifEditButton}    ((//div[@class='order-settings-section-container'])[1]//cx-icon[@class='cx-icon dpp-icons__pencil-active action-icon'])

#-----------------------------------------------------Dealer Settings Page TextBox
${SettingsPageEmailNotifEmailTextBox}    (//div[@class='order-settings-section-container group-type-border'])[1]//input[@type='email']
${SettingsPageGeneralMessNotifEmailTextBox}    (//div[@class='order-settings-section-container group-type-border'])[2]//input[@type='email']
${SettingsPageOrderMessNotifEmailTextBox}    (//div[@class='order-settings-section-container group-type-border'])[3]//input[@type='email']
${SettingsPageReturnMessNotifEmailTextBox}    (//div[@class='order-settings-section-container group-type-border'])[4]//input[@type='email']
${SettingsPageProductMessNotifEmailTextBox}    (//div[@class='order-settings-section-container group-type-border'])[5]//input[@type='email']
${SettingsPageOrderCreateNotifEmailTextBox}    (//div[@class='order-settings-section-container group-type-border'])[6]//input[@type='email']
${SettingsPageBackOrderNotifEmailTextBox}    (//div[@class='order-settings-section-container'])[1]//input[@type='email']

#-----------------------------------------------------Dealer Settings Page Email Error Message
${SettingsPageEmailNotifEmailErrorMessage}    (//div[@class='order-settings-section-container group-type-border'])[1]//p[@class='error-msg m-0']
${SettingsPageGeneralMessNotifEmailErrorMessage}    (//div[@class='order-settings-section-container group-type-border'])[2]//p[@class='error-msg m-0']
${SettingsPageOrderMessNotifEmailErrorMessage}    (//div[@class='order-settings-section-container group-type-border'])[3]//p[@class='error-msg m-0']
${SettingsPageReturnMessNotifEmailErrorMessage}    (//div[@class='order-settings-section-container group-type-border'])[4]//p[@class='error-msg m-0']
${SettingsPageProductMessNotifEmailErrorMessage}    (//div[@class='order-settings-section-container group-type-border'])[5]//p[@class='error-msg m-0']
${SettingsPageOrderCreateNotifEmailErrorMessage}    (//div[@class='order-settings-section-container group-type-border'])[6]//p[@class='error-msg m-0']
${SettingsPageBackOrderNotifEmailErrorMessage}    (//div[@class='order-settings-section-container'])[1]//p[@class='error-msg m-0']

#-----------------------------------------------------Dealer Settings Page Save Button
${SettingsPageEmailNotifEmailSaveButton}    (//div[@class='order-settings-section-container group-type-border'])[1]//button[@type='submit']
${SettingsPageGeneralMessNotifEmailSaveButton}    (//div[@class='order-settings-section-container group-type-border'])[2]//button[@type='submit']
${SettingsPageOrderMessNotifEmailSaveButton}    (//div[@class='order-settings-section-container group-type-border'])[3]//button[@type='submit']
${SettingsPageReturnMessNotifEmailSaveButton}    (//div[@class='order-settings-section-container group-type-border'])[4]//button[@type='submit']
${SettingsPageProductMessNotifEmailSaveButton}    (//div[@class='order-settings-section-container group-type-border'])[5]//button[@type='submit']
${SettingsPageOrderCreateNotifEmailTSaveButton}    (//div[@class='order-settings-section-container group-type-border'])[6]//button[@type='submit']
${SettingsPageBackOrderNotifEmailSaveButton}    (//div[@class='order-settings-section-container'])[1]//button[@type='submit']

#-----------------------------------------------------Dealer Settings Page Cancel/X Button
${SettingsPageEmailNotifEmailCancelButton}    (//div[@class='order-settings-section-container group-type-border'])[1]//div[@class='close-icon']
${SettingsPageGeneralMessNotifEmailCancelButton}    (//div[@class='order-settings-section-container group-type-border'])[2]//div[@class='close-icon']
${SettingsPageOrderMessNotifEmailCancelButton}    (//div[@class='order-settings-section-container group-type-border'])[3]//div[@class='close-icon']
${SettingsPageReturnMessNotifEmailCancelButton}    (//div[@class='order-settings-section-container group-type-border'])[4]//div[@class='close-icon']
${SettingsPageProductMessNotifEmailCancelButton}    (//div[@class='order-settings-section-container group-type-border'])[5]//div[@class='close-icon']
${SettingsPageOrderCreateNotifEmailTCancelButton}    (//div[@class='order-settings-section-container group-type-border'])[6]//div[@class='close-icon']
${SettingsPageBackOrderNotifEmailCancelButton}    (//div[@class='order-settings-section-container'])[1]//div[@class='close-icon']

#-----------------------------------------------------Dealer Settings Page Days Return
${SettingsPageReturnsDecrementButton}    //div[@class='custom-counter']//cx-icon[@class='cx-icon dpp-icons__decrement']
${SettingsPageReturnsIncrementButton}    //div[@class='custom-counter']//cx-icon[@class='cx-icon dpp-icons__increment']
${SettingsPageReturnsNumberTextBox}    //div[@class='custom-counter']//input[@type='number']

${SettignsPageSaveButton}    //div[@class='d-flex']//button[@type='button']

${SettignsPageSaveButtonConfirmationModal}    //div[@class='cx-modal-content']
${SettignsPageSaveButtonConfirmationYesButton}    //div[@class='cx-modal-content']//button[@class='btn btn-secondary btn-block']
${SettignsPageSaveButtonConfirmationNoButton}    //div[@class='cx-modal-content']//button[@class='btn btn-block btn-outline-secondary']

#-----------------------------------------------------Dealer Settings Page Email Values
${SettingsPageValidEmailValue}    test@yopmail.com
${SettingsPageInvalidEmailValue}    test
${SettingsPageReturnDaysValue}    71