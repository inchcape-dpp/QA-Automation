*** Settings ***
Documentation    Suite description

Library    SeleniumLibrary

#Resource    ../../../Resource/testdata/config.robot
Resource    ../../../Resource/testdata/Dealer/Dealer_Variable.robot
Resource    ../../../Resource/testdata/credentials.robot



*** Keywords ***
#-----------------------------------------------------Dealer Order Page-------------------------------------------------
User should be able to view Cutomer Orders Panel
    wait until element is visible    ${HomepageOrdersMenu}    10
    click element    ${HomepageOrdersMenu}
    wait until element is visible    ${OrderPagePanelContainer}    10
    capture page screenshot

    wait until element is visible    ${HomepageOrdersMenu}    10
    wait until element is visible    ${OrderPageTotalOrders}    10
    wait until element is visible    ${OrderPageSortBar}    10
    wait until element is visible    ${OrderPageStatusFilter}    10
    wait until element is visible    ${OrderPageDateFilter}    10
    wait until element is visible    ${OrderPageSearchBox}    10
    wait until element is visible    ${OrderPageSearchButton}    10
#    wait until element is visible    ${OrderPageSearchClose}    10
    wait until element is visible    ${OrderPageArrangeFilter}    10
    wait until element is visible   ${OrderPageDetailsColumn}    10

    capture element screenshot    ${HomepageOrdersMenu}
    capture element screenshot    ${OrderPageTotalOrders}
    capture element screenshot    ${OrderPageSortBar}
    capture element screenshot    ${OrderPageStatusFilter}
    capture element screenshot    ${OrderPageDateFilter}
    capture element screenshot    ${OrderPageSearchBox}
    capture element screenshot    ${OrderPageSearchButton}
#    capture element screenshot    ${OrderPageSearchClose}
    capture element screenshot    ${OrderPageArrangeFilter}
    capture element screenshot    ${OrderPageDetailsColumn}
    scroll element into view    ${OrderPageDetailsPreviousPageButton}
    capture element screenshot    ${OrderPageDetailsPreviousPageButton}
    capture element screenshot    ${OrderPageDetailsNextPageButton}
    capture element screenshot    ${OrderPageDetailsPage1Button}
    Sleep    2

User should be able to select one order from the list
    wait until element is visible    ${OrderPageHistory1}    10
    scroll element into view    ${OrderPageHistory1}
    click element    ${OrderPageHistory1}
    sleep    2
    capture page screenshot

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


    capture element screenshot    ${Retail_HK_AccountOrderPageDetailsColumn}
    capture element screenshot    ${Retail_HK_AccountOrderPageDetailsPartslaneRefLabel}
    capture element screenshot    ${Retail_HK_AccountOrderPageDetailsCustAccNumLabel}
    capture element screenshot    ${Retail_HK_AccountOrderPageDetailsOrderDateLabel}
    capture element screenshot    ${Retail_HK_AccountOrderPageDetailsDeliveryMethod}
    capture element screenshot    ${Retail_HK_AccountOrderPageDetailsPaymentMethod}
    capture element screenshot    ${Retail_HK_AccountOrderPageDetailsTotalLabel}
    capture element screenshot    ${Retail_HK_AccountOrderPageDetailsStatusLabel}
    capture element screenshot    ${Retail_HK_AccountOrderPageDetailsReturnLabel}


    sleep    2
