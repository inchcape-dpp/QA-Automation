*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary

#Resource  ../../../Resource/testdata/config.robot
Resource  ../../../Resource/testdata/Retail/Retail_Variable.robot
Resource  ../../../Resource/testdata/credentials.robot


*** Keywords ***
#-----------------------------------------------------Retail Account Messages Page--------------------------------------
User should be able to view message page
    wait until element is visible    ${Retail_AccountpageMessagesMenu}    10
    click element    ${Retail_AccountpageMessagesMenu}
    wait until element is visible    ${Retail_AccountMessagePagePanelContainer}    10
    capture page screenshot
    sleep    2

User should be able to click read message
    wait until element is visible    ${Retail_AccountMessagePageReadMessagesProdEnq}    10
    click element    ${Retail_AccountMessagePageReadMessagesProdEnq}

User should be able to click view message content
    wait until element is visible    ${Retail_AccountMessageDetailsPagePanelHeader}
    wait until element is visible    ${Retail_AccountMessageDetailsPageBackButton}    10
    wait until element is visible    ${Retail_AccountMessageDetailsPageMessageTitle}    10
    wait until element is visible    ${Retail_AccountMessageDetailsPageMessageBody}    10
    wait until element is visible    ${Retail_AccountMessageDetailsPageReplyBody}    10
    wait until element is visible    ${Retail_AccountMessageDetailsPageReplyTextBox}    10
    wait until element is visible    ${Retail_AccountMessageDetailsPageUploadImageButton}    10
    wait until element is visible    ${Retail_AccountMessageDetailsPageCancelButton}    10
    wait until element is visible    ${Retail_AccountMessageDetailsPageSendButton}    10

    capture element screenshot    ${Retail_AccountMessageDetailsPageBackButton}
    capture element screenshot    ${Retail_AccountMessageDetailsPageMessageTitle}
    capture element screenshot    ${Retail_AccountMessageDetailsPageMessageBody}
    capture element screenshot    ${Retail_AccountMessageDetailsPageReplyBody}
    capture element screenshot    ${Retail_AccountMessageDetailsPageReplyTextBox}
    capture element screenshot    ${Retail_AccountMessageDetailsPageUploadImageButton}
    capture element screenshot    ${Retail_AccountMessageDetailsPageCancelButton}
    capture element screenshot    ${Retail_AccountMessageDetailsPageSendButton}

    capture page screenshot

User should be able to click filter messages in Retail Account Messages Page
    wait until element is visible    ${Retail_AccountMessagePageEnquiryFilter}    10
    capture element screenshot    ${Retail_AccountMessagePageEnquiryFilter}
    click element    ${Retail_AccountMessagePageEnquiryFilter}
    sleep    2

User should be able to select All filter in Retail Account Messages Page
    wait until element is visible    ${Retail_AccountMessagePageEnquiryFilterAll}    10
    capture element screenshot    ${Retail_AccountMessagePageEnquiryFilterAll}
    click element    ${Retail_AccountMessagePageEnquiryFilterAll}
    sleep    2

User should be able to select Product Enquiry filter in Retail Account Messages Page
    wait until element is visible    ${Retail_AccountMessagePageEnquiryFilterProductEnquiry}    10
    capture element screenshot    ${Retail_AccountMessagePageEnquiryFilterProductEnquiry}
    click element    ${Retail_AccountMessagePageEnquiryFilterProductEnquiry}
    sleep    2

User should be able to select Order Enquiry filter in Retail Account Messages Page
    wait until element is visible    ${Retail_AccountMessagePageEnquiryFilterOrderEnquiry}    10
    capture element screenshot    ${Retail_AccountMessagePageEnquiryFilterOrderEnquiry}
    click element    ${Retail_AccountMessagePageEnquiryFilterOrderEnquiry}
    sleep    2

User should be able to select Return Enquiry filter in Retail Account Messages Page
    wait until element is visible    ${Retail_AccountMessagePageEnquiryFilterReturnEnquiry}    10
    capture element screenshot    ${Retail_AccountMessagePageEnquiryFilterReturnEnquiry}
    click element    ${Retail_AccountMessagePageEnquiryFilterReturnEnquiry}
    sleep    2

User should be able to select General Enquiry filter in Retail Account Messages Page
    wait until element is visible    ${Retail_AccountMessagePageEnquiryFilterGeneralEnquiry}    10
    capture element screenshot    ${Retail_AccountMessagePageEnquiryFilterGeneralEnquiry}
    click element    ${Retail_AccountMessagePageEnquiryFilterGeneralEnquiry}
    sleep    2

