*** Settings ***
Documentation    Suite description

Library    SeleniumLibrary


#Resource  ../../../Resource/testdata/config.robot
Resource  ../../../Resource/testdata/Dealer/Dealer_Variable.robot
Resource  ../../../Resource/testdata/credentials.robot



*** Keywords ***
#-----------------------------------------------------Dealer Retrun Page------------------------------------------------
User should be able to view Return Request Panel
    wait until element is visible    ${ReturnPagePanelContainer}
    capture element screenshot    ${ReturnPagePanelContainer}

User should be able to select one return from the list
    wait until element is visible    ${ReturnPageHistory1}    10
    click element    ${ReturnPageHistory1}
    sleep    3
    capture page screenshot

User should be able to view Return details
    wait until element is visible    ${ReturnPageOrderDetailsHeader}    20
    wait until element is visible    ${ReturnPageOrderDetailsStatus}    10
    capture element screenshot    ${ReturnPageOrderDetailsHeader}
    capture element screenshot    ${ReturnPageOrderDetailsStatus}

    wait until element is visible    ${ReturnPageOrderDetailsContainer}    10
    wait until element is visible    ${ReturnPageOrderDetailsPartsRefLabel}    20
    wait until element is visible    ${ReturnPageOrderDetailsCustOrderNumLabel}    10
    wait until element is visible    ${ReturnPageOrderDetailsCustNameLabel}    10
    wait until element is visible    ${ReturnPageOrderDetailsSupRefLabel}    10
    wait until element is visible    ${ReturnPageOrderDetailsSupLabel}    10
    wait until element is visible    ${ReturnPageOrderDetailsOrderDateLabel}    10
    wait until element is visible    ${ReturnPageOrderDetailsRetReqDateLabel}    10
    wait until element is visible    ${ReturnPageOrderDetailsPartsRefValue}    10
    wait until element is visible    ${ReturnPageOrderDetailsCustOrderNumValue}    10
    wait until element is visible    ${ReturnPageOrderDetailsCustNameValue}    10
    wait until element is visible    ${ReturnPageOrderDetailsSupRefValue}    10
    wait until element is visible    ${ReturnPageOrderDetailsSupValue}    10
    wait until element is visible    ${ReturnPageOrderDetailsOrderDateValue}    10
    wait until element is visible    ${ReturnPageOrderDetailsRetReqDateValue}    10

    capture element screenshot    ${ReturnPageOrderDetailsContainer}
#    capture element screenshot    ${ReturnPageOrderDetailsPartsRefLabel}
#    capture element screenshot    ${ReturnPageOrderDetailsCustOrderNumLabel}
#    capture element screenshot    ${ReturnPageOrderDetailsCustNameLabel}
#    capture element screenshot    ${ReturnPageOrderDetailsSupRefLabel}
#    capture element screenshot    ${ReturnPageOrderDetailsSupLabel}
#    capture element screenshot    ${ReturnPageOrderDetailsOrderDateLabel}
#    capture element screenshot    ${ReturnPageOrderDetailsRetReqDateLabel}
#    capture element screenshot    ${ReturnPageOrderDetailsPartsRefValue}
#    capture element screenshot    ${ReturnPageOrderDetailsCustOrderNumValue}
#    capture element screenshot    ${ReturnPageOrderDetailsCustNameValue}
#    capture element screenshot    ${ReturnPageOrderDetailsSupRefValue}
#    capture element screenshot    ${ReturnPageOrderDetailsSupValue}
#    capture element screenshot    ${ReturnPageOrderDetailsOrderDateValue}
#    capture element screenshot    ${ReturnPageOrderDetailsRetReqDateValue}

    scroll element into view    ${ReturnPageOrderReturnContainer}
    wait until element is visible    ${ReturnPageOrderReturnHeader}    10
#    wait until element is visible    ${ReturnPageOrderReturnItemList}    10
#    capture element screenshot    ${ReturnPageOrderReturnContainer}
#    capture element screenshot    ${ReturnPageOrderReturnHeader}
#    capture element screenshot    ${ReturnPageOrderReturnItemList}

    scroll element into view    ${ReturnPageOrderReturnDataSectionContainer}
