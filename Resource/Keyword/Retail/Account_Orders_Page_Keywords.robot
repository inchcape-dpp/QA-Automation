*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary

#Resource  ../../../Resource/testdata/config.robot
Resource  ../../../Resource/testdata/Retail/Retail_Variable.robot
Resource  ../../../Resource/testdata/credentials.robot


*** Keywords ***

#-----------------------------------------------------Retail Orders Page-----------------------------------------------
User should be able to view account orders page
    wait until element is visible    ${Retail_AccountpageOrdersMenu}    10
    click element    ${Retail_AccountpageOrdersMenu}
    wait until element is visible    ${Retail_AccountOrderPagePanelContainer}    10
    capture page screenshot


    wait until element is visible    ${Retail_AccountOrderPageTotalOrders}    10
    wait until element is visible    ${Retail_AccountOrderPageSortBar}    10
    wait until element is visible    ${Retail_AccountOrderPageStatusFilter}    10
    wait until element is visible    ${Retail_AccountOrderPageDateFilter}    10
    wait until element is visible    ${Retail_AccountOrderPageSearchBox}    10
    wait until element is visible    ${Retail_AccountOrderPageSearchButton}    10
#    wait until element is visible    ${Retail_AccountOrderPageSearchClose}    10
    wait until element is visible    ${Retail_AccountOrderPageArrangeFilter}    10
    wait until element is visible    ${Retail_AccountOrderPageDetailsColumn}    10

    capture element screenshot    ${Retail_AccountOrderPageTotalOrders}
    capture element screenshot    ${Retail_AccountOrderPageSortBar}
    capture element screenshot    ${Retail_AccountOrderPageStatusFilter}
    capture element screenshot    ${Retail_AccountOrderPageDateFilter}
    capture element screenshot    ${Retail_AccountOrderPageSearchBox}
    capture element screenshot    ${Retail_AccountOrderPageSearchButton}
#    capture element screenshot    ${Retail_AccountOrderPageSearchClose}
    capture element screenshot    ${Retail_AccountOrderPageArrangeFilter}
    capture element screenshot    ${Retail_AccountOrderPageDetailsColumn}
    scroll element into view    ${Retail_AccountOrderPageDetailsPreviousPageButton}
    capture element screenshot    ${Retail_AccountOrderPageDetailsPreviousPageButton}
    capture element screenshot    ${Retail_AccountOrderPageDetailsNextPageButton}
    capture element screenshot    ${Retail_AccountOrderPageDetailsPage1Button}

    sleep    2
User should be able to view account orders page HK
    wait until element is visible    ${Retail_AccountpageOrdersMenu}    10
    click element    ${Retail_AccountpageOrdersMenu}
    wait until element is visible    ${Retail_AccountOrderPagePanelContainer}    10
    capture page screenshot

    wait until element is visible    ${Retail_HK_AccountOrderPageDetailsColumn}    10
    wait until element is visible    ${Retail_HK_AccountOrderPageDetailsPartslaneRefLabel}    10
    wait until element is visible    ${Retail_HK_AccountOrderPageDetailsCustAccNumLabel}    10
    wait until element is visible    ${Retail_HK_AccountOrderPageDetailsOrderDateLabel}    10
    wait until element is visible    ${Retail_HK_AccountOrderPageDetailsDeliveryMethod}    10
    wait until element is visible    ${Retail_HK_AccountOrderPageDetailsPaymentMethod}    10
    wait until element is visible    ${Retail_HK_AccountOrderPageDetailsTotalLabel}    10
    wait until element is visible    ${Retail_HK_AccountOrderPageDetailsStatusLabel}    10
    wait until element is visible    ${Retail_HK_AccountOrderPageDetailsReturnLabel}    10
    wait until element is visible    ${Retail_HK_AccountOrderPageDetailsSupplierLabel}

    capture element screenshot    ${Retail_HK_AccountOrderPageDetailsColumn}
    capture element screenshot    ${Retail_HK_AccountOrderPageDetailsPartslaneRefLabel}
    capture element screenshot    ${Retail_HK_AccountOrderPageDetailsCustAccNumLabel}
    capture element screenshot    ${Retail_HK_AccountOrderPageDetailsOrderDateLabel}
    capture element screenshot    ${Retail_HK_AccountOrderPageDetailsDeliveryMethod}
    capture element screenshot    ${Retail_HK_AccountOrderPageDetailsPaymentMethod}
    capture element screenshot    ${Retail_HK_AccountOrderPageDetailsTotalLabel}
    capture element screenshot    ${Retail_HK_AccountOrderPageDetailsStatusLabel}
    capture element screenshot    ${Retail_HK_AccountOrderPageDetailsReturnLabel}
    capture element screenshot    ${Retail_HK_AccountOrderPageDetailsSupplierLabel}

    sleep    2

User should be able to select one order from the list
    wait until element is visible    ${Retail_AccountOrderPageHistory1}    10
    scroll element into view    ${Retail_AccountOrderPageHistory1}
    click element    ${Retail_AccountOrderPageHistory1}
    sleep    2
    capture page screenshot


User should be able to view order details
    wait until element is visible    ${Retail_AccountOrderDetailsOrderHeader}    10
    wait until element is visible    ${Retail_AccountOrderDetailsContainer}    10
    capture element screenshot    ${Retail_AccountOrderDetailsContainer}

    wait until element is visible    ${Retail_AccountOrderDetailsContainerRefNumLabel}    10
    wait until element is visible    ${Retail_AccountOrderDetailsContainerCustNameLabel}    10
    wait until element is visible    ${Retail_AccountOrderDetailsContainerCustAccLabel}    10
    wait until element is visible    ${Retail_AccountOrderDetailsContainerCustOrderNumLabel}    10
