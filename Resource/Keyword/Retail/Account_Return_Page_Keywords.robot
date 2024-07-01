*** Settings ***
Documentation    Suite description

Library    SeleniumLibrary

#Resource    ../../../Resource/testdata/config.robot
Resource    ../../../Resource/testdata/Retail/Retail_Variable.robot
Resource    ../../../Resource/testdata/credentials.robot


*** Keywords ***

#-----------------------------------------------------Retail Orders Page-----------------------------------------------
User should be able to view account return request page
    wait until element is visible    ${Retail_AccountAccountpageReturnMenu}    10
    click element    ${Retail_AccountAccountpageReturnMenu}
    wait until element is visible    ${Retail_AccountReturnPagePanelContainer}    10
    capture page screenshot
    sleep    2

User should be able to view Return Request Panel
    wait until element is visible    ${Retail_AccountReturnPagePanelContainer}    10
    capture element screenshot    ${Retail_AccountReturnPagePanelContainer}
    sleep    2

User should be able to select one return from the list
    wait until element is visible    ${Retail_AccountReturnPageHistory1}    20
    scroll element into view    ${Retail_AccountReturnPageHistory1}
    click element    ${Retail_AccountReturnPageHistory1}
    sleep    2
    capture page screenshot

User should be able to view Return details
    wait until element is visible    ${Retail_AccountReturnPageReturnDetailsHeader}    10
    scroll element into view    ${Retail_AccountReturnPageReturnDetailsHeader}
    wait until element is visible    ${Retail_AccountReturnPageReturnDetailsStatus}    10
    capture element screenshot    ${Retail_AccountReturnPageReturnDetailsHeader}
    capture element screenshot    ${Retail_AccountReturnPageReturnDetailsStatus}

    wait until element is visible    ${Retail_AccountReturnPageReturnDetailsContainer}    10
    wait until element is visible    ${Retail_AccountReturnPageOrderDetailsPartsRefLabel}    10
    wait until element is visible    ${Retail_AccountReturnPageOrderDetailsPONumLabel}    10
    wait until element is visible    ${Retail_AccountReturnPageOrderDetailsSupRefLabel}    10
    wait until element is visible    ${Retail_AccountReturnPageOrderDetailsSupLabel}    10
    wait until element is visible    ${Retail_AccountReturnPageOrderDetailsOrderDateLabel}    10
    wait until element is visible    ${Retail_AccountReturnPageOrderDetailsRetReqDateLabel}    10
    wait until element is visible    ${Retail_AccountReturnPageOrderDetailsPartsRefValue}    10
    wait until element is visible    ${Retail_AccountReturnPageOrderDetailsPONumValue}    10
    wait until element is visible    ${Retail_AccountReturnPageOrderDetailsSupRefValue}    10
    wait until element is visible    ${Retail_AccountReturnPageOrderDetailsSupValue}    10
    wait until element is visible    ${Retail_AccountReturnPageOrderDetailsOrderDateValue}    10
    wait until element is visible    ${Retail_AccountReturnPageOrderDetailsRetReqDateValue}    10

    capture element screenshot    ${Retail_AccountReturnPageReturnDetailsContainer}
    capture element screenshot    ${Retail_AccountReturnPageOrderDetailsPartsRefLabel}
    capture element screenshot    ${Retail_AccountReturnPageOrderDetailsPONumLabel}
    capture element screenshot    ${Retail_AccountReturnPageOrderDetailsSupRefLabel}
    capture element screenshot    ${Retail_AccountReturnPageOrderDetailsSupLabel}
    capture element screenshot    ${Retail_AccountReturnPageOrderDetailsOrderDateLabel}
    capture element screenshot    ${Retail_AccountReturnPageOrderDetailsRetReqDateLabel}
    capture element screenshot    ${Retail_AccountReturnPageOrderDetailsPartsRefValue}
    capture element screenshot    ${Retail_AccountReturnPageOrderDetailsPONumValue}
    capture element screenshot    ${Retail_AccountReturnPageOrderDetailsSupRefValue}
    capture element screenshot    ${Retail_AccountReturnPageOrderDetailsSupValue}
    capture element screenshot    ${Retail_AccountReturnPageOrderDetailsOrderDateValue}
    capture element screenshot    ${Retail_AccountReturnPageOrderDetailsRetReqDateValue}

    scroll element into view    ${Retail_AccountReturnPageReturnReturnContainer}
    wait until element is visible    ${Retail_AccountReturnPageReturnReturnContainer}    10
    wait until element is visible    ${Retail_AccountReturnPageOrderReturnItemList}    10
    wait until element is visible    ${Retail_AccountReturnPageOrderReturnItemList_Desc_Label}    10
    wait until element is visible    ${Retail_AccountReturnPageOrderReturnItemList_Price_Label}    10
    wait until element is visible    ${Retail_AccountReturnPageOrderReturnItemList_RRP_Label}    10
    wait until element is visible    ${Retail_AccountReturnPageOrderReturnItemList_Qty_Label}    10
    wait until element is visible    ${Retail_AccountReturnPageOrderReturnItemList_Total_Label}    10
    capture element screenshot    ${Retail_AccountReturnPageReturnReturnContainer}
    capture element screenshot    ${Retail_AccountReturnPageOrderReturnHeader}
    capture element screenshot    ${Retail_AccountReturnPageOrderReturnItemList}
    capture element screenshot    ${Retail_AccountReturnPageOrderReturnItemList_Desc_Label}
    capture element screenshot    ${Retail_AccountReturnPageOrderReturnItemList_Price_Label}
    capture element screenshot    ${Retail_AccountReturnPageOrderReturnItemList_RRP_Label}
    capture element screenshot    ${Retail_AccountReturnPageOrderReturnItemList_Qty_Label}
    capture element screenshot    ${Retail_AccountReturnPageOrderReturnItemList_Total_Label}

    scroll element into view    ${Retail_AccountReturnPageOrderReturnDataSectionContainer}
    wait until element is visible    ${Retail_AccountReturnPageOrderReturnDataSectionReasonLabel}    10
    wait until element is visible    ${Retail_AccountReturnPageOrderReturnDataSectionReasonSelection}    10
    wait until element is visible    ${Retail_AccountReturnPageOrderReturnDataSectionQtyLabel}    10
    wait until element is visible    ${Retail_AccountReturnPageOrderReturnDataSectionQtyValue}    10
    wait until element is visible    ${Retail_AccountReturnPageOrderReturnDataSectionNoteLabel}    10
    wait until element is visible    ${Retail_AccountReturnPageOrderReturnDataSectionNoteTextField}    10
    wait until element is visible    ${Retail_AccountReturnPageOrderReturnDataSectionImageLabel}    10
    wait until element is visible    ${Retail_AccountReturnPageOrderReturnDataSectionImageField}    10

    capture element screenshot    ${Retail_AccountReturnPageOrderReturnDataSectionContainer}
    capture element screenshot    ${Retail_AccountReturnPageOrderReturnDataSectionReasonLabel}
    capture element screenshot    ${Retail_AccountReturnPageOrderReturnDataSectionReasonSelection}
    capture element screenshot    ${Retail_AccountReturnPageOrderReturnDataSectionQtyLabel}
    capture element screenshot    ${Retail_AccountReturnPageOrderReturnDataSectionQtyValue}
    capture element screenshot    ${Retail_AccountReturnPageOrderReturnDataSectionNoteLabel}
    capture element screenshot    ${Retail_AccountReturnPageOrderReturnDataSectionNoteTextField}
    capture element screenshot    ${Retail_AccountReturnPageOrderReturnDataSectionImageLabel}
    capture element screenshot    ${Retail_AccountReturnPageOrderReturnDataSectionImageField}

    wait until element is visible    ${Retail_AccountReturnPageOrderReturnMessageSupplierButton}    10
    scroll element into view    ${Retail_AccountReturnPageOrderReturnMessageSupplierButton}
    capture element screenshot    ${Retail_AccountReturnPageOrderReturnMessageSupplierButton}

    sleep    2