#    wait until element is visible    ${ReturnPageOrderReturnDataSectionReasonLabel}    10
#    wait until element is visible    ${ReturnPageOrderReturnDataSectionReasonSelection}    10
#    wait until element is visible    ${ReturnPageOrderReturnDataSectionQtyLabel}    10
#    wait until element is visible    ${ReturnPageOrderReturnDataSectionQtyValue}    10
#    wait until element is visible    ${ReturnPageOrderReturnDataSectionNoteLabel}    10
#    wait until element is visible    ${ReturnPageOrderReturnDataSectionNoteTextField}    10
#    wait until element is visible    ${ReturnPageOrderReturnDataSectionImageLabel}    10
#    wait until element is visible    ${ReturnPageOrderReturnDataSectionImageField}    10

    capture element screenshot    ${ReturnPageOrderReturnDataSectionContainer}
#    capture element screenshot    ${ReturnPageOrderReturnDataSectionReasonLabel}
#    capture element screenshot    ${ReturnPageOrderReturnDataSectionReasonSelection}
#    capture element screenshot    ${ReturnPageOrderReturnDataSectionQtyLabel}
#    capture element screenshot    ${ReturnPageOrderReturnDataSectionQtyValue}
#    capture element screenshot    ${ReturnPageOrderReturnDataSectionNoteLabel}
#    capture element screenshot    ${ReturnPageOrderReturnDataSectionNoteTextField}
#    capture element screenshot    ${ReturnPageOrderReturnDataSectionImageLabel}
#    capture element screenshot    ${ReturnPageOrderReturnDataSectionImageField}

    scroll element into view    ${ReturnPageOrderReturnApproveRejectContainer}
#    wait until element is visible    ${ReturnPageOrderReturnApproveButton}    10
#    wait until element is visible    ${ReturnPageOrderReturnApproveLabel}    10
#    wait until element is visible    ${ReturnPageOrderReturnRejectButton}    10
#    wait until element is visible    ${ReturnPageOrderReturnRejectLabel}    10
#    wait until element is visible    ${ReturnPageOrderReturnNoteLabel}    10
#    wait until element is visible    ${ReturnPageOrderReturnApproveRejectNoteTextField}    10

    capture element screenshot    ${ReturnPageOrderReturnApproveRejectContainer}
#    capture element screenshot    ${ReturnPageOrderReturnApproveButton}
#    capture element screenshot    ${ReturnPageOrderReturnApproveLabel}
#    capture element screenshot    ${ReturnPageOrderReturnRejectButton}
#    capture element screenshot    ${ReturnPageOrderReturnRejectLabel}
#    capture element screenshot    ${ReturnPageOrderReturnNoteLabel}
#    capture element screenshot    ${ReturnPageOrderReturnApproveRejectNoteTextField}

    scroll element into view    ${ReturnPageOrderReturnMessageContainer}
    wait until element is visible    ${ReturnPageOrderReturnMessageSupplierButton}    10

    capture element screenshot    ${ReturnPageOrderReturnMessageContainer}
    capture element screenshot    ${ReturnPageOrderReturnMessageSupplierButton}

#    wait until element is visible    ${ReturnPageOrderReturnConfirmButton}    10
#    capture element screenshot    ${ReturnPageOrderReturnConfirmButton}
    sleep    2

User should be able to view Return details in HK Return Details Page
    wait until element is visible    ${ReturnPageOrderDetailsHeader}    20
    wait until element is visible    ${ReturnPageOrderDetailsStatus}    10
    capture element screenshot    ${ReturnPageOrderDetailsHeader}
    capture element screenshot    ${ReturnPageOrderDetailsStatus}

    wait until element is visible    ${ReturnPageOrderDetailsContainer}    10
    wait until element is visible    ${ReturnPageOrderDetailsPartsRefLabel}    20
    wait until element is visible    ${ReturnPageOrderDetailsCustNameLabel}    10
    wait until element is visible    ${ReturnPageOrderDetailsOrderDateLabel}    10
    wait until element is visible    ${ReturnPageOrderDetailsRetReqDateLabel}    10
    wait until element is visible    ${ReturnPageOrderDetailsPartsRefValue}    10
    wait until element is visible    ${ReturnPageOrderDetailsCustOrderNumValue}    10
    wait until element is visible    ${ReturnPageOrderDetailsCustNameValue}    10
    wait until element is visible    ${ReturnPageOrderDetailsSupRefValue}    10
    wait until element is visible    ${ReturnPageOrderDetailsSupValue}    10
    wait until element is visible    ${ReturnPageOrderDetailsOrderDateValue}    10


    capture element screenshot    ${ReturnPageOrderDetailsContainer}
