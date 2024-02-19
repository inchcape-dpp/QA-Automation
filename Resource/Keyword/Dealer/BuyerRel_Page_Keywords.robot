*** Settings ***
Documentation    Suite description

Library    SeleniumLibrary

#Resource    ../../../Resource/testdata/config.robot
Resource    ../../../Resource/testdata/Dealer/Dealer_Variable.robot
Resource    ../../../Resource/testdata/credentials.robot



*** Keywords ***
#-----------------------------------------------------Dealer Buyer Rel Page---------------------------------------------
User should be able to view Buyer Rel Page
    wait until element is visible    ${BuyerRelPagePanelContainer}    10
    wait until element is visible    ${BuyerRelPagePanelHeader}    10
#    wait until element is visible    ${CustRelPageDesc}    10
#    wait until element is visible    ${CustRelPageBuyerLabel}    10
#    wait until element is visible    ${CustRelPageActiveLabel}    10
    capture page screenshot
    sleep    2

User should be able to Check/Uncheck Status
    wait until element is visible    ${CustRelPageCheckbox}    10
    click element    ${CustRelPageCheckbox}
    wait until element is visible    ${CustRelPageModal}    10
    capture element screenshot    ${CustRelPageModal}
    click element    ${CustRelPageModalYes}
    sleep    2

User should be able to Click No Check/Uncheck Status
    wait until element is visible    ${CustRelPageCheckbox}    10
    click element    ${CustRelPageCheckbox}
    wait until element is visible    ${CustRelPageModal}    10
    capture element screenshot    ${CustRelPageModal}
    click element    ${CustRelPageModalNo}
    sleep    2

User should be able to Click Yes Check/Uncheck Status
    wait until element is visible    ${CustRelPageCheckbox}    10
    click element    ${CustRelPageCheckbox}
    wait until element is visible    ${CustRelPageModal}    10
    capture element screenshot    ${CustRelPageModal}
    click element    ${CustRelPageModalYes}
    sleep    2