#    wait until element is visible    ${Retail_AccountOrderDetailsContainerYourRefLabel}    10
    wait until element is visible    ${Retail_AccountOrderDetailsContainerOrderDateLabel}    10

    capture element screenshot    ${Retail_AccountOrderDetailsContainerRefNumLabel}
    capture element screenshot    ${Retail_AccountOrderDetailsContainerCustNameLabel}
    capture element screenshot    ${Retail_AccountOrderDetailsContainerCustAccLabel}
    capture element screenshot    ${Retail_AccountOrderDetailsContainerCustOrderNumLabel}
#    capture element screenshot    ${Retail_AccountOrderDetailsContainerYourRefLabel}
    capture element screenshot    ${Retail_AccountOrderDetailsContainerOrderDateLabel}

    wait until element is visible    ${Retail_AccountOrderDetailsContainerRefNumValue}    10
    wait until element is visible    ${Retail_AccountOrderDetailsContainerCustNameValue}    10
    wait until element is visible    ${Retail_AccountOrderDetailsContainerCustAccValue}    10
    wait until element is visible    ${Retail_AccountOrderDetailsContainerCustOrderNumValue}    10
    wait until element is visible    ${Retail_AccountOrderDetailsContainerYourRefValue}    10
    wait until element is visible    ${Retail_AccountOrderDetailsContainerOrderDateValue}    10

    capture element screenshot    ${Retail_AccountOrderDetailsContainerRefNumValue}
    capture element screenshot    ${Retail_AccountOrderDetailsContainerCustNameValue}
    capture element screenshot    ${Retail_AccountOrderDetailsContainerCustAccValue}
    capture element screenshot    ${Retail_AccountOrderDetailsContainerCustOrderNumValue}
    capture element screenshot    ${Retail_AccountOrderDetailsContainerYourRefValue}
    capture element screenshot    ${Retail_AccountOrderDetailsContainerOrderDateValue}

    scroll element into view    ${Retail_AccountOrderDetailsReturnContainer}
    capture element screenshot    ${Retail_AccountOrderDetailsReturnContainer}

    wait until element is visible    ${Retail_AccountOrderDetailsReturnHeader}    10
    wait until element is visible    ${Retail_AccountOrderDetailsReturnDescription}    10
    wait until element is visible    ${Retail_AccountOrderDetailsReturnPrice}    10
    wait until element is visible    ${Retail_AccountOrderDetailsReturnRRP}    10
    wait until element is visible    ${Retail_AccountOrderDetailsReturnOrder}    10
    wait until element is visible    ${Retail_AccountOrderDetailsReturnShipped}    10
    wait until element is visible    ${Retail_AccountOrderDetailsReturnPending}    10
    wait until element is visible    ${Retail_AccountOrderDetailsReturnTotal}    10

    capture element screenshot    ${Retail_AccountOrderDetailsReturnHeader}
    capture element screenshot    ${Retail_AccountOrderDetailsReturnDescription}
    capture element screenshot    ${Retail_AccountOrderDetailsReturnPrice}
    capture element screenshot    ${Retail_AccountOrderDetailsReturnRRP}
    capture element screenshot    ${Retail_AccountOrderDetailsReturnOrder}
    capture element screenshot    ${Retail_AccountOrderDetailsReturnShipped}
    capture element screenshot    ${Retail_AccountOrderDetailsReturnPending}
    capture element screenshot    ${Retail_AccountOrderDetailsReturnTotal}

    scroll element into view    ${Retail_AccountOrderDetailsBillingContainer}
    capture element screenshot    ${Retail_AccountOrderDetailsBillingContainer}

    wait until element is visible    ${Retail_AccountOrderDetailsBillingLabel}    10
    wait until element is visible    ${Retail_AccountOrderDetailsOrderSummaryLabel}    10
    wait until element is visible    ${Retail_AccountOrderDetailsBillingDetailsAndTotal}    10
    wait until element is visible    ${Retail_AccountOrderDetailsAddressField}    10
    wait until element is visible    ${Retail_AccountOrderDetailsPriceField}    10

    capture element screenshot    ${Retail_AccountOrderDetailsBillingLabel}
    capture element screenshot    ${Retail_AccountOrderDetailsOrderSummaryLabel}
    capture element screenshot    ${Retail_AccountOrderDetailsBillingDetailsAndTotal}
    capture element screenshot    ${Retail_AccountOrderDetailsAddressField}
    capture element screenshot    ${Retail_AccountOrderDetailsPriceField}

    sleep     2

