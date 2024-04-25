*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary

#Resource  ../../../Resource/testdata/config.robot
Resource  ../../../Resource/testdata/Retail/Retail_Variable.robot
Resource  ../../../Resource/testdata/credentials.robot


*** Keywords ***

#-----------------------------------------------------Retail Account Saved Carts Page-----------------------------------------------
User should be able to view account saved carts page
    wait until element is visible    ${Retail_AccountpageSavedCartsMenu}    10
    click element    ${Retail_AccountpageSavedCartsMenu}
    wait until element is visible    ${Retail_AccountSavedCartsPagePanelContainer}    10
    capture page screenshot
    sleep    2

User should be able to view Saved Carts Panel
    wait until element is visible    ${Retail_AccountSavedCartsPagePanelContainer}    10
    capture element screenshot    ${Retail_AccountSavedCartsPagePanelContainer}
    sleep    5

User should be able to view Saved Carts List in Retail Account Saved Carts Page
    wait until element is visible    ${Retail_AccountSavedCartsPageCartNameLabel}    10
#    wait until element is visible    ${Retail_AccountSavedCartsPageRegoLabel}    10
    wait until element is visible    ${Retail_AccountSavedCartsPageDescriptionLabel}    10
    wait until element is visible    ${Retail_AccountSavedCartsPageCreatedLabel}    10
    wait until element is visible    ${Retail_AccountSavedCartsPageQtyLabel}    10
    wait until element is visible    ${Retail_AccountSavedCartsPageTotalLabel}    10
    wait until element is visible    ${Retail_AccountSavedCartsPageSavedCartList}    10

    capture element screenshot    ${Retail_AccountSavedCartsPageCartNameLabel}
#    capture element screenshot    ${Retail_AccountSavedCartsPageRegoLabel}
    capture element screenshot    ${Retail_AccountSavedCartsPageDescriptionLabel}
    capture element screenshot    ${Retail_AccountSavedCartsPageCreatedLabel}
    capture element screenshot    ${Retail_AccountSavedCartsPageQtyLabel}
    capture element screenshot    ${Retail_AccountSavedCartsPageTotalLabel}
    capture element screenshot    ${Retail_AccountSavedCartsPageSavedCartList}

    sleep    2

User should be able to view Empty Saved Carts in Retail Account Saved Carts Page
    wait until element is visible    ${Retail_AccountSavedCartsNoEntriesLabel}    10
    capture element screenshot    ${Retail_AccountSavedCartsNoEntriesLabel}
    sleep    2

User should be able to select one Saved Carts in Retail Account Saved Carts Page
    wait until element is visible    ${Retail_AccountSavedCartsPageSavedCartListCartNameValue}    10
    capture element screenshot    ${Retail_AccountSavedCartsPageSavedCartListCartNameValue}
    click element    ${Retail_AccountSavedCartsPageSavedCartListCartNameValue}
    sleep    2

User should be able to click Restore in Retail Account Saved Carts Page
    wait until element is visible    ${Retail_AccountSavedCartsPageSavedCartListRestoreButton}    10
    capture element screenshot    ${Retail_AccountSavedCartsPageSavedCartListRestoreButton}
    click element    ${Retail_AccountSavedCartsPageSavedCartListRestoreButton}
    sleep    2

User should be able to click Delete in Retail Account Saved Carts Page
    wait until element is visible    ${Retail_AccountSavedCartsPageSavedCartListDeleteButton}    10
    capture element screenshot    ${Retail_AccountSavedCartsPageSavedCartListDeleteButton}
    click element    ${Retail_AccountSavedCartsPageSavedCartListDeleteButton}
    sleep    2

User should be able to click Yes for Delete Pop Up in Retail Account Saved Carts Page
    wait until element is visible    ${Retail_AccountSavedCartsPageSavedCartListDeletePopUpContainer}    10
    wait until element is visible    ${Retail_AccountSavedCartsPageSavedCartListDeletePopUpYesButton}    10
    capture element screenshot    ${Retail_AccountSavedCartsPageSavedCartListDeletePopUpYesButton}
    click element    ${Retail_AccountSavedCartsPageSavedCartListDeletePopUpYesButton}
    sleep    2

User should be able to click No for Delete Pop Up in Retail Account Saved Carts Page
    wait until element is visible    ${Retail_AccountSavedCartsPageSavedCartListDeletePopUpContainer}    10
    wait until element is visible    ${Retail_AccountSavedCartsPageSavedCartListDeletePopUpNoButton}    10
    capture element screenshot    ${Retail_AccountSavedCartsPageSavedCartListDeletePopUpNoButton}
    click element    ${Retail_AccountSavedCartsPageSavedCartListDeletePopUpNoButton}
    sleep    2