User should be able to click Date Filter in Retail Account Messages Page
    wait until element is visible    ${Retail_AccountMessagePageDateFilter}    10
    capture element screenshot    ${Retail_AccountMessagePageDateFilter}
    click element    ${Retail_AccountMessagePageDateFilter}
    sleep    2

User should be able to view Date Filter Elements in Retail Account Messages Page
    wait until element is visible    ${Retail_AccountMessagePageDateFilterContainer}    10
    wait until element is visible    ${Retail_AccountMessagePageDateFilterMonthName1}    10
    wait until element is visible    ${Retail_AccountMessagePageDateFilterMonthName2}    10
    wait until element is visible    ${Retail_AccountMessagePageDateFilterWeekdays1}    10
    wait until element is visible    ${Retail_AccountMessagePageDateFilterWeekdays2}    10


User should be able to click Previous Month Button in Retail Account Messages Page
    wait until element is visible    ${Retail_AccountMessagePageDateFilterPreviousMonth}    10
    capture element screenshot    ${Retail_AccountMessagePageDateFilterPreviousMonth}
    click element    ${Retail_AccountMessagePageDateFilterPreviousMonth}
    sleep    2

User should be able to click Next Month Button in Retail Account Messages Page
    wait until element is visible    ${Retail_AccountMessagePageDateFilterNextMonth}    10
    capture element screenshot    ${Retail_AccountMessagePageDateFilterNextMonth}
    click element    ${Retail_AccountMessagePageDateFilterNextMonth}
    sleep    2

User should be able to click Month Drop Down Filter in Retail Account Messages Page
    wait until element is visible    ${Retail_AccountMessagePageDateFilterSelectMonthDropDown}    10
    capture element screenshot    ${Retail_AccountMessagePageDateFilterSelectMonthDropDown}
    click element    ${Retail_AccountMessagePageDateFilterSelectMonthDropDown}
    sleep    2

User should be able to select month from drop down in Retail Account Messages Page
    wait until element is visible    ${Retail_AccountMessagePageDateFilterSelectMonth}    10
#    capture element screenshot    ${Retail_AccountOrderPageDateFilterSelectMonth}
    click element    ${Retail_AccountMessagePageDateFilterSelectMonth}
    sleep    2

User should be able to click Year Drop Down Filter in Retail Account Messages Page
    wait until element is visible    ${Retail_AccountMessagePageDateFilterSelectYearDropDown}    10
    capture element screenshot    ${Retail_AccountMessagePageDateFilterSelectYearDropDown}
    click element    ${Retail_AccountMessagePageDateFilterSelectYearDropDown}
    sleep    2

User should be able to select year from drop down in Retail Account Messages Page
    wait until element is visible    ${Retail_AccountMessagePageDateFilterSelectYear}    10
#    capture element screenshot    ${Retail_AccountOrderPageDateFilterSelectYear}
    click element    ${Retail_AccountMessagePageDateFilterSelectYear}
    sleep    2

User should be able to select From Date in Retail Account Messages Page
    wait until element is visible    ${Retail_AccountMessagePageDateFilterMonth1Days1stSelection}    10
    capture element screenshot    ${Retail_AccountMessagePageDateFilterMonth1Days1stSelection}
    click element    ${Retail_AccountMessagePageDateFilterMonth1Days1stSelection}
    sleep    2

User should be able to select To Date in Retail Account Messages Page
    wait until element is visible    ${Retail_AccountMessagePageDateFilterMonth1Days2ndSelection}    10
    capture element screenshot    ${Retail_AccountMessagePageDateFilterMonth1Days2ndSelection}
    click element    ${Retail_AccountMessagePageDateFilterMonth1Days2ndSelection}
    sleep    2

User should be able to click Date Filter Clear Button in Retail Account Messages Page
    wait until element is visible    ${Retail_AccountMessagePageDateFilterClearButton}    10
    capture element screenshot    ${Retail_AccountMessagePageDateFilterClearButton}
    click element    ${Retail_AccountMessagePageDateFilterClearButton}
    sleep    2

User should be able to click Date Filter Submit Button in Retail Account Messages Page
    wait until element is visible    ${Retail_AccountMessagePageDateFilterSubmitButton}   10
    capture element screenshot    ${Retail_AccountMessagePageDateFilterSubmitButton}
    click element    ${Retail_AccountMessagePageDateFilterSubmitButton}
    sleep    2