User should be able to view order details HK
#    click element    ${Retail_HK_AccountOrderPageDetailsReferenceNumber}
    wait until element is visible    ${HK_Retail_AccountOrderDetailsOrderHeader}   10
    wait until element is visible    ${HK_AccountOrderDetailsOrderStatus}    10
    capture element screenshot    ${HK_Retail_AccountOrderDetailsOrderHeader}
    wait until element is visible    ${HK_Retail_AccountOrderDetailsBackButton}
    capture element screenshot    ${HK_Retail_AccountOrderDetailsBackButton}

    wait until element is visible    ${HK_Retail_AccountOrderDetailsContainerRefNumLabel}      10
    wait until element is visible    ${HK_Retail_AccountOrderDetailsContainerRefNumLabel}     10
    wait until element is visible    ${HK_Retail_AccountOrderDetailsContainerRefNumLabel}       10
    wait until element is visible    ${HK_Retail_AccountOrderDetailsContainerRefNumLabel}      10


    capture element screenshot    ${HK_Retail_AccountOrderDetailsContainer}
    capture element screenshot    ${HK_Retail_AccountOrderDetailsContainerRefNumLabel}
    capture element screenshot    ${HK_Retail_AccountOrderDetailsContainerRefNumLabel}
    capture element screenshot    ${HK_Retail_AccountOrderDetailsContainerRefNumLabel}
    capture element screenshot    ${HK_Retail_AccountOrderDetailsContainerRefNumLabel}


    wait until element is visible    ${HK_Retail_AccountOrderDetailsContainerRefNumValue}    10
    wait until element is visible    ${HK_Retail_AccountOrderDetailsContainerCompanyNameValue}     10
    wait until element is visible    ${HK_Retail_AccountOrderDetailsContainerSupplierValue}      10
    wait until element is visible    ${HK_Retail_AccountOrderDetailsContainerOrderDateNumValue}    10
    wait until element is visible    ${HK_Retail_AccountOrderDetailsContainerOrderTimeValue}    10

    capture element screenshot    ${HK_Retail_AccountOrderDetailsContainerRefNumValue}
    capture element screenshot    ${HK_Retail_AccountOrderDetailsContainerCompanyNameValue}
    capture element screenshot    ${HK_Retail_AccountOrderDetailsContainerSupplierValue}
    capture element screenshot    ${HK_Retail_AccountOrderDetailsContainerOrderDateNumValue}
    capture element screenshot    ${HK_Retail_AccountOrderDetailsContainerOrderTimeValue}

    scroll element into view    ${HK_Retail_AccountOrderDetailsReturnContainer}
    capture element screenshot    ${HK_Retail_AccountOrderDetailsReturnContainer}

    wait until element is visible    ${HK_Retail_AccountOrderDetailsReturnHeader}     10
    wait until element is visible    ${HK_Retail_AccountOrderDetailsReturnDescription}    10
    wait until element is visible    ${HK_Retail_AccountOrderDetailsReturnPrice}     10
    wait until element is visible    ${HK_Retail_AccountOrderDetailsReturnRRP}     10
    wait until element is visible    ${HK_Retail_AccountOrderDetailsReturnOrder}   10
    wait until element is visible    ${HK_Retail_AccountOrderDetailsReturnShipped}    10
    wait until element is visible    ${HK_Retail_AccountOrderDetailsReturnPending}   10
    wait until element is visible    ${HK_Retail_AccountOrderDetailsReturnTotal}    10

    capture element screenshot    ${HK_Retail_AccountOrderDetailsReturnHeader}
    capture element screenshot    ${HK_Retail_AccountOrderDetailsReturnDescription}
    capture element screenshot    ${HK_Retail_AccountOrderDetailsReturnPrice}
    capture element screenshot    ${HK_Retail_AccountOrderDetailsReturnRRP}
    capture element screenshot    ${HK_Retail_AccountOrderDetailsReturnOrder}
    capture element screenshot    ${HK_Retail_AccountOrderDetailsReturnShipped}
    capture element screenshot    ${HK_Retail_AccountOrderDetailsReturnPending}
    capture element screenshot    ${HK_Retail_AccountOrderDetailsReturnTotal}

    scroll element into view    ${HK_Retail_AccountOrderDetailsBillingContainer}
    capture element screenshot    ${HK_Retail_AccountOrderDetailsBillingContainer}

    wait until element is visible    ${HK_Retail_AccountOrderDetailsBillingLabel}    10
    wait until element is visible    ${HK_Retail_AccountOrderDetailsOrderSummaryLabel}    10
    wait until element is visible    ${HK_Retail_AccountOrderDetailsBillingDetailsAndTotal}  10
    wait until element is visible    ${HK_Retail_AccountOrderDetailsAddressField}     10
    wait until element is visible    ${HK_Retail_AccountOrderDetailsSummaryField}    10
    wait until element is visible    ${HK_Retail_AccountOrderDetailsDeliveryInstructionField}    10
    wait until element is visible    ${HK_Retail_AccountOrderDetailsMessageSupplierButton}     10
    wait until element is visible    ${HK_Retail_AccountOrderDetailsRe-orderButton}    10

    capture element screenshot    ${HK_Retail_AccountOrderDetailsBillingLabel}
    capture element screenshot    ${HK_Retail_AccountOrderDetailsOrderSummaryLabel}
    capture element screenshot    ${HK_Retail_AccountOrderDetailsBillingDetailsAndTotal}
    capture element screenshot    ${HK_Retail_AccountOrderDetailsAddressField}
    capture element screenshot    ${HK_Retail_AccountOrderDetailsSummaryField}
    capture element screenshot    ${HK_Retail_AccountOrderDetailsDeliveryInstructionField}
    capture element screenshot    ${HK_Retail_AccountOrderDetailsMessageSupplierButton}
    capture element screenshot    ${HK_Retail_AccountOrderDetailsRe-orderButton}

    sleep     2
User should be able to click filter status in Account Order Page
    wait until element is visible    ${Retail_AccountOrderPageStatusFilter}    10
    scroll element into view    ${Retail_AccountOrderPageStatusFilter}
    capture element screenshot    ${Retail_AccountOrderPageStatusFilter}
    click element    ${Retail_AccountOrderPageStatusFilter}
    sleep    2

User should be able to check all filter status in Account Order Page
    wait until element is enabled    ${Retail_AccountOrderPageStatusFilterALL}    10
    wait until element is enabled    ${Retail_AccountOrderPageStatusFilterReceived}    10
    wait until element is enabled    ${Retail_AccountOrderPageStatusFilterSubmitted}    10
    wait until element is visible    ${Retail_AccountOrderPageStatusFilterDispatched}    10
    wait until element is visible    ${Retail_AccountOrderPageStatusFilterPartiallyDispatched}    10
    wait until element is visible    ${Retail_AccountOrderPageStatusFilterOrderwithReturns}    10
    element should not be visible    ${Retail_HK_AccountOrderPage_StatusFilter_Delivered}
    element should not be visible    ${Retail_HK_AccountOrderPage_StatusFilter_Processing}