User should be able to click filter by status in Account Retrun Page
    wait until element is visible    ${Retail_AccountReturnPageStatusFilter}    10
    capture element screenshot    ${Retail_AccountReturnPageStatusFilter}
    click element    ${Retail_AccountReturnPageStatusFilter}
    sleep    2

User should be able to filter status by ALL in Account Return Page
    wait until element is visible    ${Retail_AccountRetrunPageStatusFilterALL}    10
    capture element screenshot    ${Retail_AccountRetrunPageStatusFilterALL}
    click element    ${Retail_AccountRetrunPageStatusFilterALL}
    sleep    2

User should be able to filter status by Accepted in Account Return Page
    wait until element is visible    ${Retail_AccountRetrunPageStatusFilterAccepted}    10
    capture element screenshot    ${Retail_AccountRetrunPageStatusFilterAccepted}
    click element    ${Retail_AccountRetrunPageStatusFilterAccepted}
    sleep    2

User should be able to filter status by Declined in Account Return Page
    wait until element is visible    ${Retail_AccountRetrunPageStatusFilterDeclined}    10
    capture element screenshot    ${Retail_AccountRetrunPageStatusFilterDeclined}
    click element    ${Retail_AccountRetrunPageStatusFilterDeclined}
    sleep    2

User should be able to filter status by In Progress in Account Return Page
    wait until element is visible    ${Retail_AccountRetrunPageStatusFilterInProgress}    10
    capture element screenshot    ${Retail_AccountRetrunPageStatusFilterInProgress}
    click element    ${Retail_AccountRetrunPageStatusFilterInProgress}
    sleep    2