#    capture element screenshot    ${ReturnPageOrderDetailsPartsRefLabel}
#    capture element screenshot    ${ReturnPageOrderDetailsCustOrderNumLabel}
#    capture element screenshot    ${ReturnPageOrderDetailsCustNameLabel}
#    capture element screenshot    ${ReturnPageOrderDetailsSupRefLabel}
#    capture element screenshot    ${ReturnPageOrderDetailsSupLabel}
#    capture element screenshot    ${ReturnPageOrderDetailsOrderDateLabel}
#    capture element screenshot    ${ReturnPageOrderDetailsRetReqDateLabel}
#    capture element screenshot    ${ReturnPageOrderDetailsPartsRefValue}
#    capture element screenshot    ${ReturnPageOrderDetailsCustOrderNumValue}
#    capture element screenshot    ${ReturnPageOrderDetailsCustNameValue}
#    capture element screenshot    ${ReturnPageOrderDetailsSupRefValue}
#    capture element screenshot    ${ReturnPageOrderDetailsSupValue}
#    capture element screenshot    ${ReturnPageOrderDetailsOrderDateValue}
#    capture element screenshot    ${ReturnPageOrderDetailsRetReqDateValue}

    scroll element into view    ${ReturnPageOrderReturnContainer}
    wait until element is visible    ${ReturnPageOrderReturnHeader}    10
#    wait until element is visible    ${ReturnPageOrderReturnItemList}    10
#    capture element screenshot    ${ReturnPageOrderReturnContainer}
#    capture element screenshot    ${ReturnPageOrderReturnHeader}
#    capture element screenshot    ${ReturnPageOrderReturnItemList}

    scroll element into view    ${ReturnPageOrderReturnDataSectionContainer}
#    wait until element is visible    ${ReturnPageOrderReturnDataSectionReasonLabel}    10
#    wait until element is visible    ${ReturnPageOrderReturnDataSectionReasonSelection}    10
#    wait until element is visible    ${ReturnPageOrderReturnDataSectionQtyLabel}    10
#    wait until element is visible    ${ReturnPageOrderReturnDataSectionQtyValue}    10
#    wait until element is visible    ${ReturnPageOrderReturnDataSectionNoteLabel}    10
#    wait until element is visible    ${ReturnPageOrderReturnDataSectionNoteTextField}    10
#    wait until element is visible    ${ReturnPageOrderReturnDataSectionImageLabel}    10
#    wait until element is visible    ${ReturnPageOrderReturnDataSectionImageField}    10

    capture element screenshot    ${ReturnPageOrderReturnDataSectionContainer}
#    capture element screenshot    ${ReturnPageOrderReturnDataSectionReasonLabel}
#    capture element screenshot    ${ReturnPageOrderReturnDataSectionReasonSelection}
#    capture element screenshot    ${ReturnPageOrderReturnDataSectionQtyLabel}
#    capture element screenshot    ${ReturnPageOrderReturnDataSectionQtyValue}
#    capture element screenshot    ${ReturnPageOrderReturnDataSectionNoteLabel}
#    capture element screenshot    ${ReturnPageOrderReturnDataSectionNoteTextField}
#    capture element screenshot    ${ReturnPageOrderReturnDataSectionImageLabel}
#    capture element screenshot    ${ReturnPageOrderReturnDataSectionImageField}

    scroll element into view    ${ReturnPageOrderReturnApproveRejectContainer}