User should be able to check all filter status in HK Account Order Page
    wait until element is enabled    ${Retail_AccountOrderPageStatusFilterALL}    10
    wait until element is enabled    ${Retail_AccountOrderPageStatusFilterReceived}    10
    element should not be visible    ${Retail_AccountOrderPageStatusFilterSubmitted}    10
    wait until element is visible    ${Retail_AccountOrderPageStatusFilterDispatched}    10
    element should not be visible    ${Retail_AccountOrderPageStatusFilterPartiallyDispatched}
    wait until element is visible    ${Retail_AccountOrderPageStatusFilterOrderwithReturns}    10
    wait until element is enabled    ${Retail_HK_AccountOrderPage_StatusFilter_Delivered}    10
    wait until element is enabled    ${Retail_HK_AccountOrderPage_StatusFilter_Processing}    10

User should be able to filter status by ALL in Account Order Page
    wait until element is visible    ${Retail_AccountOrderPageStatusFilterALL}    10
    capture element screenshot    ${Retail_AccountOrderPageStatusFilterALL}
    click element    ${Retail_AccountOrderPageStatusFilterALL}
    sleep    2

User should be able to filter status by Received in Account Order Page
    wait until element is visible    ${Retail_AccountOrderPageStatusFilterReceived}    10
    capture element screenshot    ${Retail_AccountOrderPageStatusFilterReceived}
    click element    ${Retail_AccountOrderPageStatusFilterReceived}
    sleep    2

User should be able to filter status by Submitted in Account Order Page
    wait until element is visible    ${Retail_AccountOrderPageStatusFilterSubmitted}    10
    capture element screenshot    ${Retail_AccountOrderPageStatusFilterSubmitted}
    click element    ${Retail_AccountOrderPageStatusFilterSubmitted}
    sleep    2

User should be able to filter status by Dispatched in Account Order Page
    wait until element is visible    ${Retail_AccountOrderPageStatusFilterDispatched}    10
    capture element screenshot    ${Retail_AccountOrderPageStatusFilterDispatched}
    click element    ${Retail_AccountOrderPageStatusFilterDispatched}
    sleep    2

User should be able to filter status by Partially Dispathed in Account Order Page
    wait until element is visible    ${Retail_AccountOrderPageStatusFilterPartiallyDispatched}    10
    capture element screenshot    ${Retail_AccountOrderPageStatusFilterPartiallyDispatched}
    click element    ${Retail_AccountOrderPageStatusFilterPartiallyDispatched}
    sleep    2

User should be able to filter status by Order with Returns in Account Order Page
    wait until element is visible    ${Retail_AccountOrderPageStatusFilterOrderwithReturns}    10
    capture element screenshot    ${Retail_AccountOrderPageStatusFilterOrderwithReturns}
    click element    ${Retail_AccountOrderPageStatusFilterOrderwithReturns}
    sleep    2

User should be able to filter status by Delivered in HK Account Order Page
    wait until element is visible    ${Retail_HK_AccountOrderPage_StatusFilter_Delivered}    10
    capture element screenshot    ${Retail_HK_AccountOrderPage_StatusFilter_Delivered}
    click element    ${Retail_HK_AccountOrderPage_StatusFilter_Delivered}
    sleep    2

User should be able to filter status by Processing in HK Account Order Page
    wait until element is visible    ${Retail_HK_AccountOrderPage_StatusFilter_Processing}    10
    capture element screenshot    ${Retail_HK_AccountOrderPage_StatusFilter_Processing}
    click element    ${Retail_HK_AccountOrderPage_StatusFilter_Processing}
    sleep    2

User should be able to click Date Filter in Account Order Page
    wait until element is visible    ${Retail_AccountOrderPageDateFilter}    10
    scroll element into view    ${Retail_AccountOrderPageDateFilter}
    capture element screenshot    ${Retail_AccountOrderPageDateFilter}
    click element    ${Retail_AccountOrderPageDateFilter}
    sleep    2

User should be able to view Date Filter Elements in Account Order Page
    wait until element is visible    ${Retail_AccountOrderPageDateFilterContainer}    10
    wait until element is visible    ${Retail_AccountOrderPageDateFilterMonthName1}    10
    wait until element is visible    ${Retail_AccountOrderPageDateFilterMonthName2}    10
    wait until element is visible    ${Retail_AccountOrderPageDateFilterWeekdays1}    10
    wait until element is visible    ${Retail_AccountOrderPageDateFilterWeekdays2}    10

User should be able to click Previous Month Button in Account Order Page
    wait until element is visible    ${Retail_AccountOrderPageDateFilterPreviousMonth}    10
    capture element screenshot    ${Retail_AccountOrderPageDateFilterPreviousMonth}
    click element    ${Retail_AccountOrderPageDateFilterPreviousMonth}
    sleep    2

User should be able to click Next Month Button in Account Order Page
    wait until element is visible    ${Retail_AccountOrderPageDateFilterNextMonth}    10
    capture element screenshot    ${Retail_AccountOrderPageDateFilterNextMonth}
    click element    ${Retail_AccountOrderPageDateFilterNextMonth}
    sleep    2

User should be able to click Month Drop Down Filter in Account Order Page
    wait until element is visible    ${Retail_AccountOrderPageDateFilterSelectMonthDropDown}    10
    capture element screenshot    ${Retail_AccountOrderPageDateFilterSelectMonthDropDown}
    click element    ${Retail_AccountOrderPageDateFilterSelectMonthDropDown}
    sleep    2

