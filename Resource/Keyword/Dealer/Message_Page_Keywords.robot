*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary

Resource  ../../../Resource/testdata/config.robot
Resource  ../../../Resource/testdata/Dealer/Dealer_Variable.robot
Resource  ../../../Resource/testdata/credentials.robot



*** Keywords ***
#-----------------------------------------------------Dealer Message Page-------------------------------------------
User should be able to view message page
    wait until element is visible    ${MessagePagePanelContainer}    10
    wait until element is visible     ${MessagePagePanelHeader}    10
    capture page screenshot
    sleep    2

User should be able to click read message
    scroll element into view    ${MessagePageUnreadMessages}
    wait until element is visible    ${MessagePageReadMessagesProdEnq}
    click element    ${MessagePageReadMessagesProdEnq}
    sleep    2

User should be able to click view message content
    wait until element is visible    ${MessageDetailsPagePanelHeader}    10
#    wait until element is visible    ${MessageDetailsPageBackButton}    10
#    wait until element is visible    ${MessageDetailsPageMessageTitle}    10
#    wait until element is visible    ${MessageDetailsPageMessageBody}    10
#    wait until element is visible    ${MessageDetailsPageReplyBody}    10
#    wait until element is visible    ${MessageDetailsPageReplyTextBox}    10
#    wait until element is visible    ${MessageDetailsPageUploadImageButton}    10
#    wait until element is visible    ${MessageDetailsPageCancelButton}    10
#    wait until element is visible    ${MessageDetailsPageSendButton}    10
#
#    capture element screenshot    ${MessageDetailsPageBackButton}
#    capture element screenshot    ${MessageDetailsPageMessageTitle}
#    capture element screenshot    ${MessageDetailsPageMessageBody}
#    capture element screenshot    ${MessageDetailsPageReplyBody}
#    capture element screenshot    ${MessageDetailsPageReplyTextBox}
#    capture element screenshot    ${MessageDetailsPageUploadImageButton}
#    capture element screenshot    ${MessageDetailsPageCancelButton}
#    capture element screenshot    ${MessageDetailsPageSendButton}

    capture page screenshot

User should be able to click filter messages in Dealer Messages Page
    wait until element is visible    ${MessagePageEnquiryFilter}    10
    capture element screenshot    ${MessagePageEnquiryFilter}
    click element    ${MessagePageEnquiryFilter}
    sleep    2

User should be able to select All filter in Dealer Messages Page
    wait until element is visible    ${MessagePageEnquiryFilterAll}    10
    capture element screenshot    ${MessagePageEnquiryFilterAll}
    click element    ${MessagePageEnquiryFilterAll}
    sleep    2

User should be able to select Product Enquiry filter in Dealer Messages Page
    wait until element is visible    ${MessagePageEnquiryFilterProductEnquiry}    10
    capture element screenshot    ${MessagePageEnquiryFilterProductEnquiry}
    click element    ${MessagePageEnquiryFilterProductEnquiry}
    sleep    2

User should be able to select Order Enquiry filter in Dealer Messages Page
    wait until element is visible    ${MessagePageEnquiryFilterOrderEnquiry}    10
    capture element screenshot    ${MessagePageEnquiryFilterOrderEnquiry}
    click element    ${MessagePageEnquiryFilterOrderEnquiry}
    sleep    2

User should be able to select Return Enquiry filter in Dealer Messages Page
    wait until element is visible    ${MessagePageEnquiryFilterReturnEnquiry}    10
    capture element screenshot    ${MessagePageEnquiryFilterReturnEnquiry}
    click element    ${MessagePageEnquiryFilterReturnEnquiry}
    sleep    2

User should be able to select General Enquiry filter in Dealer Messages Page
    wait until element is visible    ${MessagePageEnquiryFilterGeneralEnquiry}    10
    capture element screenshot    ${MessagePageEnquiryFilterGeneralEnquiry}
    click element    ${MessagePageEnquiryFilterGeneralEnquiry}
    sleep    2