User should be able to view Saved Carts Details in Retail Account Saved Carts Page
    wait until element is visible    ${Retail_AccountSavedCartsDetailsPagePanelContainer}    10
    wait until element is visible    ${Retail_AccountSavedCartsDetailsPagePanelHeader}    10
    wait until element is visible    ${Retail_AccountSavedCartsDetailsPageBackButton}    10

    capture element screenshot    ${Retail_AccountSavedCartsDetailsPagePanelContainer}
    capture element screenshot    ${Retail_AccountSavedCartsDetailsPagePanelHeader}
    capture element screenshot    ${Retail_AccountSavedCartsDetailsPageBackButton}

    wait until element is visible    ${Retail_AccountSavedCartsDetailsPageDetailsContainer}    10
    capture element screenshot    ${Retail_AccountSavedCartsDetailsPageDetailsContainer}

    wait until element is visible    ${Retail_AccountSavedCartsDetailsPageDetailsItemsContainer}    10
    capture element screenshot    ${Retail_AccountSavedCartsDetailsPageDetailsItemsContainer}

    sleep    2

User should be able to click Edit in Retail Account Saved Carts Details Page
    wait until element is visible    ${Retail_AccountSavedCartsDetailsPageDetailsEditButton}    10
    scroll element into view    ${Retail_AccountSavedCartsDetailsPageDetailsEditButton}
    capture element screenshot    ${Retail_AccountSavedCartsDetailsPageDetailsEditButton}
    click element    ${Retail_AccountSavedCartsDetailsPageDetailsEditButton}
    sleep    2

User should be able to click Delete in Retail Account Saved Carts Details Page
    wait until element is visible    ${Retail_Account_SavedCartsPage_DetailsPage_DeleteButton}    10
    scroll element into view    ${Retail_Account_SavedCartsPage_DetailsPage_DeleteButton}
    capture element screenshot    ${Retail_Account_SavedCartsPage_DetailsPage_DeleteButton}
    click element    ${Retail_Account_SavedCartsPage_DetailsPage_DeleteButton}
    sleep    2

User should be albe to click Restore in Retail Account Saved Carts Details Page
    wait until element is visible    ${Retail_Account_SavedCartsPage_DetailsPage_RestoreButton}    10
    scroll element into view    ${Retail_Account_SavedCartsPage_DetailsPage_RestoreButton}
    capture element screenshot   ${Retail_Account_SavedCartsPage_DetailsPage_RestoreButton}
    click element    ${Retail_Account_SavedCartsPage_DetailsPage_RestoreButton}
    sleep    2

User should be able to click Yes for Delete Pop Up in Retail Account Saved Carts Details Page
    wait until element is visible    ${Retail_AccountSavedCartsDetailsPageDetailsDeletePopUpContainer}    10
    wait until element is visible    ${Retail_AccountSavedCartsDetailsPageDetailsDeletePopUpYesButton}    10
    capture element screenshot    ${Retail_AccountSavedCartsDetailsPageDetailsDeletePopUpYesButton}
    click element    ${Retail_AccountSavedCartsDetailsPageDetailsDeletePopUpYesButton}
    sleep    2

User should be able to click No for Delete Pop Up in Retail Account Saved Carts Details Page
    wait until element is visible    ${Retail_AccountSavedCartsDetailsPageDetailsDeletePopUpContainer}    10
    wait until element is visible    ${Retail_AccountSavedCartsDetailsPageDetailsDeletePopUpNoButton}    10
    capture element screenshot    ${Retail_AccountSavedCartsDetailsPageDetailsDeletePopUpNoButton}
    click element    ${Retail_AccountSavedCartsDetailsPageDetailsDeletePopUpNoButton}
    sleep    2