User should be able to select month from drop down in Account Order Page
    wait until element is visible    ${Retail_AccountOrderPageDateFilterSelectMonth}    10
#    capture element screenshot    ${Retail_AccountOrderPageDateFilterSelectMonth}
    click element    ${Retail_AccountOrderPageDateFilterSelectMonth}
    sleep    2

User should be able to click Year Drop Down Filter in Account Order Page
    wait until element is visible    ${Retail_AccountOrderPageDateFilterSelectYearDropDown}    10
    capture element screenshot    ${Retail_AccountOrderPageDateFilterSelectYearDropDown}
    click element    ${Retail_AccountOrderPageDateFilterSelectYearDropDown}
    sleep    2

User should be able to select year from drop down in Account Order Page
    wait until element is visible    ${Retail_AccountOrderPageDateFilterSelectYear}    10
#    capture element screenshot    ${Retail_AccountOrderPageDateFilterSelectYear}
    click element    ${Retail_AccountOrderPageDateFilterSelectYear}
    sleep    2

User should be able to select From Date in Account Order Page
    wait until element is visible    ${Retail_AccountOrderPageDateFilterMonth1Days1stSelection}    10
    capture element screenshot    ${Retail_AccountOrderPageDateFilterMonth1Days1stSelection}
    click element    ${Retail_AccountOrderPageDateFilterMonth1Days1stSelection}
    sleep    2

User should be able to select To Date in Account Order Page
    wait until element is visible    ${Retail_AccountOrderPageDateFilterMonth1Days2ndSelection}    10
    capture element screenshot    ${Retail_AccountOrderPageDateFilterMonth1Days2ndSelection}
    click element    ${Retail_AccountOrderPageDateFilterMonth1Days2ndSelection}
    sleep    2

User should be able to click Date Filter Clear Button in Account Order Page
    wait until element is visible    ${Retail_AccountOrderPageDateFilterClearButton}    10
    capture element screenshot    ${Retail_AccountOrderPageDateFilterClearButton}
    click element    ${Retail_AccountOrderPageDateFilterClearButton}
    sleep    2

User should be able to click Date Filter Submit Button in Account Order Page
    wait until element is visible    ${Retail_AccountOrderPageDateFilterSubmitButton}    10
    capture element screenshot    ${Retail_AccountOrderPageDateFilterSubmitButton}
    click element    ${Retail_AccountOrderPageDateFilterSubmitButton}
    sleep    2

User should be able to click Search Box in Account Order Page
    wait until element is visible    ${Retail_AccountOrderPageSearchBox}    10
    scroll element into view    ${Retail_AccountOrderPageSearchBox}
    capture element screenshot    ${Retail_AccountOrderPageSearchBox}
    click element    ${Retail_AccountOrderPageSearchBox}
    sleep    2

User should be able to Input Text in Search Box in Account Order Page
    clear element text    ${Retail_AccountOrderPageSearchBox}
    input text    ${Retail_AccountOrderPageSearchBox}    ${Retail_AccountOrderPageSearchValue}
    capture element screenshot    ${Retail_AccountOrderPageSearchBox}
    sleep    2

User should be able to click clear button from Search Box in Account Order Page
    wait until element is visible    ${Retail_AccountOrderPageSearchClose}    10
    capture element screenshot    ${Retail_AccountOrderPageSearchClose}
    click element    ${Retail_AccountOrderPageSearchClose}
    sleep    2

User should be able to click Arrage Filter in Account Order Page
    wait until element is visible    ${Retail_AccountOrderPageArrangeFilter}    10
    scroll element into view    ${Retail_AccountOrderPageArrangeFilter}
    capture element screenshot    ${Retail_AccountOrderPageArrangeFilter}
    click element    ${Retail_AccountOrderPageArrangeFilter}
    sleep    2

User should be able to Filter by New to Old in Account Order Page
    wait until element is visible    ${Retail_AccountOrderPageArrangeFilterNewtoOld}    10
    capture element screenshot    ${Retail_AccountOrderPageArrangeFilterNewtoOld}
    click element    ${Retail_AccountOrderPageArrangeFilterNewtoOld}
    sleep    2

User should be able to Filter by Old to New in Account Order Page
    wait until element is visible    ${Retail_AccountOrderPageArrangeFilterOldtoNew}    10
    capture element screenshot    ${Retail_AccountOrderPageArrangeFilterOldtoNew}
    click element    ${Retail_AccountOrderPageArrangeFilterOldtoNew}
    sleep    2

User should be able to Filter by Order Number in Account Order Page
    wait until element is visible    ${Retail_AccountOrderPageArrangeFilterOrderNum}    10
    capture element screenshot    ${Retail_AccountOrderPageArrangeFilterOrderNum}
    click element    ${Retail_AccountOrderPageArrangeFilterOrderNum}
    sleep    2

User should be able to view order with Recieved Status in Retail Account Orders Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${RecivedStatus}    run keyword and return status    element should be visible    ${Retail_AccountOrderPageReceivedContainer}
    run keyword if    '${RecivedStatus}' == 'False'    User should be able to click next page in Retail Account Orders Page
    exit for loop if    '${RecivedStatus}' == 'True'
    END
    scroll element into view    ${Retail_AccountOrderPageReceivedContainer}
    wait until element is visible    ${Retail_AccountOrderPageReceivedContainer}    10
    capture element screenshot    ${Retail_AccountOrderPageReceivedContainer}
    sleep    2

User should be able to click order with Recieved Status in Retail Account Orders Page
    wait until element is visible    ${Retail_AccountOrderPageReceivedPartRef}    10
    click element    ${Retail_AccountOrderPageReceivedPartRef}
    wait until element is visible    ${Retail_AccountOrderDetailsOrderHeader}    10
    capture page screenshot
    sleep    2