User should be able to click Search Box in Retail Account Messages Page
    wait until element is visible    ${Retail_AccountMessagePageSearchBox}    10
    capture element screenshot    ${Retail_AccountMessagePageSearchBox}
    click element    ${Retail_AccountMessagePageSearchBox}
    sleep    2

User should be able to Input Text in Search Box in Retail Account Messages Page
    clear element text    ${Retail_AccountMessagePageSearchBox}
    input text    ${Retail_AccountMessagePageSearchBox}    ${Retail_AccountMessagePageSearchValue}
    capture element screenshot    ${Retail_AccountMessagePageSearchBox}
    sleep    2

User should be able to click clear button from Search Box in Retail Account Messages Page
    wait until element is visible    ${Retail_AccountMessagePageSearchClose}    10
    capture element screenshot    ${Retail_AccountMessagePageSearchClose}
    click element    ${Retail_AccountMessagePageSearchClose}
    sleep    2

User should be able to view read General Enquiry in Retail Account Message Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${ReadGenEnqStatus}    run keyword and return status    element should be visible    ${Retail_AccountMessagePageReadMessagesGenEnqContainer}
    run keyword if    '${ReadGenEnqStatus}' == 'False'    User should be able to click next page in Retail Account Messages Page
    exit for loop if    '${ReadGenEnqStatus}' == 'True'
    END
    scroll element into view    ${Retail_AccountMessagePageReadMessagesGenEnqContainer}
    wait until element is visible    ${Retail_AccountMessagePageReadMessagesGenEnqContainer}    10
    capture element screenshot    ${Retail_AccountMessagePageReadMessagesGenEnqContainer}
    sleep    2

User should be able to click read General Enquiry in Retail Account Message Page
    wait until element is visible    ${Retail_AccountMessagePageReadMessagesGenEnqTitle}    10
    click element    ${Retail_AccountMessagePageReadMessagesGenEnqTitle}
    wait until element is visible    ${Retail_AccountMessageDetailsPagePanelHeader}    10
    capture page screenshot
    sleep    2

User should be able to view read Return Enquiry in Retail Account Message Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${ReadRetEnqStatus}    run keyword and return status    element should be visible    ${Retail_AccountMessagePageReadMessagesRetEnqContainer}
    run keyword if    '${ReadRetEnqStatus}' == 'False'    User should be able to click next page in Retail Account Messages Page
    exit for loop if    '${ReadRetEnqStatus}' == 'True'
    END
    scroll element into view    ${Retail_AccountMessagePageReadMessagesRetEnqContainer}
    wait until element is visible    ${Retail_AccountMessagePageReadMessagesRetEnqContainer}   10
    capture element screenshot    ${Retail_AccountMessagePageReadMessagesRetEnqContainer}
    sleep    2

User should be able to click read Return Enquiry in Retail Account Message Page
    wait until element is visible   ${Retail_AccountMessagePageReadMessagesRetEnqTitle}    10
    click element    ${Retail_AccountMessagePageReadMessagesRetEnqTitle}
    wait until element is visible    ${Retail_AccountMessageDetailsPagePanelHeader}    10
    capture page screenshot
    sleep    2

User should be able to view read Order Enquiry in Retail Account Message Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${ReadOrdEnqStatus}    run keyword and return status    element should be visible    ${Retail_AccountMessagePageReadMessagesOrdEnqContainer}
    run keyword if    '${ReadOrdEnqStatus}' == 'False'    User should be able to click next page in Retail Account Messages Page
    exit for loop if    '${ReadOrdEnqStatus}' == 'True'
    END
    scroll element into view    ${Retail_AccountMessagePageReadMessagesOrdEnqContainer}
    wait until element is visible    ${Retail_AccountMessagePageReadMessagesOrdEnqContainer}   10
    capture element screenshot    ${Retail_AccountMessagePageReadMessagesOrdEnqContainer}
    sleep    2

User should be able to click read Order Enquiry in Retail Account Message Page
    wait until element is visible   ${Retail_AccountMessagePageReadMessagesOrdEnqTitle}    10
    click element    ${Retail_AccountMessagePageReadMessagesOrdEnqTitle}
    wait until element is visible    ${Retail_AccountMessageDetailsPagePanelHeader}    10
    capture page screenshot
    sleep    2