User should be able to click Date Filter in Return Page
    wait until element is visible    ${Retail_AccountReturnPageDateFilter}    10
    capture element screenshot    ${Retail_AccountReturnPageDateFilter}
    click element    ${Retail_AccountReturnPageDateFilter}
    sleep    2

User should be able to view Date Filter Elements in Account Return Page
    wait until element is visible    ${Retail_AccountReturnPageDateFilterContainer}    10
    wait until element is visible    ${Retail_AccountReturnPageDateFilterMonthName1}    10
    wait until element is visible    ${Retail_AccountReturnPageDateFilterMonthName2}    10
    wait until element is visible    ${Retail_AccountReturnPageDateFilterWeekdays1}    10
    wait until element is visible    ${Retail_AccountReturnPageDateFilterWeekdays2}    10

User should be able to click Previous Month Button in Account Return Page
    wait until element is visible    ${Retail_AccountReturnPageDateFilterPreviousMonth}    10
    capture element screenshot    ${Retail_AccountReturnPageDateFilterPreviousMonth}
    click element    ${Retail_AccountReturnPageDateFilterPreviousMonth}
    sleep    2

User should be able to click Next Month Button in Account Return Page
    wait until element is visible    ${Retail_AccountReturnPageDateFilterNextMonth}    10
    capture element screenshot    ${Retail_AccountReturnPageDateFilterNextMonth}
    click element    ${Retail_AccountReturnPageDateFilterNextMonth}
    sleep    2

User should be able to click Month Drop Down Filter in Account Return Page
    wait until element is visible    ${Retail_AccountReturnPageDateFilterSelectMonthDropDown}    10
    capture element screenshot    ${Retail_AccountReturnPageDateFilterSelectMonthDropDown}
    click element    ${Retail_AccountReturnPageDateFilterSelectMonthDropDown}
    sleep    2

User should be able to select month from drop down in Account Return Page
    wait until element is visible    ${Retail_AccountReturnPageDateFilterSelectMonth}    10
#    capture element screenshot    ${Retail_AccountOrderPageDateFilterSelectMonth}
    click element    ${Retail_AccountReturnPageDateFilterSelectMonth}
    sleep    2

User should be able to click Year Drop Down Filter in Account Return Page
    wait until element is visible    ${Retail_AccountReturnPageDateFilterSelectYearDropDown}    10
    capture element screenshot    ${Retail_AccountReturnPageDateFilterSelectYearDropDown}
    click element    ${Retail_AccountReturnPageDateFilterSelectYearDropDown}
    sleep    2

User should be able to select year from drop down in Account Return Page
    wait until element is visible    ${Retail_AccountReturnPageDateFilterSelectYear}    10
#    capture element screenshot    ${Retail_AccountOrderPageDateFilterSelectYear}
    click element    ${Retail_AccountReturnPageDateFilterSelectYear}
    sleep    2

User should be able to select From Date in Account Return Page
    wait until element is visible    ${Retail_AccountReturnPageDateFilterMonth1Days1stSelection}    10
    capture element screenshot    ${Retail_AccountReturnPageDateFilterMonth1Days1stSelection}
    click element    ${Retail_AccountReturnPageDateFilterMonth1Days1stSelection}
    sleep    2

User should be able to select To Date in Account Return Page
    wait until element is visible    ${Retail_AccountReturnPageDateFilterMonth2Days2ndSelection}    10
    capture element screenshot    ${Retail_AccountReturnPageDateFilterMonth2Days2ndSelection}
    click element    ${Retail_AccountReturnPageDateFilterMonth2Days2ndSelection}
    sleep    2