User should be able to view order with Submitted Status in Retail Account Orders Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${SubmittedStatus}    run keyword and return status    element should be visible    ${Retail_AccountOrderPageSubmittedContainer}
    run keyword if    '${SubmittedStatus}' == 'False'    User should be able to click next page in Retail Account Orders Page
    exit for loop if    '${SubmittedStatus}' == 'True'
    END
    scroll element into view    ${Retail_AccountOrderPageSubmittedContainer}
    wait until element is visible    ${Retail_AccountOrderPageSubmittedContainer}    10
    capture element screenshot    ${Retail_AccountOrderPageSubmittedContainer}
    sleep    2

User should be able to click order with Submitted Status in Retail Account Orders Page
    wait until element is visible    ${Retail_AccountOrderPageSubmittedPartRef}    10
    click element    ${Retail_AccountOrderPageSubmittedPartRef}
    wait until element is visible    ${Retail_AccountOrderDetailsOrderHeader}
    capture page screenshot
    sleep    2

User should be able to view order with Dispatched Status in Retail Account Orders Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${DispatchedStatus}    run keyword and return status    element should be visible    ${Retail_AccountOrderPageDispatchedContainer}
    run keyword if    '${DispatchedStatus}' == 'False'    User should be able to click next page in Retail Account Orders Page
    exit for loop if    '${DispatchedStatus}' == 'True'
    END
    scroll element into view    ${Retail_AccountOrderPageDispatchedContainer}
    wait until element is visible    ${Retail_AccountOrderPageDispatchedContainer}    10
    capture element screenshot    ${Retail_AccountOrderPageDispatchedContainer}
    sleep    2

User should be able to click order with Dispatched Status in Retail Account Orders Page
    wait until element is visible    ${Retail_AccountOrderPageDispatchedPartRef}    10
    click element    ${Retail_AccountOrderPageDispatchedPartRef}
    wait until element is visible    ${Retail_AccountOrderDetailsOrderHeader}
    capture page screenshot
    sleep    2

User should be able to view order with Partially Dispatched Status in Retail Account Orders Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${PartiallyDispatchedStatus}    run keyword and return status    element should be visible    ${Retail_AccountOrderPagePartiallyDispatchedContainer}
    run keyword if    '${PartiallyDispatchedStatus}' == 'False'    User should be able to click next page in Retail Account Orders Page
    exit for loop if    '${PartiallyDispatchedStatus}' == 'True'
    END
    scroll element into view    ${Retail_AccountOrderPagePartiallyDispatchedContainer}
    wait until element is visible    ${Retail_AccountOrderPagePartiallyDispatchedContainer}    10
    capture element screenshot    ${Retail_AccountOrderPagePartiallyDispatchedContainer}
    sleep    2

User should be able to click order with Partially Dispatched Status in Retail Account Orders Page
    wait until element is visible    ${Retail_AccountOrderPagePartiallyDispatchedPartRef}    10
    click element    ${Retail_AccountOrderPagePartiallyDispatchedPartRef}
    wait until element is visible    ${Retail_AccountOrderDetailsOrderHeader}
    capture page screenshot
    sleep    2

User should be able to view order with Orders with Returns Status in Retail Account Orders Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${OrderwithReturnStatus}    run keyword and return status    element should be visible    ${Retail_AccountOrderPageOrderwithReturnContainer}
    run keyword if    '${OrderwithReturnStatus}' == 'False'    User should be able to click next page in Retail Account Orders Page
    exit for loop if    '${OrderwithReturnStatus}' == 'True'
    END
    scroll element into view    ${Retail_AccountOrderPageOrderwithReturnContainer}
    wait until element is visible    ${Retail_AccountOrderPageOrderwithReturnContainer}    10
    capture element screenshot    ${Retail_AccountOrderPageOrderwithReturnContainer}
    sleep    2

User should be able to click order with Orders with Returns Status in Retail Account Orders Page
    wait until element is visible    ${Retail_AccountOrderPageOrderwithReturnPartRef}    10
    click element    ${Retail_AccountOrderPageOrderwithReturnPartRef}
    wait until element is visible    ${Retail_AccountOrderDetailsOrderHeader}
    capture page screenshot
    sleep    2

User should be able to click Back to Customer Orders in Retail Account Order Details Page
    wait until element is visible    ${Retail_AccountOrderDetailsBackButton}    10
    scroll element into view    ${Retail_AccountOrderDetailsBackButton}
    capture element screenshot    ${Retail_AccountOrderDetailsBackButton}
    click element    ${Retail_AccountOrderDetailsBackButton}
    sleep    2

User should be able to click next page in Retail Account Orders Page
    wait until element is visible    ${Retail_AccountOrderPageDetailsNextPageButton}    10
    scroll element into view    ${Retail_AccountOrderPageDetailsNextPageButton}
    click element    ${Retail_AccountOrderPageDetailsNextPageButton}
    sleep    2

User should be able to click first page in Retail Account Orders Page
    wait until element is visible    ${Retail_AccountOrderPageDetailsFirstPageButton}    10
    scroll element into view    ${Retail_AccountOrderPageDetailsFirstPageButton}
    click element    ${Retail_AccountOrderPageDetailsFirstPageButton}
    sleep    2

User should be able to click page 1 in Retail Account Orders Page
    wait until element is visible    ${Retail_AccountOrderPageDetailsPage1Button}    10
    scroll element into view    ${Retail_AccountOrderPageDetailsPage1Button}
    click element    ${Retail_AccountOrderPageDetailsPage1Button}
    sleep    2