User should be able to view read Product Enquiry in Retail Account Message Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${ReadProdEnqStatus}    run keyword and return status    element should be visible    ${Retail_AccountMessagePageReadMessagesProdEnqContainer}
    run keyword if    '${ReadProdEnqStatus}' == 'False'    User should be able to click next page in Retail Account Messages Page
    exit for loop if    '${ReadProdEnqStatus}' == 'True'
    END
    scroll element into view    ${Retail_AccountMessagePageReadMessagesProdEnqContainer}
    wait until element is visible    ${Retail_AccountMessagePageReadMessagesProdEnqContainer}   10
    capture element screenshot    ${Retail_AccountMessagePageReadMessagesProdEnqContainer}
    sleep    2

User should be able to click read Product Enquiry in Retail Account Message Page
    wait until element is visible   ${Retail_AccountMessagePageReadMessagesProdEnqTitle}    10
    click element    ${Retail_AccountMessagePageReadMessagesProdEnqTitle}
    wait until element is visible    ${Retail_AccountMessageDetailsPagePanelHeader}    10
    capture page screenshot
    sleep    2

User should be able to view unread General Enquiry in Retail Account Message Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${UnreadGenEnqStatus}    run keyword and return status    element should be visible    ${Retail_AccountMessagePageUnreadMessagesGenEnqContainer}
    run keyword if    '${UnreadGenEnqStatus}' == 'False'    User should be able to click next page in Retail Account Messages Page
    exit for loop if    '${UnreadGenEnqStatus}' == 'True'
    END
    scroll element into view    ${Retail_AccountMessagePageUnreadMessagesGenEnqContainer}
    wait until element is visible    ${Retail_AccountMessagePageUnreadMessagesGenEnqContainer}   10
    capture element screenshot    ${Retail_AccountMessagePageUnreadMessagesGenEnqContainer}
    sleep    2

User should be able to click unread General Enquiry in Retail Account Message Page
    wait until element is visible   ${Retail_AccountMessagePageUnreadMessagesGenEnqTitle}    10
    click element    ${Retail_AccountMessagePageUnreadMessagesGenEnqTitle}
    wait until element is visible    ${Retail_AccountMessageDetailsPagePanelHeader}    10
    capture page screenshot
    sleep    2

User should be able to view unread Return Enquiry in Retail Account Message Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${UnreadRetEnqStatus}    run keyword and return status    element should be visible    ${Retail_AccountMessagePageUnreadMessagesRetEnqContainer}
    run keyword if    '${UnreadRetEnqStatus}' == 'False'    User should be able to click next page in Retail Account Messages Page
    exit for loop if    '${UnreadRetEnqStatus}' == 'True'
    END
    scroll element into view    ${Retail_AccountMessagePageUnreadMessagesRetEnqContainer}
    wait until element is visible    ${Retail_AccountMessagePageUnreadMessagesRetEnqContainer}   10
    capture element screenshot    ${Retail_AccountMessagePageUnreadMessagesRetEnqContainer}
    sleep    2

User should be able to click unread Return Enquiry in Retail Account Message Page
    wait until element is visible   ${Retail_AccountMessagePageUnreadMessagesRetEnqTitle}    10
    click element    ${Retail_AccountMessagePageUnreadMessagesRetEnqTitle}
    wait until element is visible    ${Retail_AccountMessageDetailsPagePanelHeader}    10
    capture page screenshot
    sleep    2

User should be able to view unread Order Enquiry in Retail Account Message Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${UnreadOrdEnqStatus}    run keyword and return status    element should be visible    ${Retail_AccountMessagePageUnreadMessagesOrdEnqContainer}
    run keyword if    '${UnreadOrdEnqStatus}' == 'False'    User should be able to click next page in Retail Account Messages Page
    exit for loop if    '${UnreadOrdEnqStatus}' == 'True'
    END
    scroll element into view    ${Retail_AccountMessagePageUnreadMessagesOrdEnqContainer}
    wait until element is visible    ${Retail_AccountMessagePageUnreadMessagesOrdEnqContainer}   10
    capture element screenshot    ${Retail_AccountMessagePageUnreadMessagesOrdEnqContainer}
    sleep    2

User should be able to click unread Order Enquiry in Retail Account Message Page
    wait until element is visible   ${Retail_AccountMessagePageUnreadMessagesOrdEnqTitle}    10
    click element    ${Retail_AccountMessagePageUnreadMessagesOrdEnqTitle}
    wait until element is visible    ${Retail_AccountMessageDetailsPagePanelHeader}    10
    capture page screenshot
    sleep    2