User should be able to view Edit Pop Up in Retail Account Saved Carts Details Page
    wait until element is visible    ${Retail_AccountSavedCartsDetailsPageDetailsEditPopUpContainer}    10
    wait until element is visible    ${Retail_AccountSavedCartsDetailsPageDetailsEditPopUpCloseButton}    10

    wait until element is visible    ${Retail_AccountSavedCartsDetailsPageDetailsEditPopUpNameLabel}    10
    wait until element is visible    ${Retail_AccountSavedCartsDetailsPageDetailsEditPopUpRegoLabel}    10
    wait until element is visible    ${Retail_AccountSavedCartsDetailsPageDetailsEditPopUpDescLabel}    10
    wait until element is visible    ${Retail_AccountSavedCartsDetailsPageDetailsEditPopUpNameTextBox}    10
    wait until element is visible    ${Retail_AccountSavedCartsDetailsPageDetailsEditPopUpRegoTextBox}    10
    wait until element is visible    ${Retail_AccountSavedCartsDetailsPageDetailsEditPopUpDescTextBox}    10
    wait until element is visible    ${Retail_AccountSavedCartsDetailsPageDetailsEditPopUpCancelButton}    10
    wait until element is visible    ${Retail_AccountSavedCartsDetailsPageDetailsEditPopUpUpdateButton}    10

    capture element screenshot    ${Retail_AccountSavedCartsDetailsPageDetailsEditPopUpNameLabel}
    capture element screenshot    ${Retail_AccountSavedCartsDetailsPageDetailsEditPopUpRegoLabel}
    capture element screenshot    ${Retail_AccountSavedCartsDetailsPageDetailsEditPopUpDescLabel}
    capture element screenshot    ${Retail_AccountSavedCartsDetailsPageDetailsEditPopUpNameTextBox}
    capture element screenshot    ${Retail_AccountSavedCartsDetailsPageDetailsEditPopUpRegoTextBox}
    capture element screenshot    ${Retail_AccountSavedCartsDetailsPageDetailsEditPopUpDescTextBox}
    capture element screenshot    ${Retail_AccountSavedCartsDetailsPageDetailsEditPopUpCancelButton}
    capture element screenshot    ${Retail_AccountSavedCartsDetailsPageDetailsEditPopUpUpdateButton}

    sleep    2

User should be able to edit Name for Edit Pop Up in Retail Account Saved Carts Details Page
    wait until element is visible    ${Retail_AccountSavedCartsDetailsPageDetailsEditPopUpNameTextBox}    10
    clear element text    ${Retail_AccountSavedCartsDetailsPageDetailsEditPopUpNameTextBox}
    input text    ${Retail_AccountSavedCartsDetailsPageDetailsEditPopUpNameTextBox}    ${Retail_AccountSavedCartsDetailsPageEditPopUpNameValue}
    capture element screenshot    ${Retail_AccountSavedCartsDetailsPageDetailsEditPopUpNameTextBox}
    sleep    2

User should be able to edit Description for Edit Pop Up in Retail Account Saved Carts Details Page
    wait until element is visible    ${Retail_AccountSavedCartsDetailsPageDetailsEditPopUpDescTextBox}    10
    clear element text    ${Retail_AccountSavedCartsDetailsPageDetailsEditPopUpDescTextBox}
    input text    ${Retail_AccountSavedCartsDetailsPageDetailsEditPopUpDescTextBox}    ${Retail_AccountSavedCartsDetailsPageEditPopUpDescValue}
    capture element screenshot    ${Retail_AccountSavedCartsDetailsPageDetailsEditPopUpDescTextBox}
    sleep    2

User shoulld be albe to click Cancel for Edit Pop Up in Retail Account Saved Carts Details Page
    wait until element is visible    ${Retail_AccountSavedCartsDetailsPageDetailsEditPopUpCancelButton}    10
    capture element screenshot    ${Retail_AccountSavedCartsDetailsPageDetailsEditPopUpCancelButton}
    click element    ${Retail_AccountSavedCartsDetailsPageDetailsEditPopUpCancelButton}
    sleep    2

User shoulld be albe to click Update for Edit Pop Up in Retail Account Saved Carts Details Page
    wait until element is visible    ${Retail_AccountSavedCartsDetailsPageDetailsEditPopUpUpdateButton}    10
    capture element screenshot    ${Retail_AccountSavedCartsDetailsPageDetailsEditPopUpUpdateButton}
    click element    ${Retail_AccountSavedCartsDetailsPageDetailsEditPopUpUpdateButton}
    sleep    2

User should be able to click Close for Edit Pop Up in Retail Account Saved Carts Details Page
    wait until element is visible    ${Retail_AccountSavedCartsDetailsPageDetailsEditPopUpCloseButton}    10
    capture element screenshot    ${Retail_AccountSavedCartsDetailsPageDetailsEditPopUpCloseButton}
    click element    ${Retail_AccountSavedCartsDetailsPageDetailsEditPopUpCloseButton}
    sleep    2

User should be albe to click Back to Saved Carts Button in Retail Account Saved Carts Details Page
    wait until element is visible    ${Retail_AccountSavedCartsBackToSavedCartsButton}    10
    scroll element into view    ${Retail_AccountSavedCartsBackToSavedCartsButton}
    capture element screenshot    ${Retail_AccountSavedCartsBackToSavedCartsButton}
    click element    ${Retail_AccountSavedCartsBackToSavedCartsButton}
    sleep    2