User should be able to return to first page in Retail Account Orders Page
    ${firstpagestatus}    run keyword and return status    element should be visible    ${Retail_AccountOrderPageDetailsFirstPageButton}
    ${Page1status}    run keyword and return status    element should be visible    ${Retail_AccountOrderPageDetailsPage1Button}
    run keyword if    '${Page1status}' == 'True'    User should be able to click page 1 in Retail Account Orders Page
    run keyword if    '${firstpagestatus}' == 'True'    User should be able to click first page in Retail Account Orders Page
    sleep    3

User should be able to click message supplier button in Retail Account Order Details Page
    wait until element is visible    ${Retail_AccountOrderDetailsMessageSupplierButton}    10
    scroll element into view    ${Retail_AccountOrderDetailsMessageSupplierButton}
    capture element screenshot    ${Retail_AccountOrderDetailsMessageSupplierButton}
    click element    ${Retail_AccountOrderDetailsMessageSupplierButton}
    sleep    2

User should be able to view message supplier pop up in Retail Account Order Details Page
    wait until element is visible    ${Retail_AccountOrderDetailsMessageContainer}    10
    wait until element is visible    ${Retail_AccountOrderDetailsMessageToSupplierlabel}    10
    wait until element is visible    ${Retail_AccountOrderDetailsMessageSubjectlabel}    10
    wait until element is visible    ${Retail_AccountOrderDetailsMessageMessagelabel}    10
    wait until element is visible    ${Retail_AccountOrderDetailsMessagePhotolabel}    10
    wait until element is visible    ${Retail_AccountOrderDetailsMessageToSupplierTextBox}    10
    wait until element is visible    ${Retail_AccountOrderDetailsMessageSubjectTextBox}    10
    wait until element is visible    ${Retail_AccountOrderDetailsMessageMessageTextBox}    10
    wait until element is visible    ${Retail_AccountOrderDetailsMessageUploadImageButton}    10
    wait until element is visible    ${Retail_AccountOrderDetailsMessageCancelButton}    10
    wait until element is visible    ${Retail_AccountOrderDetailsMessageSendButton}    10

    capture element screenshot    ${Retail_AccountOrderDetailsMessageContainer}
    capture element screenshot    ${Retail_AccountOrderDetailsMessageToSupplierlabel}
    capture element screenshot    ${Retail_AccountOrderDetailsMessageSubjectlabel}
    capture element screenshot    ${Retail_AccountOrderDetailsMessageMessagelabel}
    capture element screenshot    ${Retail_AccountOrderDetailsMessagePhotolabel}
    capture element screenshot    ${Retail_AccountOrderDetailsMessageToSupplierTextBox}
    capture element screenshot    ${Retail_AccountOrderDetailsMessageSubjectTextBox}
    capture element screenshot    ${Retail_AccountOrderDetailsMessageMessageTextBox}
    capture element screenshot    ${Retail_AccountOrderDetailsMessageUploadImageButton}
    capture element screenshot    ${Retail_AccountOrderDetailsMessageCancelButton}
    capture element screenshot    ${Retail_AccountOrderDetailsMessageSendButton}

    sleep    2

User should be able to input text on message pop up text field in Retail Account Order Details Page
    wait until element is visible    ${Retail_AccountOrderDetailsMessageMessageTextBox}    10
    clear element text    ${Retail_AccountOrderDetailsMessageMessageTextBox}
    input text    ${Retail_AccountOrderDetailsMessageMessageTextBox}    ${Retail_AccountReturnPageOrderReturnDetailsMessagePopUpUpMessabeValue}
    capture element screenshot    ${Retail_AccountOrderDetailsMessageMessageTextBox}
    sleep    2

User should be able to upload photo on message pop in Retail Account Order Details Page
    wait until element is visible   ${Retail_AccountOrderDetailsMessageUploadImageButton}    10
    choose file    ${Retail_AccountOrderDetailsMessageUploadImage}   ${UploadPhoto_Path_Value}
    capture element screenshot    ${Retail_AccountOrderDetailsMessageUploadImageContainer}
    sleep    2

User should be able to click cancel on message pop in Retail Account Order Details Page
    wait until element is visible    ${Retail_AccountOrderDetailsMessageCancelButton}    10
    capture element screenshot    ${Retail_AccountOrderDetailsMessageCancelButton}
    click element    ${Retail_AccountOrderDetailsMessageCancelButton}
    sleep    2

User should be able to send on message pop in Retail Account Order Details Page
    wait until element is visible    ${Retail_AccountOrderDetailsMessageSendButton}    10
    capture element screenshot    ${Retail_AccountOrderDetailsMessageSendButton}
    click element    ${Retail_AccountOrderDetailsMessageSendButton}
    sleep    2

User should be able to click back to order details in Retail Account Order Details Page
    wait until element is visible    ${Retail_AccountOrderDetailsMessageCofirmationContainer}    10
    wait until element is visible    ${Retail_AccountOrderDetailsMessageCofirmationButton}    10
    capture element screenshot    ${Retail_AccountOrderDetailsMessageCofirmationButton}
    click element    ${Retail_AccountOrderDetailsMessageCofirmationButton}
    sleep    2

User should be able to click Re-Order button in Retail Account Order Details Page
    wait until element is visible    ${Retail_AccountOrderDetailsRe-OrderButton}    10
    scroll element into view    ${Retail_AccountOrderDetailsRe-OrderButton}
    capture element screenshot    ${Retail_AccountOrderDetailsRe-OrderButton}
    click element    ${Retail_AccountOrderDetailsRe-OrderButton}
    sleep    2