User should be able to view order details
    wait until element is visible    ${OrderDetailsOrderHeader}    20
    wait until element is visible    ${OrderDetailsOrderStatus}    10

    wait until element is visible    ${OrderDetailsContainer}    10
    capture element screenshot    ${OrderDetailsContainer}

    wait until element is visible    ${OrderDetailsContainerRefNumLabel}    10
    wait until element is visible    ${OrderDetailsContainerCustNameLabel}    10
    wait until element is visible    ${OrderDetailsContainerComNameLabel}     10
    wait until element is visible    ${OrderDetailsContainerADPLabel}     10
    wait until element is visible    ${OrderDetailsContainerMembershipLabel}    10
    wait until element is visible    ${OrderDetailsContainerOrderDateLabel}    10

    capture element screenshot    ${OrderDetailsContainerRefNumLabel}
    capture element screenshot    ${OrderDetailsContainerCustNameLabel}
    capture element screenshot    ${OrderDetailsContainerComNameLabel}
    capture element screenshot    ${OrderDetailsContainerADPLabel}
    capture element screenshot    ${OrderDetailsContainerMembershipLabel}
    capture element screenshot    ${OrderDetailsContainerOrderDateLabel}

    wait until element is visible    ${OrderDetailsContainerRefNumValue}    10
    wait until element is visible    ${OrderDetailsContainerCustNameValue}    10
    wait until element is visible    ${OrderDetailsContainerComNameValue}    10
    wait until element is visible    ${OrderDetailsContainerADPValue}    10
    wait until element is visible    ${OrderDetailsContainerMembershipValue}     10
    wait until element is visible    ${OrderDetailsContainerOrderDateValue}     10

    capture element screenshot    ${OrderDetailsContainerRefNumValue}
    capture element screenshot    ${OrderDetailsContainerCustNameValue}
    capture element screenshot    ${OrderDetailsContainerComNameValue}
    capture element screenshot    ${OrderDetailsContainerADPValue}
    capture element screenshot    ${OrderDetailsContainerMembershipValue}
    capture element screenshot    ${OrderDetailsContainerOrderDateValue}

    scroll element into view    ${OrderDetailsReturnContainer}
    capture element screenshot    ${OrderDetailsReturnContainer}

    wait until element is visible    ${OrderDetailsReturnHeader}    10
    wait until element is visible    ${OrderDetailsReturnDescription}    10
    wait until element is visible    ${OrderDetailsReturnPrice}    10
    wait until element is visible    ${OrderDetailsReturnRRP}    10
    wait until element is visible    ${OrderDetailsReturnOrder}    10
    wait until element is visible    ${OrderDetailsReturnShipped}    10
    wait until element is visible    ${OrderDetailsReturnPending}    10
    wait until element is visible    ${OrderDetailsReturnTotal}    10

    capture element screenshot    ${OrderDetailsReturnHeader}
    capture element screenshot    ${OrderDetailsReturnDescription}
    capture element screenshot    ${OrderDetailsReturnPrice}
    capture element screenshot    ${OrderDetailsReturnRRP}
    capture element screenshot    ${OrderDetailsReturnOrder}
    capture element screenshot    ${OrderDetailsReturnShipped}
    capture element screenshot    ${OrderDetailsReturnPending}
    capture element screenshot    ${OrderDetailsReturnTotal}

    scroll element into view    ${OrderDetailsBillingContainer}
    capture element screenshot    ${OrderDetailsBillingContainer}

    wait until element is visible    ${OrderDetailsBillingLabel}    10
    wait until element is visible    ${OrderDetailsOrderSummaryLabel}    10
    wait until element is visible    ${OrderDetailsBillingDetailsAndTotal}    10
    wait until element is visible    ${OrderDetailsAddressField}    10
    wait until element is visible    ${OrderDetailsSummaryField}     10

    capture element screenshot    ${OrderDetailsBillingLabel}
    capture element screenshot    ${OrderDetailsOrderSummaryLabel}
    capture element screenshot    ${OrderDetailsBillingDetailsAndTotal}
    capture element screenshot    ${OrderDetailsAddressField}
    capture element screenshot    ${OrderDetailsSummaryField}

    sleep     3