#    wait until element is visible    ${ReturnPageOrderReturnApproveButton}    10
#    wait until element is visible    ${ReturnPageOrderReturnApproveLabel}    10
#    wait until element is visible    ${ReturnPageOrderReturnRejectButton}    10
#    wait until element is visible    ${ReturnPageOrderReturnRejectLabel}    10
#    wait until element is visible    ${ReturnPageOrderReturnNoteLabel}    10
#    wait until element is visible    ${ReturnPageOrderReturnApproveRejectNoteTextField}    10

    capture element screenshot    ${ReturnPageOrderReturnApproveRejectContainer}
#    capture element screenshot    ${ReturnPageOrderReturnApproveButton}
#    capture element screenshot    ${ReturnPageOrderReturnApproveLabel}
#    capture element screenshot    ${ReturnPageOrderReturnRejectButton}
#    capture element screenshot    ${ReturnPageOrderReturnRejectLabel}
#    capture element screenshot    ${ReturnPageOrderReturnNoteLabel}
#    capture element screenshot    ${ReturnPageOrderReturnApproveRejectNoteTextField}

    scroll element into view    ${ReturnPageOrderReturnMessageContainer}
    wait until element is visible    ${ReturnPageOrderReturnMessageSupplierButton}    10

    capture element screenshot    ${ReturnPageOrderReturnMessageContainer}
    capture element screenshot    ${ReturnPageOrderReturnMessageSupplierButton}

#    wait until element is visible    ${ReturnPageOrderReturnConfirmButton}    10
#    capture element screenshot    ${ReturnPageOrderReturnConfirmButton}
    sleep    2

User should be able to click filter by status in Retrun Page
    wait until element is visible    ${ReturnPageStatusFilter}    10
    capture element screenshot    ${ReturnPageStatusFilter}
    click element    ${ReturnPageStatusFilter}
    sleep    2

User should be able to filter status by ALL in Return Page
    wait until element is visible    ${RetrunPageStatusFilterALL}    10
    capture element screenshot    ${RetrunPageStatusFilterALL}
    click element    ${RetrunPageStatusFilterALL}
    sleep    2

User should be able to filter status by Accepted in Return Page
    wait until element is visible    ${RetrunPageStatusFilterAccepted}    10
    capture element screenshot    ${RetrunPageStatusFilterAccepted}
    click element    ${RetrunPageStatusFilterAccepted}
    sleep    2

User should be able to filter status by Declined in Return Page
    wait until element is visible    ${RetrunPageStatusFilterDeclined}    10
    capture element screenshot    ${RetrunPageStatusFilterDeclined}
    click element    ${RetrunPageStatusFilterDeclined}
    sleep    2

User should be able to filter status by In Progress in Return Page
    wait until element is visible    ${RetrunPageStatusFilterInProgress}    10
    capture element screenshot    ${RetrunPageStatusFilterInProgress}
    click element    ${RetrunPageStatusFilterInProgress}
    sleep    2

User should be able to click Date Filter in Return Page
    wait until element is visible    ${ReturnPageDateFilter}    10
    capture element screenshot    ${ReturnPageDateFilter}
    click element    ${ReturnPageDateFilter}
    sleep    2

User should be able to view Date Filter Elements in Return Page
    wait until element is visible    ${ReturnPageDateFilterContainer}    10
    wait until element is visible    ${ReturnPageDateFilterMonthName1}    10
    wait until element is visible    ${ReturnPageDateFilterMonthName2}    10
    wait until element is visible    ${ReturnPageDateFilterWeekdays1}    10
    wait until element is visible    ${ReturnPageDateFilterWeekdays2}    10


User should be able to click Previous Month Button in Return Page
    wait until element is visible    ${ReturnPageDateFilterPreviousMonth}    10
    capture element screenshot    ${ReturnPageDateFilterPreviousMonth}
    click element    ${ReturnPageDateFilterPreviousMonth}
    sleep    2

User should be able to click Next Month Button in Return Page
    wait until element is visible    ${ReturnPageDateFilterNextMonth}    10
    capture element screenshot    ${ReturnPageDateFilterNextMonth}
    click element    ${ReturnPageDateFilterNextMonth}
    sleep    2