User should be able to click Date Filter in Dealer Messages Page
    wait until element is visible    ${MessagePageDateFilter}    10
    capture element screenshot    ${MessagePageDateFilter}
    click element    ${MessagePageDateFilter}
    sleep    2

User should be able to view Date Filter Elements in Dealer Messages Page
    wait until element is visible    ${MessagePageDateFilterContainer}    10
    wait until element is visible    ${MessagePageDateFilterMonthName1}    10
    wait until element is visible    ${MessagePageDateFilterMonthName2}    10
    wait until element is visible    ${MessagePageDateFilterWeekdays1}    10
    wait until element is visible    ${MessagePageDateFilterWeekdays2}    10


User should be able to click Previous Month Button in Dealer Messages Page
    wait until element is visible    ${MessagePageDateFilterPreviousMonth}    10
    capture element screenshot    ${MessagePageDateFilterPreviousMonth}
    click element    ${MessagePageDateFilterPreviousMonth}
    sleep    2

User should be able to click Next Month Button in Dealer Messages Page
    wait until element is visible    ${MessagePageDateFilterNextMonth}    10
    capture element screenshot    ${MessagePageDateFilterNextMonth}
    click element    ${MessagePageDateFilterNextMonth}
    sleep    2

User should be able to click Month Drop Down Filter in Dealer Messages Page
    wait until element is visible    ${MessagePageDateFilterSelectMonthDropDown}    10
    capture element screenshot    ${MessagePageDateFilterSelectMonthDropDown}
    click element    ${MessagePageDateFilterSelectMonthDropDown}
    sleep    2

User should be able to select month from drop down in Dealer Messages Page
    wait until element is visible    ${MessagePageDateFilterSelectMonth}    10
#    capture element screenshot    ${OrderPageDateFilterSelectMonth}
    click element    ${MessagePageDateFilterSelectMonth}
    sleep    2

User should be able to click Year Drop Down Filter in Dealer Messages Page
    wait until element is visible    ${MessagePageDateFilterSelectYearDropDown}    10
    capture element screenshot    ${MessagePageDateFilterSelectYearDropDown}
    click element    ${MessagePageDateFilterSelectYearDropDown}
    sleep    2

User should be able to select year from drop down in Dealer Messages Page
    wait until element is visible    ${MessagePageDateFilterSelectYear}    10
#    capture element screenshot    ${OrderPageDateFilterSelectYear}
    click element    ${MessagePageDateFilterSelectYear}
    sleep    2

User should be able to select From Date in Dealer Messages Page
    wait until element is visible    ${MessagePageDateFilterMonth1Days1stSelection}    10
    capture element screenshot    ${MessagePageDateFilterMonth1Days1stSelection}
    click element    ${MessagePageDateFilterMonth1Days1stSelection}
    sleep    2

User should be able to select To Date in Dealer Messages Page
    wait until element is visible    ${MessagePageDateFilterMonth1Days2ndSelection}    10
    capture element screenshot    ${MessagePageDateFilterMonth1Days2ndSelection}
    click element    ${MessagePageDateFilterMonth1Days2ndSelection}
    sleep    2

User should be able to click Date Filter Clear Button in Dealer Messages Page
    wait until element is visible    ${MessagePageDateFilterClearButton}    10
    capture element screenshot    ${MessagePageDateFilterClearButton}
    click element    ${MessagePageDateFilterClearButton}
    sleep    2

User should be able to click Date Filter Submit Button in Dealer Messages Page
    wait until element is visible    ${MessagePageDateFilterSubmitButton}   10
    capture element screenshot    ${MessagePageDateFilterSubmitButton}
    click element    ${MessagePageDateFilterSubmitButton}
    sleep    2

User should be able to click Search Box in Dealer Messages Page
    wait until element is visible    ${MessagePageSearchBox}    10
    capture element screenshot    ${MessagePageSearchBox}
    click element    ${MessagePageSearchBox}
    sleep    2