User should be able to view order details in HK Order Details Page
#    click element    ${OrderPageDetailsReferenceNumber}
    wait until element is visible    ${OrderDetailsOrderHeader}    20
    wait until element is visible    ${OrderDetailsOrderStatus}    10

    wait until element is visible    ${OrderDetailsContainer}    10
    capture element screenshot    ${OrderDetailsContainer}

    wait until element is visible    ${OrderDetailsContainerRefNumLabel}    10
    wait until element is visible    ${OrderDetailsContainerCustNameLabel}    10
    wait until element is visible    ${OrderDetailsContainerComNameLabel}    10
    wait until element is visible    ${OrderDetailsContainerADPLabel}    10
    wait until element is visible    ${OrderDetailsContainerMembershipLabel}    10
    wait until element is visible    ${OrderDetailsContainerOrderDateLabel}    10
    wait until element is visible    ${OrderDetailsContainerPaymenMethodLabel}    10
    wait until element is visible    ${OrderDetailsContainerDeliveryMethodLabel}   10

    capture element screenshot    ${OrderDetailsContainerRefNumLabel}
    capture element screenshot    ${OrderDetailsContainerCustNameLabel}
    capture element screenshot    ${OrderDetailsContainerComNameLabel}
    capture element screenshot    ${OrderDetailsContainerADPLabel}
    capture element screenshot    ${OrderDetailsContainerMembershipLabel}
    capture element screenshot    ${OrderDetailsContainerOrderDateLabel}
    capture element screenshot     ${OrderDetailsContainerPaymenMethodLabel}
    capture element screenshot    ${OrderDetailsContainerDeliveryMethodLabel}

    wait until element is visible    ${OrderDetailsContainerRefNumValue}    10
    wait until element is visible    ${OrderDetailsContainerCustNameValue}    10
    wait until element is visible    ${OrderDetailsContainerComNameValue}   10
    wait until element is visible    ${OrderDetailsContainerADPValue}    10
    wait until element is visible    ${OrderDetailsContainerMembershipValue}    10
    wait until element is visible    ${OrderDetailsContainerPaymenMethodValue}    10
    wait until element is visible    ${OrderDetailsContainerOrderDateValue}    10
    wait until element is visible    ${OrderDetailsContainerDeliveryMethodValue}    10

    capture element screenshot    ${OrderDetailsContainerRefNumValue}
    capture element screenshot    ${OrderDetailsContainerCustNameValue}
    capture element screenshot    ${OrderDetailsContainerComNameValue}
    capture element screenshot    ${OrderDetailsContainerADPValue}
    capture element screenshot    ${OrderDetailsContainerMembershipValue}
    capture element screenshot    ${OrderDetailsContainerOrderDateValue}
    capture element screenshot    ${OrderDetailsContainerPaymenMethodValue}
    capture element screenshot    ${OrderDetailsContainerDeliveryMethodValue}


    scroll element into view    ${OrderDetailsReturnContainer}
    capture element screenshot    ${OrderDetailsReturnContainer}

    wait until element is visible    ${OrderDetailsReturnHeader}    10
    wait until element is visible    ${OrderDetailsReturnDescription}    10
    wait until element is visible    ${OrderDetailsReturnPrice}    10
    wait until element is visible    ${OrderDetailsReturnRRP}    10
    wait until element is visible    ${OrderDetailsReturnOrder}    10
    wait until element is visible    ${OrderDetailsReturnShipped}    10
    wait until element is visible    ${OrderDetailsReturnPending}    10
    wait until element is visible    ${OrderDetailsReturnTotal}    10

    capture element screenshot    ${OrderDetailsReturnHeader}
    capture element screenshot    ${OrderDetailsReturnDescription}
    capture element screenshot    ${OrderDetailsReturnPrice}
    capture element screenshot    ${OrderDetailsReturnRRP}
    capture element screenshot    ${OrderDetailsReturnOrder}
    capture element screenshot    ${OrderDetailsReturnShipped}
    capture element screenshot    ${OrderDetailsReturnPending}
    capture element screenshot    ${OrderDetailsReturnTotal}

    scroll element into view    ${OrderDetailsBillingContainer}
    capture element screenshot    ${OrderDetailsBillingContainer}

    wait until element is visible    ${OrderDetailsBillingLabel}    10
    wait until element is visible    ${OrderDetailsOrderSummaryLabel}    10
    wait until element is visible    ${OrderDetailsBillingDetailsAndTotal}    10
    wait until element is visible    ${OrderDetailsAddressField}    10
    wait until element is visible    ${OrderDetailsSummaryField}     10
    wait until element is visible    ${OrderDetailsDeliveryInstructionField}    10

    capture element screenshot    ${OrderDetailsBillingLabel}
    capture element screenshot    ${OrderDetailsOrderSummaryLabel}
    capture element screenshot    ${OrderDetailsBillingDetailsAndTotal}
    capture element screenshot    ${OrderDetailsAddressField}
    capture element screenshot    ${OrderDetailsSummaryField}
    capture element screenshot    ${OrderDetailsDeliveryInstructionField}

    sleep     3