User should be able to click Date Filter Clear Button in Account Return Page
    wait until element is visible    ${Retail_AccountReturnPageDateFilterClearButton}    10
    capture element screenshot    ${Retail_AccountReturnPageDateFilterClearButton}
    click element    ${Retail_AccountReturnPageDateFilterClearButton}
    sleep    2

User should be able to click Date Filter Submit Button in Account Return Page
    wait until element is visible    ${Retail_AccountReturnPageDateFilterSubmitButton}    10
    capture element screenshot    ${Retail_AccountReturnPageDateFilterSubmitButton}
    click element    ${Retail_AccountReturnPageDateFilterSubmitButton}
    sleep    2

User should be able to click Search Box in Account Return Page
    wait until element is visible    ${Retail_AccountRetrunPageSearchBox}    10
    capture element screenshot    ${Retail_AccountRetrunPageSearchBox}
    click element    ${Retail_AccountRetrunPageSearchBox}
    sleep    2

User should be able to Input Text in Search Box in Account Return Page
    clear element text    ${Retail_AccountRetrunPageSearchBox}
    input text    ${Retail_AccountRetrunPageSearchBox}    ${Retail_AccountReturnPageSearchValue}
    capture element screenshot    ${Retail_AccountRetrunPageSearchBox}
    sleep    2

User should be able to click clear button from Search Box in Account Return Page
    wait until element is visible    ${Retail_AccountReturnPageSearchClose}    10
    capture element screenshot    ${Retail_AccountReturnPageSearchClose}
    click element    ${Retail_AccountReturnPageSearchClose}
    sleep    2

User should be able to click Arrage Filter in Account Return Page
    wait until element is visible    ${Retail_AccountRetrunPageArrangeFilter}    10
    capture element screenshot    ${Retail_AccountRetrunPageArrangeFilter}
    click element    ${Retail_AccountRetrunPageArrangeFilter}
    sleep    2

User should be able to Filter by New to Old in Account Return Page
    wait until element is visible    ${Retail_AccountReturnPageArrangeFilterNewtoOld}    10
    capture element screenshot    ${Retail_AccountReturnPageArrangeFilterNewtoOld}
    click element    ${Retail_AccountReturnPageArrangeFilterNewtoOld}
    sleep    2

User should be able to Filter by Old to New in Account Return Page
    wait until element is visible    ${Retail_AccountReturnPageArrangeFilterOldtoNew}    10
    capture element screenshot    ${Retail_AccountReturnPageArrangeFilterOldtoNew}
    click element    ${Retail_AccountReturnPageArrangeFilterOldtoNew}
    sleep    2

User should be able to view order with Accepted Status in Retail Account Return Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${AcceptedStatus}    run keyword and return status    element should be visible    ${Retail_AccountReturnPageAcceptedContainer}
    run keyword if    '${AcceptedStatus}' == 'False'    User should be able to click next page in Retail Account Return Page
    exit for loop if    '${AcceptedStatus}' == 'True'
    END
    scroll element into view    ${Retail_AccountReturnPageAcceptedContainer}
    wait until element is visible    ${Retail_AccountReturnPageAcceptedContainer}    10
    capture element screenshot    ${Retail_AccountReturnPageAcceptedContainer}
    sleep    2

User should be able to click order with Accepted Status in Retail Account Return Page
    wait until element is visible    ${Retail_AccountReturnPageAcceptedReturnID}    10
    click element    ${Retail_AccountReturnPageAcceptedReturnID}
    wait until element is visible    ${Retail_AccountReturnPageReturnDetailsHeader}    10
    capture page screenshot
    sleep    2

User should be able to view order with Declined Status in Retail Account Return Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${DeclinedStatus}    run keyword and return status    element should be visible    ${Retail_AccountReturnPageDeclinedContainer}
    run keyword if    '${DeclinedStatus}' == 'False'    User should be able to click next page in Retail Account Return Page
    exit for loop if    '${DeclinedStatus}' == 'True'
    END
    scroll element into view    ${Retail_AccountReturnPageDeclinedContainer}
    wait until element is visible    ${Retail_AccountReturnPageDeclinedContainer}   10
    capture element screenshot    ${Retail_AccountReturnPageDeclinedContainer}
    sleep    2

