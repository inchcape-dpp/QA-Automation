*** Settings ***
Documentation    Suite description

Library    SeleniumLibrary

#Resource    ../../../Resource/testdata/config.robot
Resource    ../../../Resource/testdata/Dealer/Dealer_Variable.robot
Resource    ../../../Resource/testdata/credentials.robot



*** Keywords ***
#-----------------------------------------------------Dealer New Reg Req Page-------------------------------------------
User should be able to view New Reg Req Panel
    wait until element is visible    ${NewRegReqPagePanelContainer}    10
    wait until element is visible    ${NewRegReqPagePanelHeader}    10
    capture page screenshot

#    wait until element is visible    ${NewRegReqPageNumReqHeader}    10
    wait until element is visible    ${NewRegReqPageFilterLabel}    10
    wait until element is visible    ${NewRegReqPageFilterSelection}    10
    wait until element is visible    ${NewRegReqPageAccNumLabel}    10
    wait until element is visible    ${NewRegReqPageCompanyNameLabel}    10
    wait until element is visible    ${NewRegReqPageDateLabel}    10
    wait until element is visible    ${NewRegReqPageStatusLabel}    10

#    capture element screenshot    ${NewRegReqPageNumReqHeader}
    capture element screenshot    ${NewRegReqPageFilterLabel}
    capture element screenshot    ${NewRegReqPageFilterSelection}
    capture element screenshot    ${NewRegReqPageAccNumLabel}
    capture element screenshot    ${NewRegReqPageCompanyNameLabel}
    capture element screenshot    ${NewRegReqPageDateLabel}
    capture element screenshot    ${NewRegReqPageStatusLabel}

#    scroll element into view    ${NewRegReqPageDetailsPreviousPageButton}
#
#    capture element screenshot    ${NewRegReqPageDetailsPreviousPageButton}
#    capture element screenshot    ${NewRegReqPageDetailsNextPageButton}
#    capture element screenshot    ${NewRegReqPageDetailsPage1Button}
#
#    scroll element into view    ${NewRegReqPagePanelHeader}

    sleep    1

User should be able to select one account number from history
    wait until element is visible    ${NewRegReqPageHistory1}    10
    click element    ${NewRegReqPageHistory1}
    sleep    3