User should be able to click filter by status in Order Page
    wait until element is visible    ${OrderPageStatusFilter}    10
    scroll element into view    ${OrderPageStatusFilter}
    capture element screenshot    ${OrderPageStatusFilter}
    click element    ${OrderPageStatusFilter}
    sleep    2

User should be able to filter status by ALL in Order Page
    wait until element is visible    ${OrderPageStatusFilterALL}    10
    capture element screenshot    ${OrderPageStatusFilterALL}
    click element    ${OrderPageStatusFilterALL}
    sleep    2

User should be able to filter status by Received in Order Page
    wait until element is visible    ${OrderPageStatusFilterReceived}    10
    capture element screenshot    ${OrderPageStatusFilterReceived}
    click element    ${OrderPageStatusFilterReceived}
    sleep    2

User should be able to filter status by Submitted in Order Page
    wait until element is visible    ${OrderPageStatusFilterSubmitted}    10
    capture element screenshot    ${OrderPageStatusFilterSubmitted}
    click element    ${OrderPageStatusFilterSubmitted}
    sleep    2

User should be able to filter status by Dispatched in Order Page
    wait until element is visible    ${OrderPageStatusFilterDispatched}    10
    capture element screenshot    ${OrderPageStatusFilterDispatched}
    click element    ${OrderPageStatusFilterDispatched}
    sleep    2

User should be able to filter status by Partially Dispathed in Order Page
    wait until element is visible    ${OrderPageStatusFilterPartiallyDispatched}    10
    capture element screenshot    ${OrderPageStatusFilterPartiallyDispatched}
    click element    ${OrderPageStatusFilterPartiallyDispatched}
    sleep    2

User should be able to filter status by Order with Returns in Order Page
    wait until element is visible    ${OrderPageStatusFilterOrderwithReturns}    10
    capture element screenshot    ${OrderPageStatusFilterOrderwithReturns}
    click element    ${OrderPageStatusFilterOrderwithReturns}
    sleep    2

User should be able to filter status by Delivered in Order Page
    wait until element is visible    ${OrderPageStatusFilterDelivered}    10
    capture element screenshot    ${OrderPageStatusFilterDelivered}
    click element    ${OrderPageStatusFilterDelivered}
    sleep    2

User should be able to filter status by Processing in Order Page
    wait until element is visible    ${OrderPageStatusFilterProcessing}    10
    capture element screenshot    ${OrderPageStatusFilterProcessing}
    click element    ${OrderPageStatusFilterProcessing}
    sleep    2

User should be able to click Date Filter in Order Page
    wait until element is visible    ${OrderPageDateFilter}    10
    scroll element into view    ${OrderPageDateFilter}
    capture element screenshot    ${OrderPageDateFilter}
    click element    ${OrderPageDateFilter}
    sleep    2

User should be able to view Date Filter Elements in Order Page
    wait until element is visible    ${OrderPageDateFilterContainer}    10
    wait until element is visible    ${OrderPageDateFilterMonthName1}    10
    wait until element is visible    ${OrderPageDateFilterMonthName2}    10
    wait until element is visible    ${OrderPageDateFilterWeekdays1}    10
    wait until element is visible    ${OrderPageDateFilterWeekdays2}    10

User should be able to click Previous Month Button in Order Page
    wait until element is visible    ${OrderPageDateFilterPreviousMonth}    10
    capture element screenshot    ${OrderPageDateFilterPreviousMonth}
    click element    ${OrderPageDateFilterPreviousMonth}
    sleep    2

User should be able to click Next Month Button in Order Page
    wait until element is visible    ${OrderPageDateFilterNextMonth}    10
    capture element screenshot    ${OrderPageDateFilterNextMonth}
    click element    ${OrderPageDateFilterNextMonth}
    sleep    2

User should be able to click Month Drop Down Filter in Order Page
    wait until element is visible    ${OrderPageDateFilterSelectMonthDropDown}    10
    capture element screenshot    ${OrderPageDateFilterSelectMonthDropDown}
    click element    ${OrderPageDateFilterSelectMonthDropDown}
    sleep    2