User should be able to click Month Drop Down Filter in Return Page
    wait until element is visible    ${ReturnPageDateFilterSelectMonthDropDown}    10
    capture element screenshot    ${ReturnPageDateFilterSelectMonthDropDown}
    click element    ${ReturnPageDateFilterSelectMonthDropDown}
    sleep    2

User should be able to select month from drop down in Return Page
    wait until element is visible    ${ReturnPageDateFilterSelectMonth}    10
#    capture element screenshot    ${OrderPageDateFilterSelectMonth}
    click element    ${ReturnPageDateFilterSelectMonth}
    sleep    2

User should be able to click Year Drop Down Filter in Return Page
    wait until element is visible    ${ReturnPageDateFilterSelectYearDropDown}    10
    capture element screenshot    ${ReturnPageDateFilterSelectYearDropDown}
    click element    ${ReturnPageDateFilterSelectYearDropDown}
    sleep    2

User should be able to select year from drop down in Return Page
    wait until element is visible    ${ReturnPageDateFilterSelectYear}    10
#    capture element screenshot    ${OrderPageDateFilterSelectYear}
    click element    ${ReturnPageDateFilterSelectYear}
    sleep    2

User should be able to select From Date in Return Page
    wait until element is visible    ${ReturnPageDateFilterMonth1Days1stSelection}    10
    capture element screenshot    ${ReturnPageDateFilterMonth1Days1stSelection}
    click element    ${ReturnPageDateFilterMonth1Days1stSelection}
    sleep    2

User should be able to select To Date in Return Page
    wait until element is visible    ${ReturnPageDateFilterMonth2Days2ndSelection}    10
    capture element screenshot    ${ReturnPageDateFilterMonth2Days2ndSelection}
    click element    ${ReturnPageDateFilterMonth2Days2ndSelection}
    sleep    2

User should be able to click Date Filter Clear Button in Return Page
    wait until element is visible    ${ReturnPageDateFilterClearButton}    10
    capture element screenshot    ${ReturnPageDateFilterClearButton}
    click element    ${ReturnPageDateFilterClearButton}
    sleep    2

User should be able to click Date Filter Submit Button in Return Page
    wait until element is visible    ${ReturnPageDateFilterSubmitButton}    10
    capture element screenshot    ${ReturnPageDateFilterSubmitButton}
    click element    ${ReturnPageDateFilterSubmitButton}
    sleep    2

User should be able to click Search Box in Return Page
    wait until element is visible    ${RetrunPageSearchBox}    10
    capture element screenshot    ${RetrunPageSearchBox}
    click element    ${RetrunPageSearchBox}
    sleep    2

User should be able to Input Text in Search Box in Return Page
    clear element text    ${RetrunPageSearchBox}
    input text    ${RetrunPageSearchBox}    ${ReturnPageSearchValue}
    capture element screenshot    ${RetrunPageSearchBox}
    sleep    2

User should be able to click clear button from Search Box in Return Page
    wait until element is visible    ${ReturnPageSearchClose}    10
    capture element screenshot    ${ReturnPageSearchClose}
    click element    ${ReturnPageSearchClose}
    sleep    2

User should be able to click Arrage Filter in Return Page
    wait until element is visible    ${RetrunPageArrangeFilter}    10
    capture element screenshot    ${RetrunPageArrangeFilter}
    click element    ${RetrunPageArrangeFilter}
    sleep    2

User should be able to Filter by New to Old in Return Page
    wait until element is visible    ${ReturnPageArrangeFilterNewtoOld}    10
    capture element screenshot    ${ReturnPageArrangeFilterNewtoOld}
    click element    ${ReturnPageArrangeFilterNewtoOld}
    sleep    2

User should be able to Filter by Old to New in Return Page
    wait until element is visible    ${ReturnPageArrangeFilterOldtoNew}    10
    capture element screenshot    ${ReturnPageArrangeFilterOldtoNew}
    click element    ${ReturnPageArrangeFilterOldtoNew}
    sleep    2