User should be able to view New Buyer Details Page
    wait until element is visible    ${NewRegReqPageBuyerDetailsBackToReg}    10
    wait until element is visible    ${NewRegReqPageBuyerDetailsPanelContainer}    10
    capture element screenshot    ${NewRegReqPageBuyerDetailsPanelContainer}
    get text    ${NewRegReqPageBuyerDetailsStatus}

    wait until element is visible    ${NewRegReqPageBuyerDetailsPanelHeader}    10
    wait until element is visible    ${NewRegReqPageBuyerDetailsStatus}    10
    wait until element is visible    ${NewRegReqPageBuyerDetailsPrefSupLabel}    10
    wait until element is visible    ${NewRegReqPageBuyerDetailsAccNumLabel}    10
    wait until element is visible    ${NewRegReqPageBuyerDetailsCompNameLabel}    10
    wait until element is visible    ${NewRegReqPageBuyerDetailsTradeNameLabel}    10
    wait until element is visible    ${NewRegReqPageBuyerDetailsPostalAddLabel}    10
    wait until element is visible    ${NewRegReqPageBuyerDetailsAdd1Label}    10
    wait until element is visible    ${NewRegReqPageBuyerDetailsAdd2Label}    10
    wait until element is visible    ${NewRegReqPageBuyerDetailsSuburbLabel}    10
    wait until element is visible    ${NewRegReqPageBuyerDetailsPostalCodeLabel}    10
    wait until element is visible    ${NewRegReqPageBuyerDetailsStateLabel}    10

    capture element screenshot    ${NewRegReqPageBuyerDetailsPanelHeader}
    capture element screenshot    ${NewRegReqPageBuyerDetailsStatus}
    capture element screenshot    ${NewRegReqPageBuyerDetailsPrefSupLabel}
    capture element screenshot    ${NewRegReqPageBuyerDetailsAccNumLabel}
    capture element screenshot    ${NewRegReqPageBuyerDetailsCompNameLabel}
    capture element screenshot    ${NewRegReqPageBuyerDetailsTradeNameLabel}
    capture element screenshot    ${NewRegReqPageBuyerDetailsPostalAddLabel}
    capture element screenshot    ${NewRegReqPageBuyerDetailsAdd1Label}
    capture element screenshot    ${NewRegReqPageBuyerDetailsAdd2Label}
    capture element screenshot    ${NewRegReqPageBuyerDetailsSuburbLabel}
    capture element screenshot    ${NewRegReqPageBuyerDetailsPostalCodeLabel}
    capture element screenshot    ${NewRegReqPageBuyerDetailsStateLabel}

    wait until element is visible    ${NewRegReqPageBuyerDetailsPrefSelComboBox}    10
    wait until element is visible    ${NewRegReqPageBuyerDetailsAccTextBox}    10
    wait until element is visible    ${NewRegReqPageBuyerDetailsCompNameTextBox}    10
    wait until element is visible    ${NewRegReqPageBuyerDetailsTradeNameTextBox}    10
    wait until element is visible    ${NewRegReqPageBuyerDetailsAdd1TextBox}    10
    wait until element is visible    ${NewRegReqPageBuyerDetailsAdd2TextBox}    10
    wait until element is visible    ${NewRegReqPageBuyerDetailsSuburbTextBox}    10
    wait until element is visible    ${NewRegReqPageBuyerDetailsPostalCodeTextBox}    10
    wait until element is visible    ${NewRegReqPageBuyerDetailsStateComboBox}    10

    capture element screenshot    ${NewRegReqPageBuyerDetailsPrefSelComboBox}
    capture element screenshot    ${NewRegReqPageBuyerDetailsAccTextBox}
    capture element screenshot    ${NewRegReqPageBuyerDetailsCompNameTextBox}
    capture element screenshot    ${NewRegReqPageBuyerDetailsTradeNameTextBox}
    capture element screenshot    ${NewRegReqPageBuyerDetailsAdd1TextBox}
    capture element screenshot    ${NewRegReqPageBuyerDetailsAdd2TextBox}
    capture element screenshot    ${NewRegReqPageBuyerDetailsSuburbTextBox}
    capture element screenshot    ${NewRegReqPageBuyerDetailsPostalCodeTextBox}
    capture element screenshot    ${NewRegReqPageBuyerDetailsStateComboBox}

    scroll element into view    ${NewRegReqPageBuyerDetailsLandNumTextBox}
    capture page screenshot

    wait until element is visible    ${NewRegReqPageBuyerDetailsDelAddCheckLabel}    10
    wait until element is visible    ${NewRegReqPageBuyerDetailsABNRadioLabel}    10
    wait until element is visible    ${NewRegReqPageBuyerDetailsACNRadioLabel}    10
    wait until element is visible    ${NewRegReqPageBuyerDetailsABNLabel}    10
    wait until element is visible    ${NewRegReqPageBuyerDetailsOpeningLabel}    10
    wait until element is visible    ${NewRegReqPageBuyerDetailsClosingLabel}    10
    wait until element is visible    ${NewRegReqPageBuyerDetailsContactFNLabel}    10
    wait until element is visible    ${NewRegReqPageBuyerDetailsContactLNLabel}    10
    wait until element is visible    ${NewRegReqPageBuyerDetailsEmailAddLabel}    10
    wait until element is visible    ${NewRegReqPageBuyerDetailsCompPhoneNumLabel}    10
    wait until element is visible    ${NewRegReqPageBuyerDetailsLandNumLabel}    10
#    wait until element is visible    ${NewRegReqPageBuyerDetailsRejectLabel}    10

    capture element screenshot    ${NewRegReqPageBuyerDetailsDelAddCheckLabel}
    capture element screenshot    ${NewRegReqPageBuyerDetailsABNRadioLabel}
    capture element screenshot    ${NewRegReqPageBuyerDetailsACNRadioLabel}
    capture element screenshot    ${NewRegReqPageBuyerDetailsABNLabel}
    capture element screenshot    ${NewRegReqPageBuyerDetailsOpeningLabel}
    capture element screenshot    ${NewRegReqPageBuyerDetailsClosingLabel}
    capture element screenshot    ${NewRegReqPageBuyerDetailsContactFNLabel}
    capture element screenshot    ${NewRegReqPageBuyerDetailsContactLNLabel}
    capture element screenshot    ${NewRegReqPageBuyerDetailsEmailAddLabel}
    capture element screenshot    ${NewRegReqPageBuyerDetailsCompPhoneNumLabel}
    capture element screenshot    ${NewRegReqPageBuyerDetailsLandNumLabel}