User should be able to select month from drop down in Order Page
    wait until element is visible    ${OrderPageDateFilterSelectMonth}    10
#    capture element screenshot    ${OrderPageDateFilterSelectMonth}
    click element    ${OrderPageDateFilterSelectMonth}
    sleep    2

User should be able to click Year Drop Down Filter in Order Page
    wait until element is visible    ${OrderPageDateFilterSelectYearDropDown}    10
    capture element screenshot    ${OrderPageDateFilterSelectYearDropDown}
    click element    ${OrderPageDateFilterSelectYearDropDown}
    sleep    2

User should be able to select year from drop down in Order Page
    wait until element is visible    ${OrderPageDateFilterSelectYear}    10
#    capture element screenshot    ${OrderPageDateFilterSelectYear}
    click element    ${OrderPageDateFilterSelectYear}
    sleep    2

User should be able to select From Date in Order Page
    wait until element is visible    ${OrderPageDateFilterMonth1Days1stSelection}    10
    capture element screenshot    ${OrderPageDateFilterMonth1Days1stSelection}
    click element    ${OrderPageDateFilterMonth1Days1stSelection}
    sleep    2

User should be able to select To Date in Order Page
    wait until element is visible    ${OrderPageDateFilterMonth1Days2ndSelection}    10
    capture element screenshot    ${OrderPageDateFilterMonth1Days2ndSelection}
    click element    ${OrderPageDateFilterMonth1Days2ndSelection}
    sleep    2

User should be able to click Date Filter Clear Button in Order Page
    wait until element is visible    ${OrderPageDateFilterClearButton}    10
    capture element screenshot    ${OrderPageDateFilterClearButton}
    click element    ${OrderPageDateFilterClearButton}
    sleep    2

User should be able to click Date Filter Submit Button in Order Page
    wait until element is visible    ${OrderPageDateFilterSubmitButton}    10
    capture element screenshot    ${OrderPageDateFilterSubmitButton}
    click element    ${OrderPageDateFilterSubmitButton}
    sleep    2

User should be able to click Search Box in Order Page
    wait until element is visible    ${OrderPageSearchBox}    10
    scroll element into view    ${OrderPageSearchBox}
    capture element screenshot    ${OrderPageSearchBox}
    click element    ${OrderPageSearchBox}
    sleep    2

User should be able to Input Text in Search Box in Order Page
    clear element text    ${OrderPageSearchBox}
    input text    ${OrderPageSearchBox}    ${OrderPageSearchValue}
    capture element screenshot    ${OrderPageSearchBox}
    sleep    2

User should be able to click clear button from Search Box in Order Page
    wait until element is visible    ${OrderPageSearchClose}    10
    capture element screenshot    ${OrderPageSearchClose}
    click element    ${OrderPageSearchClose}
    sleep    2

User should be able to click Arrage Filter in Order Page
    wait until element is visible    ${OrderPageArrangeFilter}    10
    scroll element into view    ${OrderPageArrangeFilter}
    capture element screenshot    ${OrderPageArrangeFilter}
    click element    ${OrderPageArrangeFilter}
    sleep    2

User should be able to Filter by New to Old in Order Page
    wait until element is visible    ${OrderPageArrangeFilterNewtoOld}    10
    capture element screenshot    ${OrderPageArrangeFilterNewtoOld}
    click element    ${OrderPageArrangeFilterNewtoOld}
    sleep    2

User should be able to Filter by Old to New in Order Page
    wait until element is visible    ${OrderPageArrangeFilterOldtoNew}    10
    capture element screenshot    ${OrderPageArrangeFilterOldtoNew}
    click element    ${OrderPageArrangeFilterOldtoNew}
    sleep    2

User should be able to Filter by Order Number in Order Page
    wait until element is visible    ${OrderPageArrangeFilterOrderNum}    10
    capture element screenshot    ${OrderPageArrangeFilterOrderNum}
    click element    ${OrderPageArrangeFilterOrderNum}
    sleep    2