User should be able to click orders with $0.25 spent in Retail Account Order Details Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${Orderwith$0.25Status}    run keyword and return status    element should be visible    ${Retail_AccountOrderPageOrderwith$0.25Container}
    run keyword if    '${Orderwith$0.25Status}' == 'False'    User should be able to click next page in Retail Account Orders Page
    exit for loop if    '${Orderwith$0.25Status}' == 'True'
    END
    ${Orderwith$0.25}    get element count    ${Retail_AccountOrderPageOrderwith$0.25Container}
    ${Orderwith$0.25RandomIndex}    evaluate    random.randint(1,${Orderwith$0.25})
    wait until element is visible    (//tr[.//td[@class='cx-order-history-total' and contains(text(),'$0.25')]])[${Orderwith$0.25RandomIndex}]|(//tr[.//td[@class='cx-order-history-total' and contains(text(),'$1.60')]])[${Orderwith$0.25RandomIndex}]
    scroll element into view    (//tr[.//td[@class='cx-order-history-total' and contains(text(),'$0.25')]])[${Orderwith$0.25RandomIndex}]|(//tr[.//td[@class='cx-order-history-total' and contains(text(),'$1.60')]])[${Orderwith$0.25RandomIndex}]
    capture element screenshot    (//tr[.//td[@class='cx-order-history-total' and contains(text(),'$0.25')]])[${Orderwith$0.25RandomIndex}]|(//tr[.//td[@class='cx-order-history-total' and contains(text(),'$1.60')]])[${Orderwith$0.25RandomIndex}]
    click element    (//tr[.//td[@class='cx-order-history-total' and contains(text(),'$0.25')]]//td[@class='cx-order-history-code'])[${Orderwith$0.25RandomIndex}]|(//tr[.//td[@class='cx-order-history-total' and contains(text(),'$1.60')]]//td[@class='cx-order-history-code'])[${Orderwith$0.25RandomIndex}]
    sleep    2

User should be able to click orders with $129.0 spent in HK Retail Account Order Details Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${Orderwith$129.0Status}    run keyword and return status    element should be visible    ${Retail_HK_AccountOrderPage_Orderwith$129.0_Container}
    run keyword if    '${Orderwith$129.0Status}' == 'False'    User should be able to click next page in Retail Account Orders Page
    exit for loop if    '${Orderwith$129.0Status}' == 'True'
    END
    ${Orderwith$129.0}    get element count    ${Retail_HK_AccountOrderPage_Orderwith$129.0_Container}
    ${Orderwith$129.0RandomIndex}    evaluate    random.randint(1,${Orderwith$129.0})
    wait until element is visible    (//tr[.//td[@class='cx-order-history-total' and contains(text(),'$129.0')]])[${Orderwith$129.0RandomIndex}]|(//tr[.//td[@class='cx-order-history-total' and contains(text(),'$41.0')]])[${Orderwith$129.0RandomIndex}]
    scroll element into view    (//tr[.//td[@class='cx-order-history-total' and contains(text(),'$129.0')]])[${Orderwith$129.0RandomIndex}]|(//tr[.//td[@class='cx-order-history-total' and contains(text(),'$41.0')]])[${Orderwith$129.0RandomIndex}]
    capture element screenshot    (//tr[.//td[@class='cx-order-history-total' and contains(text(),'$129.0')]])[${Orderwith$129.0RandomIndex}]|(//tr[.//td[@class='cx-order-history-total' and contains(text(),'$41.0')]])[${Orderwith$129.0RandomIndex}]
    click element    (//tr[.//td[@class='cx-order-history-total' and contains(text(),'$129.0')]]//td[@class='cx-order-history-code'])[${Orderwith$129.0RandomIndex}]|(//tr[.//td[@class='cx-order-history-total' and contains(text(),'$41.0')]]//td[@class='cx-order-history-code'])[${Orderwith$129.0RandomIndex}]
    sleep    2


User should be able to click orders with $129.0 spent in HK Retail Account Order Details Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${Orderwith$129.0Status}    run keyword and return status    element should be visible    ${Retail_HK_AccountOrderPage_Orderwith$129.0_Container}
    run keyword if    '${Orderwith$129.0Status}' == 'False'    User should be able to click next page in Retail Account Orders Page
    exit for loop if    '${Orderwith$129.0Status}' == 'True'
    END
    ${Orderwith$129.0}    get element count    ${Retail_HK_AccountOrderPage_Orderwith$129.0_Container}
    ${Orderwith$129.0RandomIndex}    evaluate    random.randint(1,${Orderwith$129.0})
    wait until element is visible    (//tr[.//td[@class='cx-order-history-total' and contains(text(),'$129.0')]])|(//tr[.//td[@class='cx-order-history-total' and contains(text(),'$41.0')]])[${Orderwith$129.0RandomIndex}]
    scroll element into view    (//tr[.//td[@class='cx-order-history-total' and contains(text(),'$129.0')]])|(//tr[.//td[@class='cx-order-history-total' and contains(text(),'$41.0')]])[${Orderwith$129.0RandomIndex}]
    capture element screenshot    (//tr[.//td[@class='cx-order-history-total' and contains(text(),'$129.0')]])|(//tr[.//td[@class='cx-order-history-total' and contains(text(),'$41.0')]])[${Orderwith$129.0RandomIndex}]
    click element    (//tr[.//td[@class='cx-order-history-total' and contains(text(),'$129.0')]]//td[@class='cx-order-history-code'])|(//tr[.//td[@class='cx-order-history-total' and contains(text(),'$41.0')]]//td[@class='cx-order-history-code'])[${Orderwith$129.0RandomIndex}]
    sleep    2

#-----------------------------------------------------Retail Move to Top------------------------------------------------
TC Move to Top
    scroll element into view    ${Retail_AccountAccountpageMyAccountLabel}
    sleep     3