#    capture element screenshot    ${NewRegReqPageBuyerDetailsRejectLabel}

    wait until element is visible    ${NewRegReqPageBuyerDetailsDelAddCheckBox}
    wait until element is visible    ${NewRegReqPageBuyerDetailsABNButton}
    wait until element is visible    ${NewRegReqPageBuyerDetailsACNButton}
    wait until element is visible    ${NewRegReqPageBuyerDetailsABNTextBox}
    wait until element is visible    ${NewRegReqPageBuyerDetailsOpeningComboBox}
    wait until element is visible    ${NewRegReqPageBuyerDetailsClosingComboBox}
    wait until element is visible    ${NewRegReqPageBuyerDetailsContactFNTextBox}
    wait until element is visible    ${NewRegReqPageBuyerDetailsContactLNTextBox}
    wait until element is visible    ${NewRegReqPageBuyerDetailsEmailAddTextBox}
    wait until element is visible    ${NewRegReqPageBuyerDetailsCompPhoneNumTextBox}
    wait until element is visible    ${NewRegReqPageBuyerDetailsLandNumTextBox}

    capture element screenshot    ${NewRegReqPageBuyerDetailsDelAddCheckBox}
    capture element screenshot    ${NewRegReqPageBuyerDetailsABNButton}
    capture element screenshot    ${NewRegReqPageBuyerDetailsACNButton}
    capture element screenshot    ${NewRegReqPageBuyerDetailsABNTextBox}
    capture element screenshot    ${NewRegReqPageBuyerDetailsOpeningComboBox}
    capture element screenshot    ${NewRegReqPageBuyerDetailsClosingComboBox}
    capture element screenshot    ${NewRegReqPageBuyerDetailsContactFNTextBox}
    capture element screenshot    ${NewRegReqPageBuyerDetailsContactLNTextBox}
    capture element screenshot    ${NewRegReqPageBuyerDetailsEmailAddTextBox}
    capture element screenshot    ${NewRegReqPageBuyerDetailsCompPhoneNumTextBox}
    capture element screenshot    ${NewRegReqPageBuyerDetailsLandNumTextBox}

    sleep    1

User should be able to click Filter by Status in Dealer New Registration Request
    wait until element is visible    ${NewRegReqPageFilterSelection}    10
    capture element screenshot    ${NewRegReqPageFilterSelection}
    click element    ${NewRegReqPageFilterSelection}
    sleep    2

User should be able to filter status by All in Dealer New Registration Request
    wait until element is visible    ${NewRegReqPageFilterAll}    10
    capture element screenshot    ${NewRegReqPageFilterAll}
    click element    ${NewRegReqPageFilterAll}
    sleep    2

User should be able to filter status by In Progress in Dealer New Registration Request
    wait until element is visible    ${NewRegReqPageFilterInProgress}    10
    capture element screenshot    ${NewRegReqPageFilterInProgress}
    click element    ${NewRegReqPageFilterInProgress}
    sleep    2

User should be able to filter status by Approved in Dealer New Registration Request
    wait until element is visible    ${NewRegReqPageFilterApproved}    10
    capture element screenshot    ${NewRegReqPageFilterApproved}
    click element    ${NewRegReqPageFilterApproved}
    sleep    2

User should be able to filter status by Rejected in Dealer New Registration Request
    wait until element is visible    ${NewRegReqPageFilterRejected}    10
    capture element screenshot    ${NewRegReqPageFilterRejected}
    click element   ${NewRegReqPageFilterRejected}
    sleep    2

User should be able to click Back to Registraion Request in Dealer Registration Request Details Page
    wait until element is visible    ${NewRegReqPageBuyerDetailsBackToReg}   10
    scroll element into view    ${NewRegReqPageBuyerDetailsBackToReg}
    capture element screenshot    ${NewRegReqPageBuyerDetailsBackToReg}
    click element    ${NewRegReqPageBuyerDetailsBackToReg}
    sleep    2

User should be able to view Registration Request with In Progress Status in Dealer New Registration Request Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${InProgressStatus}    run keyword and return status    element should be visible    ${NewRegReqPageInProgressContainer}
    run keyword if    '${InProgressStatus}' == 'False'    User should be able to click next page in Dealer New Registration Request Page
    exit for loop if    '${InProgressStatus}' == 'True'
    END
    scroll element into view    ${NewRegReqPageInProgressContainer}
    wait until element is visible    ${NewRegReqPageInProgressContainer}   10
    capture element screenshot    ${NewRegReqPageInProgressContainer}
    sleep    2