User should be able to Input Text in Search Box in Dealer Messages Page
    clear element text    ${MessagePageSearchBox}
    input text    ${MessagePageSearchBox}    ${MessagePageSearchValue}
    capture element screenshot    ${MessagePageSearchBox}
    sleep    2

User should be able to click clear button from Search Box in Dealer Messages Page
    wait until element is visible    ${MessagePageSearchClose}    10
    capture element screenshot    ${MessagePageSearchClose}
    click element    ${MessagePageSearchClose}
    sleep    2

User should be able to view read General Enquiry in Dealer Message Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${ReadGenEnqStatus}    run keyword and return status    element should be visible    ${MessagePageReadMessagesGenEnqContainer}
    run keyword if    '${ReadGenEnqStatus}' == 'False'    User should be able to click next page in Dealer Messages Page
    exit for loop if    '${ReadGenEnqStatus}' == 'True'
    END
    scroll element into view    ${MessagePageReadMessagesGenEnqContainer}
    wait until element is visible    ${MessagePageReadMessagesGenEnqContainer}    10
    capture element screenshot    ${MessagePageReadMessagesGenEnqContainer}
    sleep    2

User should be able to click read General Enquiry in Dealer Message Page
    wait until element is visible    ${MessagePageReadMessagesGenEnqTitle}    10
    click element    ${MessagePageReadMessagesGenEnqTitle}
    wait until element is visible    ${MessageDetailsPagePanelHeader}
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

User should be able to view read Return Enquiry in Dealer Message Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${ReadReturnEnqStatus}    run keyword and return status    element should be visible    ${MessagePageReadMessagesReturnEnqContainer}
    run keyword if    '${ReadReturnEnqStatus}' == 'False'    User should be able to click next page in Dealer Messages Page
    exit for loop if    '${ReadReturnEnqStatus}' == 'True'
    END
    scroll element into view    ${MessagePageReadMessagesReturnEnqContainer}
    wait until element is visible    ${MessagePageReadMessagesReturnEnqContainer}   10
    capture element screenshot    ${MessagePageReadMessagesReturnEnqContainer}
    sleep    2

User should be able to click read Return Enquiry in Dealer Message Page
    wait until element is visible   ${MessagePageReadMessagesReturnEnqTitle}    10
    click element    ${MessagePageReadMessagesReturnEnqTitle}
    wait until element is visible    ${MessageDetailsPagePanelHeader}
    capture page screenshot
    sleep    2

User should be able to view read Product Enquiry in Dealer Message Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${ReadProdEnqStatus}    run keyword and return status    element should be visible    ${MessagePageReadMessagesProdEnqContainer}
    run keyword if    '${ReadProdEnqStatus}' == 'False'    User should be able to click next page in Dealer Messages Page
    exit for loop if    '${ReadProdEnqStatus}' == 'True'
    END
    scroll element into view    ${MessagePageReadMessagesProdEnqContainer}
    wait until element is visible    ${MessagePageReadMessagesProdEnqContainer}   10
    capture element screenshot    ${MessagePageReadMessagesProdEnqContainer}
    sleep    2

User should be able to click read Product Enquiry in Dealer Message Page
    wait until element is visible   ${MessagePageReadMessagesProdEnqTitle}    10
    click element    ${MessagePageReadMessagesProdEnqTitle}
    wait until element is visible    ${MessageDetailsPagePanelHeader}
    capture page screenshot
    sleep    2

User should be able to view unread General Enquiry in Dealer Message Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${UnreadGenEnqStatus}    run keyword and return status    element should be visible    ${MessagePageUnreadMessagesGenEnqContainer}
    run keyword if    '${UnreadGenEnqStatus}' == 'False'    User should be able to click next page in Dealer Messages Page
    exit for loop if    '${UnreadGenEnqStatus}' == 'True'
    END
    scroll element into view    ${MessagePageUnreadMessagesGenEnqContainer}
    wait until element is visible    ${MessagePageUnreadMessagesGenEnqContainer}   10
    capture element screenshot    ${MessagePageUnreadMessagesGenEnqContainer}
    sleep    2