User should be able to click order with Declined Status in Retail Account Return Page
    wait until element is visible    ${Retail_AccountReturnPageDeclinedReturnID}    10
    click element    ${Retail_AccountReturnPageDeclinedReturnID}
    wait until element is visible    ${Retail_AccountReturnPageReturnDetailsHeader}
    capture page screenshot
    sleep    2

User should be able to view order with In Progress Status in Retail Account Return Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${InProgressStatus}    run keyword and return status    element should be visible    ${Retail_AccountReturnPageInProgressContainer}
    run keyword if    '${InProgressStatus}' == 'False'    User should be able to click next page in Retail Account Return Page
    exit for loop if    '${InProgressStatus}' == 'True'
    END
    scroll element into view    ${Retail_AccountReturnPageInProgressContainer}
    wait until element is visible    ${Retail_AccountReturnPageInProgressContainer}    10
    capture element screenshot    ${Retail_AccountReturnPageInProgressContainer}
    sleep    2

User should be able to click order with In Progress Status in Retail Account Return Page
    wait until element is visible    ${Retail_AccountReturnPageInProgressReturnID}    10
    click element    ${Retail_AccountReturnPageInProgressReturnID}
    wait until element is visible    ${Retail_AccountReturnPageReturnDetailsHeader}
    capture page screenshot
    sleep    2

User should be able to click Back to Return Request in Retail Account Return Details Page
    wait until element is visible    ${Retail_AccountReturnPageReturnDetailsBack}   10
    scroll element into view    ${Retail_AccountReturnPageReturnDetailsBack}
    press keys    none    \\ue011
    capture element screenshot    ${Retail_AccountReturnPageReturnDetailsBack}
    click element    ${Retail_AccountReturnPageReturnDetailsBack}
    sleep    2

User should be able to click next page in Retail Account Return Page
    wait until element is visible    ${Retail_AccountReturnPageDetailsNextPageButton}    10
    scroll element into view    ${Retail_AccountReturnPageDetailsNextPageButton}
    click element    ${Retail_AccountReturnPageDetailsNextPageButton}
    sleep    2

User should be able to click first page in Retail Account Return Page
    wait until element is visible    ${Retail_AccountReturnPageDetailsFirstPageButton}    10
    scroll element into view    ${Retail_AccountReturnPageDetailsFirstPageButton}
    click element    ${Retail_AccountReturnPageDetailsFirstPageButton}
    sleep    2

User should be able to click page 1 in Retail Account Return Page
    wait until element is visible    ${Retail_AccountReturnPageDetailsPage1Button}    10
    scroll element into view    ${Retail_AccountReturnPageDetailsPage1Button}
    click element    ${Retail_AccountReturnPageDetailsPage1Button}
    sleep    2

User should be able to return to first page Retail Account in Return Orders Page
    ${firstpagestatus}    run keyword and return status    element should be visible    ${Retail_AccountReturnPageDetailsFirstPageButton}
    ${Page1status}    run keyword and return status    element should be visible    ${Retail_AccountReturnPageDetailsPage1Button}
    run keyword if    '${Page1status}' == 'True'    User should be able to click page 1 in Retail Account Return Page
    run keyword if    '${firstpagestatus}' == 'True'    User should be able to click first page in Retail Account Return Page
    sleep    3

User should be able to click message supplier button in Retail Account Return Details Page
    wait until element is visible    ${Retail_AccountReturnPageOrderReturnMessageSupplierButton}    10
    scroll element into view    ${Retail_AccountReturnPageOrderReturnMessageSupplierButton}
    capture element screenshot    ${Retail_AccountReturnPageOrderReturnMessageSupplierButton}
    click element    ${Retail_AccountReturnPageOrderReturnMessageSupplierButton}
    sleep    2