User should be able to click Registration Request with In Progress Status in Dealer New Registration Request Page
    wait until element is visible    ${NewRegReqPageInProgressAccNum}   10
    click element    ${NewRegReqPageInProgressAccNum}
    wait until element is visible    ${NewRegReqPageBuyerDetailsPanelHeader}
    capture page screenshot
    sleep    2

User should be able to view Registration Request with Approved Status in Dealer New Registration Request Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${ApprovedStatus}    run keyword and return status    element should be visible    ${NewRegReqPageApprovedContainer}
    run keyword if    '${ApprovedStatus}' == 'False'    User should be able to click next page in Dealer New Registration Request Page
    exit for loop if    '${ApprovedStatus}' == 'True'
    END
    scroll element into view    ${NewRegReqPageApprovedContainer}
    wait until element is visible    ${NewRegReqPageApprovedContainer}  10
    capture element screenshot    ${NewRegReqPageApprovedContainer}
    sleep    2

User should be able to click Registration Request with Approved Status in Dealer New Registration Request Page
    wait until element is visible    ${NewRegReqPageApprovedAccNum}   10
    click element    ${NewRegReqPageApprovedAccNum}
    wait until element is visible    ${NewRegReqPageBuyerDetailsPanelHeader}
    capture page screenshot
    sleep    2

User should be able to view Registration Request with Rejected Status in Dealer New Registration Request Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${RejectedStatus}    run keyword and return status    element should be visible    ${NewRegReqPageRejectedContainer}
    run keyword if    '${RejectedStatus}' == 'False'    User should be able to click next page in Dealer New Registration Request Page
    exit for loop if    '${RejectedStatus}' == 'True'
    END
    scroll element into view    ${NewRegReqPageRejectedContainer}
    wait until element is visible    ${NewRegReqPageRejectedContainer}  10
    capture element screenshot    ${NewRegReqPageRejectedContainer}
    sleep    2

User should be able to click Registration Request with Rejected Status in Dealer New Registration Request Page
    wait until element is visible    ${NewRegReqPageRejectedAccNum}   10
    click element    ${NewRegReqPageRejectedAccNum}
    wait until element is visible    ${NewRegReqPageBuyerDetailsPanelHeader}
    capture page screenshot
    sleep    2

User should be able to click next page in Dealer New Registration Request Page
    wait until element is visible    ${NewRegReqPageDetailsNextPageButton}    10
    scroll element into view    ${NewRegReqPageDetailsNextPageButton}
    click element    ${NewRegReqPageDetailsNextPageButton}
    sleep    2

User should be able to click first page in Dealer New Registration Request Page
    wait until element is visible    ${NewRegReqPageDetailsFirstPageButton}    10
    scroll element into view    ${NewRegReqPageDetailsFirstPageButton}
    click element    $${NewRegReqPageDetailsFirstPageButton}
    sleep    2

User should be able to click page 1 in Delaer New Registration Request Page
    wait until element is visible    ${NewRegReqPageDetailsPage1Button}    10
    scroll element into view    ${NewRegReqPageDetailsPage1Button}
    click element    ${NewRegReqPageDetailsPage1Button}
    sleep    2

User should be able to return to first page in New Registration Request Orders Page
    ${firstpagestatus}    run keyword and return status    element should be visible    ${NewRegReqPageDetailsFirstPageButton}
    ${Page1status}    run keyword and return status    element should be visible    ${NewRegReqPageDetailsPage1Button}
    run keyword if    '${Page1status}' == 'True'    User should be able to click page 1 in Delaer New Registration Request Page
    run keyword if    '${firstpagestatus}' == 'True'    User should be able to click first page in Dealer New Registration Request Page
    sleep    3

User should be able to click reject button on New Buyers Details in Delaer New Registration Request Page
    wait until element is visible    ${NewRegReqPageBuyerDetailsRejectButton}    10
    capture element screenshot    ${NewRegReqPageBuyerDetailsRejectButton}
    click element    ${NewRegReqPageBuyerDetailsRejectButton}
    sleep    2

User should be able to click approve button on New Buyers Details in Delaer New Registration Request Page
    wait until element is visible    ${NewRegReqPageBuyerDetailsAcceptButton}    10
    capture element screenshot    ${NewRegReqPageBuyerDetailsAcceptButton}
    click element    ${NewRegReqPageBuyerDetailsAcceptButton}
    sleep    2