User should be able to click unread General Enquiry in Dealer Message Page
    wait until element is visible   ${MessagePageUnreadMessagesGenEnqTitle}    10
    click element    ${MessagePageUnreadMessagesGenEnqTitle}
    wait until element is visible    ${MessageDetailsPagePanelHeader}
    capture page screenshot
    sleep    2

User should be able to view unread Order Enquiry in Dealer Message Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${UnreadOrdEnqStatus}    run keyword and return status    element should be visible    ${MessagePageUnreadMessagesOrdEnqContainer}
    run keyword if    '${UnreadOrdEnqStatus}' == 'False'    User should be able to click next page in Dealer Messages Page
    exit for loop if    '${UnreadOrdEnqStatus}' == 'True'
    END
    scroll element into view    ${MessagePageUnreadMessagesOrdEnqContainer}
    wait until element is visible    ${MessagePageUnreadMessagesOrdEnqContainer}   10
    capture element screenshot    ${MessagePageUnreadMessagesOrdEnqContainer}
    sleep    2

User should be able to click unread Order Enquiry in Dealer Message Page
    wait until element is visible   ${MessagePageUnreadMessagesOrdEnqTitle}    10
    click element    ${MessagePageUnreadMessagesOrdEnqTitle}
    wait until element is visible    ${MessageDetailsPagePanelHeader}
    capture page screenshot
    sleep    2

User should be able to view unread Return Enquiry in Dealer Message Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${UnreadReturnEnqStatus}    run keyword and return status    element should be visible    ${MessagePageUnreadMessagesReturnEnqContainer}
    run keyword if    '${UnreadReturnEnqStatus}' == 'False'    User should be able to click next page in Dealer Messages Page
    exit for loop if    '${UnreadReturnEnqStatus}' == 'True'
    END
    scroll element into view    ${MessagePageUnreadMessagesReturnEnqContainer}
    wait until element is visible    ${MessagePageUnreadMessagesReturnEnqContainer}   10
    capture element screenshot    ${MessagePageUnreadMessagesReturnEnqContainer}
    sleep    2

User should be able to click unread Return Enquiry in Dealer Message Page
    wait until element is visible   ${MessagePageUnreadMessagesReturnEnqTitle}    10
    click element    ${MessagePageUnreadMessagesReturnEnqTitle}
    wait until element is visible    ${MessageDetailsPagePanelHeader}
    capture page screenshot
    sleep    2

User should be able to view unread Product Enquiry in Dealer Message Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${UnreadProdEnqStatus}    run keyword and return status    element should be visible    ${MessagePageUnreadMessagesProdEnqContainer}
    run keyword if    '${UnreadProdEnqStatus}' == 'False'    User should be able to click next page in Dealer Messages Page
    exit for loop if    '${UnreadProdEnqStatus}' == 'True'
    END
    scroll element into view    ${MessagePageUnreadMessagesProdEnqContainer}
    wait until element is visible    ${MessagePageUnreadMessagesProdEnqContainer}   10
    capture element screenshot    ${MessagePageUnreadMessagesProdEnqContainer}
    sleep    2

User should be able to click unread Product Enquiry in Dealer Message Page
    wait until element is visible   ${MessagePageUnreadMessagesProdEnqTitle}    10
    click element    ${MessagePageUnreadMessagesProdEnqTitle}
    wait until element is visible    ${MessageDetailsPagePanelHeader}
    capture page screenshot
    sleep    2


User should be able to read all unread Messages in Dealer Message Page
    ${MessagePageCount}    get text    ${MessagePageDetailsLastPageButton}
    log    ${MessagePageCount}
    ${MessagePageCountInt}    convert to integer    ${MessagePageCount}
    log    ${MessagePageCountInt}
    ${MessagePageUnreadCount}    get element count    ${MessagePageAllUnreadMessages}
    log    ${MessagePageUnreadCount}
    :FOR    ${Nextpage}    IN RANGE    1    500
      :FOR    ${UnreadMessage}    IN RANGE    1    ${MessagePageUnreadCount}
      ${UnreadStatus}    run keyword and return status    wait until element is visible    ${MessagePageAllUnreadMessages}[1]    10
      run keyword if    '${UnreadStatus}' == 'True'    User should be able to read unread message
      exit for loop if    '${UnreadStatus}' == 'False'

    ${UnreadStatus}    run keyword and return status    element should be visible    ${MessagePageDetailsPreviousPageButtonDisabled}
    run keyword    '${UnreadStatus}' == 'False'    User should be able to click next page in Dealer Messages Page
    exit for loop if    '${UnreadStatus}' == 'True'