User should be able to view order with Recieved Status in Dealer Orders Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${RecivedStatus}    run keyword and return status    element should be visible    ${OrderPageReceivedContainer}
    run keyword if    '${RecivedStatus}' == 'False'    User should be able to click next page in Dealer Orders Page
    exit for loop if    '${RecivedStatus}' == 'True'
    END
    scroll element into view    ${OrderPageReceivedContainer}
    wait until element is visible    ${OrderPageReceivedContainer}    10
    capture element screenshot    ${OrderPageReceivedContainer}
    sleep    2

User should be able to click order with Recieved Status in Dealer Orders Page
    wait until element is visible    ${OrderPageReceivedPartRef}    10
    click element    ${OrderPageReceivedPartRef}
    wait until element is visible    ${OrderDetailsOrderHeader}    10
    capture page screenshot
    sleep    2

User should be able to view order with Submitted Status in Dealer Orders Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${SubmittedStatus}    run keyword and return status    element should be visible    ${OrderPageSubmittedContainer}
    run keyword if    '${SubmittedStatus}' == 'False'    User should be able to click next page in Dealer Orders Page
    exit for loop if    '${SubmittedStatus}' == 'True'
    END
    scroll element into view    ${OrderPageSubmittedContainer}
    wait until element is visible    ${OrderPageSubmittedContainer}    10
    capture element screenshot    ${OrderPageSubmittedContainer}
    sleep    2

User should be able to click order with Submitted Status in Dealer Orders Page
    wait until element is visible    ${OrderPageSubmittedPartRef}    10
    click element    ${OrderPageSubmittedPartRef}
    wait until element is visible    ${OrderDetailsOrderHeader}
    capture page screenshot
    sleep    2

User should be able to view order with Dispatched Status in Dealer Orders Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${DispatchedStatus}    run keyword and return status    element should be visible    ${OrderPageDispatchedContainer}
    run keyword if    '${DispatchedStatus}' == 'False'    User should be able to click next page in Dealer Orders Page
    exit for loop if    '${DispatchedStatus}' == 'True'
    END
    scroll element into view    ${OrderPageDispatchedContainer}
    wait until element is visible    ${OrderPageDispatchedContainer}    10
    capture element screenshot    ${OrderPageDispatchedContainer}
    sleep    2

User should be able to click order with Dispatched Status in Dealer Orders Page
    wait until element is visible    ${OrderPageDispatchedPartRef}    10
    click element    ${OrderPageDispatchedPartRef}
    wait until element is visible    ${OrderDetailsOrderHeader}
    capture page screenshot
    sleep    2

User should be able to view order with Partially Dispatched Status in Dealer Orders Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${PartiallyDispatchedStatus}    run keyword and return status    element should be visible    ${OrderPagePartiallyDispatchedContainer}
    run keyword if    '${PartiallyDispatchedStatus}' == 'False'    User should be able to click next page in Dealer Orders Page
    exit for loop if    '${PartiallyDispatchedStatus}' == 'True'
    END
    scroll element into view    ${OrderPagePartiallyDispatchedContainer}
    wait until element is visible    ${OrderPagePartiallyDispatchedContainer}    10
    capture element screenshot    ${OrderPagePartiallyDispatchedContainer}
    sleep    2

User should be able to click order with Partially Dispatched Status in Dealer Orders Page
    wait until element is visible    ${OrderPagePartiallyDispatchedPartRef}    10
    click element    ${OrderPagePartiallyDispatchedPartRef}
    wait until element is visible    ${OrderDetailsOrderHeader}    20
    capture page screenshot
    sleep    2

User should be able to view order with Orders with Returns Status in Dealer Orders Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${OrderwithReturnStatus}    run keyword and return status    element should be visible    ${OrderPageOrderwithReturnContainer}
    run keyword if    '${OrderwithReturnStatus}' == 'False'    User should be able to click next page in Dealer Orders Page
    exit for loop if    '${OrderwithReturnStatus}' == 'True'
    END
    scroll element into view    ${OrderPageOrderwithReturnContainer}
    wait until element is visible    ${OrderPageOrderwithReturnContainer}    10
    capture element screenshot    ${OrderPageOrderwithReturnContainer}
    sleep    2