User should be able to view order with Accepted Status in Dealer Return Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${AcceptedStatus}    run keyword and return status    element should be visible    ${ReturnPageAcceptedContainer}
    run keyword if    '${AcceptedStatus}' == 'False'    User should be able to click next page in Dealer Return Page
    exit for loop if    '${AcceptedStatus}' == 'True'
    END
    scroll element into view    ${ReturnPageAcceptedContainer}
    wait until element is visible    ${ReturnPageAcceptedContainer}    10
    capture element screenshot    ${ReturnPageAcceptedContainer}
    sleep    2

User should be able to click order with Accepted Status in Dealer Return Page
    wait until element is visible    ${ReturnPageAcceptedReturnID}    10
    click element    ${ReturnPageAcceptedReturnID}
    wait until element is visible    ${ReturnPageOrderDetailsHeader}    10
    capture page screenshot
    sleep    2

User should be able to view order with Declined Status in Dealer Return Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${DeclinedStatus}    run keyword and return status    element should be visible    ${ReturnPageDeclinedContainer}
    run keyword if    '${DeclinedStatus}' == 'False'    User should be able to click next page in Dealer Return Page
    exit for loop if    '${DeclinedStatus}' == 'True'
    END
    scroll element into view    ${ReturnPageDeclinedContainer}
    wait until element is visible    ${ReturnPageDeclinedContainer}   10
    capture element screenshot    ${ReturnPageDeclinedContainer}
    sleep    2

User should be able to click order with Declined Status in Dealer Return Page
    wait until element is visible    ${ReturnPageDeclinedReturnID}    10
    click element    ${ReturnPageDeclinedReturnID}
    wait until element is visible    ${ReturnPageOrderDetailsHeader}    10
    capture page screenshot
    sleep    2

User should be able to view order with In Progress Status in Dealer Return Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${InProgressStatus}    run keyword and return status    element should be visible    ${ReturnPageInProgressContainer}
    run keyword if    '${InProgressStatus}' == 'False'    User should be able to click next page in Dealer Return Page
    exit for loop if    '${InProgressStatus}' == 'True'
    END
    scroll element into view    ${ReturnPageInProgressContainer}
    wait until element is visible    ${ReturnPageInProgressContainer}    10
    capture element screenshot    ${ReturnPageInProgressContainer}
    sleep    2

User should be able to click order with In Progress Status in Dealer Return Page
    wait until element is visible    ${ReturnPageInProgressReturnID}    10
    click element    ${ReturnPageInProgressReturnID}
    wait until element is visible    ${ReturnPageOrderDetailsHeader}    10
    capture page screenshot
    sleep    2

User should be able to click Back to Return Request in Dealer Return Details Page
    wait until element is visible    ${ReturnPageOrderDetailsBack}   10
    scroll element into view    ${ReturnPageOrderDetailsBack}
    capture element screenshot    ${ReturnPageOrderDetailsBack}
    click element    ${ReturnPageOrderDetailsBack}
    sleep    2

User should be able to click next page in Dealer Return Page
    wait until element is visible    ${ReturnPageDetailsNextPageButton}    10
    scroll element into view    ${ReturnPageDetailsNextPageButton}
    click element    ${ReturnPageDetailsNextPageButton}
    sleep    2

User should be able to click first page in Dealer Return Page
    wait until element is visible    ${ReturnPageDetailsFirstPageButton}    10
    scroll element into view    ${ReturnPageDetailsFirstPageButton}
    click element    ${ReturnPageDetailsFirstPageButton}
    sleep    2

User should be able to click page 1 in Delaer Return Page
    wait until element is visible    ${ReturnPageDetailsPage1Button}    10
    scroll element into view    ${ReturnPageDetailsPage1Button}
    click element    ${ReturnPageDetailsPage1Button}
    sleep    2

User should be able to return to first page in Return Orders Page
    ${firstpagestatus}    run keyword and return status    element should be visible    ${ReturnPageDetailsFirstPageButton}
    ${Page1status}    run keyword and return status    element should be visible    ${ReturnPageDetailsPage1Button}
    run keyword if    '${Page1status}' == 'True'    User should be able to click page 1 in Delaer Return Page
    run keyword if    '${firstpagestatus}' == 'True'    User should be able to click first page in Dealer Return Page
    scroll element into view    ${ReturnPageOrderDetailsHeader}
    sleep    3