User should be able to read unread message
    wait until element is visible    ${MessagePageAllUnreadMessages}[1]
    scroll element into view    ${MessagePageAllUnreadMessages}[1]
    click element    ${MessagePageAllUnreadMessages}[1]
    sleep    2
    run keyword    User should be able to click Back to All Message in Dealer Messages Details Page
    sleep    2

User should be able to click Back to All Message in Dealer Messages Details Page
    scroll element into view    ${MessageDetailsPageBackButton}
    wait until element is visible    ${MessageDetailsPageBackButton}   10
    capture element screenshot    ${MessageDetailsPageBackButton}
    click element    ${MessageDetailsPageBackButton}
    sleep    2

User should be able to click next page in Dealer Messages Page
    wait until element is visible    ${MessagePageDetailsNextPageButton}    10
    scroll element into view    ${MessagePageDetailsNextPageButton}
    click element    ${MessagePageDetailsNextPageButton}
    sleep    2

User should be able to click first page in Dealer Messages Page
    wait until element is visible    ${MessagePageDetailsFirstPageButton}    10
    scroll element into view    ${MessagePageDetailsFirstPageButton}
    click element    ${MessagePageDetailsFirstPageButton}
    sleep    2

User should be able to click page 1 in Delaer Messages Page
    wait until element is visible    ${MessagePageDetailsPage1Button}   10
    scroll element into view    ${MessagePageDetailsPage1Button}
    click element    ${MessagePageDetailsPage1Button}
    sleep    2

User should be able to return to first page in Messages Page
    ${firstpagestatus}    run keyword and return status    element should be visible    ${MessagePageDetailsFirstPageButton}
    ${Page1status}    run keyword and return status    element should be visible    ${MessagePageDetailsPage1Button}
    run keyword if    '${Page1status}' == 'True'    User should be able to click page 1 in Delaer Messages Page
    run keyword if    '${firstpagestatus}' == 'True'    User should be able to click first page in Dealer Messages Page
    sleep    3

User should be able to Input Text on Message in Dealer Messages Details Page
    wait until element is visible    ${MessageDetailsPageReplyTextBox}    10
    clear element text    ${MessageDetailsPageReplyTextBox}
    input text    ${MessageDetailsPageReplyTextBox}    ${MessageDetailsPageMessageValue}
    capture element screenshot    ${MessageDetailsPageReplyTextBox}
    sleep    2

User should be able to upload image in Dealer Messages Details Page
    wait until element is visible    ${MessageDetailsPageUploadImageButton}    10
    scroll element into view    ${MessageDetailsPageUploadImageButton}
    choose file    ${MessageDetailsPageUploadImage}    ${UploadPhoto_Path_Value}
    capture element screenshot    ${MessageDetailsPageUploadImageContainer}
    sleep    2

User should be able to click cancel in Dealer Messages Details Page
    wait until element is visible    ${MessageDetailsPageCancelButton}
    scroll element into view    ${MessageDetailsPageCancelButton}
    capture element screenshot    ${MessageDetailsPageCancelButton}
    click element    ${MessageDetailsPageCancelButton}
    sleep    2

User should be able to click send in Dealer Messages Details Page
    wait until element is visible    ${MessageDetailsPageSendButton}
    scroll element into view    ${MessageDetailsPageSendButton}
    capture element screenshot    ${MessageDetailsPageSendButton}
    click element    ${MessageDetailsPageSendButton}
    sleep    2