User should be able to click order with Orders with Returns Status in Dealer Orders Page
    wait until element is visible    ${OrderPageOrderwithReturnPartRef}    10
    click element    ${OrderPageOrderwithReturnPartRef}
    wait until element is visible    ${OrderDetailsOrderHeader}
    capture page screenshot
    sleep    2

User should be able to view order with Delivered Status in Dealer Orders Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${DeliveredStatus}    run keyword and return status    element should be visible    ${OrderPageDeliveredContainer}
    run keyword if    '${DeliveredStatus}' == 'False'    User should be able to click next page in Dealer Orders Page
    exit for loop if    '${DeliveredStatus}' == 'True'
    END
    scroll element into view    ${OrderPageDeliveredContainer}
    wait until element is visible    ${OrderPageDeliveredContainer}    10
    capture element screenshot    ${OrderPageDeliveredContainer}
    sleep    2

User should be able to click order with Delivered Status in Dealer Orders Page
    wait until element is visible    ${OrderPageDeliveredPartRef}    10
    click element    ${OrderPageDeliveredPartRef}
    wait until element is visible    ${OrderPageDeliveredPartRef}
    capture page screenshot
    sleep    2

User should be able to view order with Processing Status in Dealer Orders Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${ProcessingStatus}    run keyword and return status    element should be visible    ${OrderPageProcessingContainer}
    run keyword if    '${ProcessingStatus}' == 'False'    User should be able to click next page in Dealer Orders Page
    exit for loop if    '${ProcessingStatus}' == 'True'
    END
    scroll element into view    ${OrderPageProcessingContainer}
    wait until element is visible    ${OrderPageProcessingContainer}    10
    capture element screenshot    ${OrderPageProcessingContainer}
    sleep    2

User should be able to click order with Processing Status in Dealer Orders Page
    wait until element is visible    ${OrderPageProcessingPartRef}    10
    click element    ${OrderPageProcessingPartRef}
    wait until element is visible    ${OrderPageProcessingPartRef}
    capture page screenshot
    sleep    2


User should be able to click Back to Customer Orders in Dealer Order Details Page
    wait until element is visible    ${OrderDetailsBackButton}    10
    scroll element into view    ${OrderDetailsBackButton}
    capture element screenshot    ${OrderDetailsBackButton}
    click element    ${OrderDetailsBackButton}
    sleep    2

User should be able to click next page in Dealer Orders Page
    wait until element is visible    ${OrderPageDetailsNextPageButton}    10
    scroll element into view    ${OrderPageDetailsNextPageButton}
    click element    ${OrderPageDetailsNextPageButton}
    sleep    2

User should be able to click first page in Dealer Orders Page
    wait until element is visible    ${OrderPageDetailsFirstPageButton}    10
    scroll element into view    ${OrderPageDetailsFirstPageButton}
    click element    ${OrderPageDetailsFirstPageButton}
    sleep    2

User should be able to click page 1 in Delaer Orders Page
    wait until element is visible    ${OrderPageDetailsPage1Button}    10
    scroll element into view    ${OrderPageDetailsPage1Button}
    click element    ${OrderPageDetailsPage1Button}
    sleep    2

User should be able to return to first page in Dealer Orders Page
    ${firstpagestatus}    run keyword and return status    element should be visible    ${OrderPageDetailsFirstPageButton}
    ${Page1status}    run keyword and return status    element should be visible    ${OrderPageDetailsPage1Button}
    run keyword if    '${Page1status}' == 'True'    User should be able to click page 1 in Delaer Orders Page
    run keyword if    '${firstpagestatus}' == 'True'    User should be able to click first page in Dealer Orders Page
    sleep    3

Return to first page in Dealer Order Page
    ${firstpagestatus}    run keyword and return status    element should be visible  ${OrderPageDetailsFirstPageButton}
    ${Page1status}    run keyword and return status    element should be visible    ${OrderPageDetailsPage1Button}
    run keyword if    '${Page1status}' == 'True'    User should be able to click page 1 in Delaer Orders Page
    run keyword if    '${firstpagestatus}' == 'True'    User should be able to return to first page in Dealer Orders Page
    scroll element into view    ${OrderPageCustomerOderHeader}
    sleep    3