User should be able to click accept button in Dealer Return Details Page
    wait until element is visible    ${ReturnPageOrderReturnApproveButton}    10
    scroll element into view    ${ReturnPageOrderReturnApproveButton}
    click element    ${ReturnPageOrderReturnApproveButton}
    capture element screenshot    ${ReturnPageOrderReturnApproveButton}
    sleep    2

User should be able to click decline button in Dealer Return Details Page
    wait until element is visible    ${ReturnPageOrderReturnRejectButton}    10
    scroll element into view    ${ReturnPageOrderReturnRejectButton}
    click element    ${ReturnPageOrderReturnRejectButton}
    capture element screenshot    ${ReturnPageOrderReturnRejectButton}
    sleep    2

User should be able to add text on Note for Customer in Dealer Return Details Page
    wait until element is visible    ${ReturnPageOrderReturnApproveRejectNoteTextField}    10
    scroll element into view    ${ReturnPageOrderReturnApproveRejectNoteTextField}
    clear element text    ${ReturnPageOrderReturnApproveRejectNoteTextField}
    input text    ${ReturnPageOrderReturnApproveRejectNoteTextField}    ${ReturnPageOrderReturnApproveRejectNoteValue}
    capture element screenshot    ${ReturnPageOrderReturnApproveRejectNoteTextField}
    sleep    2

User should be able to click confirm status button in Dealer Return Details Page
    wait until element is visible    ${ReturnPageOrderReturnConfirmButton}    10
    scroll element into view    ${ReturnPageOrderReturnConfirmButton}
    capture element screenshot    ${ReturnPageOrderReturnConfirmButton}
    click element    ${ReturnPageOrderReturnConfirmButton}
    sleep    2

User should be able to click cancel confirm status in Dealer Return Details Page
    wait until element is visible    ${ReturnPageOrderReturnConfirmConfirmationModal}    10
    capture element screenshot    ${ReturnPageOrderReturnConfirmConfirmationModal}
    capture element screenshot    ${ReturnPageOrderReturnConfirmConfirmationCancelButton}
    click element    ${ReturnPageOrderReturnConfirmConfirmationCancelButton}
    sleep    2

User should be able to click confirm confirm status in Dealer Return Details Page
    wait until element is visible    ${ReturnPageOrderReturnConfirmConfirmationModal}    10
    capture element screenshot    ${ReturnPageOrderReturnConfirmConfirmationModal}
    capture element screenshot    ${ReturnPageOrderReturnConfirmConfirmationConfirmButton}
    click element    ${ReturnPageOrderReturnConfirmConfirmationConfirmButton}
    sleep    2

User should be able to click message supplier button in Dealer Return Details Page
    wait until element is visible    ${ReturnPageOrderReturnMessageSupplierButton}    10
    scroll element into view    ${ReturnPageOrderReturnMessageSupplierButton}
    capture element screenshot    ${ReturnPageOrderReturnMessageSupplierButton}
    click element    ${ReturnPageOrderReturnMessageSupplierButton}
    sleep    2