User should be able to view unread Product Enquiry in Retail Account Message Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${UnreadProdEnqStatus}    run keyword and return status    element should be visible    ${Retail_AccountMessagePageUnreadMessagesProdEnqContainer}
    run keyword if    '${UnreadProdEnqStatus}' == 'False'    User should be able to click next page in Retail Account Messages Page
    exit for loop if    '${UnreadProdEnqStatus}' == 'True'
    END
    scroll element into view    ${Retail_AccountMessagePageUnreadMessagesProdEnqContainer}
    wait until element is visible    ${Retail_AccountMessagePageUnreadMessagesProdEnqContainer}   10
    capture element screenshot    ${Retail_AccountMessagePageUnreadMessagesProdEnqContainer}
    sleep    2

User should be able to click unread Product Enquiry in Retail Account Message Page
    wait until element is visible   ${Retail_AccountMessagePageUnreadMessagesProdEnqTitle}    10
    click element    ${Retail_AccountMessagePageUnreadMessagesProdEnqTitle}
    wait until element is visible    ${Retail_AccountMessageDetailsPagePanelHeader}    10
    capture page screenshot
    sleep    2

User should be able to click Back to All Message in Retail Account Messages Details Page
    wait until element is visible    ${Retail_AccountMessageDetailsPageBackButton}   10
    scroll element into view    ${Retail_AccountMessageDetailsPageBackButton}
    capture element screenshot    ${Retail_AccountMessageDetailsPageBackButton}
    click element    ${Retail_AccountMessageDetailsPageBackButton}
    sleep    2

User should be able to click next page in Retail Account Messages Page
    wait until element is visible    ${Retail_AccountMessagePageDetailsNextPageButton}    10
    scroll element into view    ${Retail_AccountMessagePageDetailsNextPageButton}
    click element    ${Retail_AccountMessagePageDetailsNextPageButton}
    sleep    2

User should be able to click first page in Retail Account Messages Page
    wait until element is visible    ${Retail_AccountMessagePageDetailsFirstPageButton}    10
    scroll element into view    ${Retail_AccountMessagePageDetailsFirstPageButton}
    click element    ${Retail_AccountMessagePageDetailsFirstPageButton}
    sleep    2

User should be able to click page 1 in Retail Account Messages Page
    wait until element is visible    ${Retail_AccountMessagePageDetailsPage1Button}   10
    scroll element into view    ${Retail_AccountMessagePageDetailsPage1Button}
    click element    ${Retail_AccountMessagePageDetailsPage1Button}
    sleep    2

User should be able to return to first page in Retail Account Messages Page
    ${firstpagestatus}    run keyword and return status    element should be visible    ${Retail_AccountMessagePageDetailsFirstPageButton}
    ${Page1status}    run keyword and return status    element should be visible    ${Retail_AccountMessagePageDetailsPage1Button}
    run keyword if    '${Page1status}' == 'True'    User should be able to click page 1 in Retail Account Messages Page
    run keyword if    '${firstpagestatus}' == 'True'    User should be able to click first page in Retail Account Messages Page
    sleep    3

User should be able to Input Text on Message in Retail Account Messages Details Page
    wait until element is visible    ${Retail_AccountMessageDetailsPageReplyTextBox}    10
    clear element text    ${Retail_AccountMessageDetailsPageReplyTextBox}
    input text    ${Retail_AccountMessageDetailsPageReplyTextBox}    ${Retail_AccountMessageDetailsPageMessageValue}
    capture element screenshot    ${Retail_AccountMessageDetailsPageReplyTextBox}
    sleep    2

User should be able to upload image in Retail Account Messages Details Page
    wait until element is visible    ${Retail_AccountMessageDetailsPageUploadImageButton}    10
    scroll element into view    ${Retail_AccountMessageDetailsPageUploadImageButton}
    choose file    ${Retail_AccountMessageDetailsPageUploadImage}    ${UploadPhoto_Path_Value}
    capture element screenshot    ${Retail_AccountMessageDetailsPageUploadImageContainer}
    sleep    2

User should be able to click cancel in Retail Account Messages Details Page
    wait until element is visible    ${Retail_AccountMessageDetailsPageCancelButton}
    scroll element into view    ${Retail_AccountMessageDetailsPageCancelButton}
    capture element screenshot    ${Retail_AccountMessageDetailsPageCancelButton}
    click element    ${Retail_AccountMessageDetailsPageCancelButton}
    sleep    2

User should be able to click send in Retail Account Messages Details Page
    wait until element is visible    ${Retail_AccountMessageDetailsPageSendButton}
    scroll element into view    ${Retail_AccountMessageDetailsPageSendButton}
    capture element screenshot    ${Retail_AccountMessageDetailsPageSendButton}
    click element    ${Retail_AccountMessageDetailsPageSendButton}
    sleep    2