User should be able to view message supplier pop up in Retail Account Return Details Page
    wait until element is visible    ${Retail_AccountReturnPageOrderReturnDetailsMessagePopUpContainer}    10
    wait until element is visible    ${Retail_AccountReturnPageOrderReturnDetailsMessagePopUpToSupplierLabel}    10
    wait until element is visible    ${Retail_AccountReturnPageOrderReturnDetailsMessagePopUpSubjectLabel}    10
    wait until element is visible    ${Retail_AccountReturnPageOrderReturnDetailsMessagePopUpMessageLabel}    10
    wait until element is visible    ${Retail_AccountReturnPageOrderReturnDetailsMessagePopUpUploadLabel}    10
    wait until element is visible    ${Retail_AccountReturnPageOrderReturnDetailsMessagePopUpToSupplierTextBox}    10
    wait until element is visible    ${Retail_AccountReturnPageOrderReturnDetailsMessagePopUpSubjectTextBox}    10
    wait until element is visible    ${Retail_AccountReturnPageOrderReturnDetailsMessagePopUpMessageTextBox}    10
    wait until element is visible    ${Retail_AccountReturnPageOrderReturnDetailsMessagePopUpUploadButton}    10
    wait until element is visible    ${Retail_AccountReturnPageOrderReturnDetailsMessagePopUpCancelButton}    10
    wait until element is visible    ${Retail_AccountReturnPageOrderReturnDetailsMessagePopUpSendButton}    10

    capture element screenshot    ${Retail_AccountReturnPageOrderReturnDetailsMessagePopUpContainer}
    capture element screenshot    ${Retail_AccountReturnPageOrderReturnDetailsMessagePopUpToSupplierLabel}
    capture element screenshot    ${Retail_AccountReturnPageOrderReturnDetailsMessagePopUpSubjectLabel}
    capture element screenshot    ${Retail_AccountReturnPageOrderReturnDetailsMessagePopUpMessageLabel}
    capture element screenshot    ${Retail_AccountReturnPageOrderReturnDetailsMessagePopUpUploadLabel}
    capture element screenshot    ${Retail_AccountReturnPageOrderReturnDetailsMessagePopUpToSupplierTextBox}
    capture element screenshot    ${Retail_AccountReturnPageOrderReturnDetailsMessagePopUpSubjectTextBox}
    capture element screenshot    ${Retail_AccountReturnPageOrderReturnDetailsMessagePopUpMessageTextBox}
    capture element screenshot    ${Retail_AccountReturnPageOrderReturnDetailsMessagePopUpUploadButton}
    capture element screenshot    ${Retail_AccountReturnPageOrderReturnDetailsMessagePopUpCancelButton}
    capture element screenshot    ${Retail_AccountReturnPageOrderReturnDetailsMessagePopUpSendButton}

    sleep    2

User should be able to input text on message pop up text field in Retail Account Return Details Page
    wait until element is visible    ${Retail_AccountReturnPageOrderReturnDetailsMessagePopUpMessageTextBox}    10
    clear element text    ${Retail_AccountReturnPageOrderReturnDetailsMessagePopUpMessageTextBox}
    input text    ${Retail_AccountReturnPageOrderReturnDetailsMessagePopUpMessageTextBox}    ${Retail_AccountReturnPageOrderReturnDetailsMessagePopUpUpMessabeValue}
    capture element screenshot    ${Retail_AccountReturnPageOrderReturnDetailsMessagePopUpMessageTextBox}
    sleep    2

User should be able to upload photo on message pop in Retail Account Return Details Page
    wait until element is visible    ${Retail_AccountReturnPageOrderReturnDetailsMessagePopUpUploadButton}    10
    choose file    ${Retail_AccountReturnPageOrderReturnDetailsMessagePopUpUploadImage}    ${UploadPhoto_Path_Value}
    capture element screenshot    ${Retail_AccountReturnPageOrderReturnDetailsMessagePopUpUploadedImageContainer}
    sleep    2

User should be able to click cancel on message pop in Retail Account Return Details Page
    wait until element is visible    ${Retail_AccountReturnPageOrderReturnDetailsMessagePopUpCancelButton}    10
    capture element screenshot    ${Retail_AccountReturnPageOrderReturnDetailsMessagePopUpCancelButton}
    click element    ${Retail_AccountReturnPageOrderReturnDetailsMessagePopUpCancelButton}
    sleep    2

User should be able to send on message pop in Retail Account Return Details Page
    wait until element is visible    ${Retail_AccountReturnPageOrderReturnDetailsMessagePopUpSendButton}    10
    capture element screenshot    ${Retail_AccountReturnPageOrderReturnDetailsMessagePopUpSendButton}
    click element    ${Retail_AccountReturnPageOrderReturnDetailsMessagePopUpSendButton}
    sleep    2

User should be able to click back to order details in Retail Account Return Details Page
    wait until element is visible    ${Retail_AccountReturnDetailsMessageCofirmationContainer}    10
    wait until element is visible    ${Retail_AccountReturnDetailsMessageCofirmationButton}    10
    capture element screenshot    ${Retail_AccountReturnDetailsMessageCofirmationButton}
    click element    ${Retail_AccountReturnDetailsMessageCofirmationButton}
    sleep    2