User should be able to view message supplier pop up in Dealer Return Details Page
    wait until element is visible    ${ReturnPageOrderReturnDetailsMessagePopUpContainer}    10
    wait until element is visible    ${ReturnPageOrderReturnDetailsMessagePopUpToSupplierLabel}    10
    wait until element is visible    ${ReturnPageOrderReturnDetailsMessagePopUpSubjectLabel}    10
    wait until element is visible    ${ReturnPageOrderReturnDetailsMessagePopUpMessageLabel}    10
    wait until element is visible    ${ReturnPageOrderReturnDetailsMessagePopUpUploadLabel}    10
    wait until element is visible    ${ReturnPageOrderReturnDetailsMessagePopUpToSupplierTextBox}    10
    wait until element is visible    ${ReturnPageOrderReturnDetailsMessagePopUpSubjectTextBox}    10
    wait until element is visible    ${ReturnPageOrderReturnDetailsMessagePopUpMessageTextBox}    10
    wait until element is visible    ${ReturnPageOrderReturnDetailsMessagePopUpUploadButton}    10
    wait until element is visible    ${ReturnPageOrderReturnDetailsMessagePopUpCancelButton}    10
    wait until element is visible    ${ReturnPageOrderReturnDetailsMessagePopUpSendButton}    10

    capture element screenshot    ${ReturnPageOrderReturnDetailsMessagePopUpContainer}
    capture element screenshot    ${ReturnPageOrderReturnDetailsMessagePopUpToSupplierLabel}
    capture element screenshot    ${ReturnPageOrderReturnDetailsMessagePopUpSubjectLabel}
    capture element screenshot    ${ReturnPageOrderReturnDetailsMessagePopUpMessageLabel}
    capture element screenshot    ${ReturnPageOrderReturnDetailsMessagePopUpUploadLabel}
    capture element screenshot    ${ReturnPageOrderReturnDetailsMessagePopUpToSupplierTextBox}
    capture element screenshot    ${ReturnPageOrderReturnDetailsMessagePopUpSubjectTextBox}
    capture element screenshot    ${ReturnPageOrderReturnDetailsMessagePopUpMessageTextBox}
    capture element screenshot    ${ReturnPageOrderReturnDetailsMessagePopUpUploadButton}
    capture element screenshot    ${ReturnPageOrderReturnDetailsMessagePopUpCancelButton}
    capture element screenshot    ${ReturnPageOrderReturnDetailsMessagePopUpSendButton}

    sleep    2

User should be able to input text on message pop up text field in Dealer Return Details Page
    wait until element is visible    ${ReturnPageOrderReturnDetailsMessagePopUpMessageTextBox}    10
    clear element text    ${ReturnPageOrderReturnDetailsMessagePopUpMessageTextBox}
    input text    ${ReturnPageOrderReturnDetailsMessagePopUpMessageTextBox}    ${ReturnPageOrderReturnDetailsMessagePopUpUpMessabeValue}
    capture element screenshot    ${ReturnPageOrderReturnDetailsMessagePopUpMessageTextBox}
    sleep    2

User should be able to upload photo on message pop in Dealer Return Details Page
    wait until element is visible    ${ReturnPageOrderReturnDetailsMessagePopUpUploadButton}    10
    choose file    ${ReturnPageOrderReturnDetailsMessagePopUpUploadImage}    ${UploadPhoto_Path_Value}
    capture element screenshot    ${ReturnPageOrderReturnDetailsMessagePopUpUploadedImageContainer}
    sleep    2

User should be able to click cancel on message pop in Dealer Return Details Page
    wait until element is visible    ${ReturnPageOrderReturnDetailsMessagePopUpCancelButton}    10
    capture element screenshot    ${ReturnPageOrderReturnDetailsMessagePopUpCancelButton}
    click element    ${ReturnPageOrderReturnDetailsMessagePopUpCancelButton}
    sleep    2

User should be able to click send on message pop in Dealer Return Details Page
    wait until element is visible    ${ReturnPageOrderReturnDetailsMessagePopUpSendButton}    10
    capture element screenshot    ${ReturnPageOrderReturnDetailsMessagePopUpSendButton}
    click element    ${ReturnPageOrderReturnDetailsMessagePopUpSendButton}
    sleep    2

User should be able to click Back to Retrun Request on message pop thank you in Dealer Return Details Page
    wait until element is visible    ${ReturnPageOrderReturnDetailsMessagePopUpSendThankModal}    10
    wait until element is visible    ${ReturnPageOrderReturnDetailsMessagePopUpSendThankButton}    10
    capture element screenshot    ${ReturnPageOrderReturnDetailsMessagePopUpSendThankModal}
    capture element screenshot    ${ReturnPageOrderReturnDetailsMessagePopUpSendThankButton}
    click element    ${ReturnPageOrderReturnDetailsMessagePopUpSendThankButton}
    sleep    2

