*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary

#Resource  ../../../Resource/testdata/config.robot
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

User should be able to view Header List in Dealer HK Buyer Relationship Page
    wait until element is visible    ${Dealer-HK_BuyerRelPage_Header_CustomerName_Label}    10
    wait until element is visible    ${Dealer-HK_BuyerRelPage_Header_PartsClub_Label}    10
    wait until element is visible    ${Dealer-HK_BuyerRelPage_Header_ADP_Label}    10
    wait until element is visible    ${Dealer-HK_BuyerRelPage_Header_MemberTier_Label}    10
    wait until element is visible    ${Dealer-HK_BuyerRelPage_Header_Active_Label}    10
    wait until element is visible    ${Dealer-HK_BuyerRelPage_Entry_Edit_Button}    10

    capture element screenshot    ${Dealer-HK_BuyerRelPage_Header_CustomerName_Label}
    capture element screenshot    ${Dealer-HK_BuyerRelPage_Header_PartsClub_Label}
    capture element screenshot    ${Dealer-HK_BuyerRelPage_Header_ADP_Label}
    capture element screenshot    ${Dealer-HK_BuyerRelPage_Header_MemberTier_Label}
    capture element screenshot    ${Dealer-HK_BuyerRelPage_Header_Active_Label}
    capture element screenshot    ${Dealer-HK_BuyerRelPage_Entry_Edit_Button}

    sleep    2

User should be albe to view one Entry in Dealer HK Buyer Relationship Page
    wait until element is visible    ${Dealer-HK_BuyerRelPage_Entry_Container}    10
    ${EntriesCount}    get element count    ${Dealer-HK_BuyerRelPage_Entry_Container}
    ${RandomEntryIndex}    evaluate    random.randint(1,${EntriesCount})
    scroll element into view    (//dpp-hk-buyer-relationship-list//tbody//tr)[${RandomEntryIndex}]

    wait until element is visible    (//dpp-hk-buyer-relationship-list//tbody//tr//td[1])[${RandomEntryIndex}]    10
    wait until element is visible    (//dpp-hk-buyer-relationship-list//tbody//tr//td[2])[${RandomEntryIndex}]    10
    wait until element is visible    (//dpp-hk-buyer-relationship-list//tbody//tr//td[3])[${RandomEntryIndex}]    10
    wait until element is visible    (//dpp-hk-buyer-relationship-list//tbody//tr//td[4])[${RandomEntryIndex}]    10
    wait until element is visible    (//dpp-hk-buyer-relationship-list//tbody//tr//td[5])[${RandomEntryIndex}]    10
    wait until element is visible    (//dpp-hk-buyer-relationship-list//tbody//tr//td[@class='pr-0']//span[@class='edit-label d-flex justify-content-end'])[${RandomEntryIndex}]

    capture element screenshot    (//dpp-hk-buyer-relationship-list//tbody//tr//td[1])[${RandomEntryIndex}]
    capture element screenshot    (//dpp-hk-buyer-relationship-list//tbody//tr//td[2])[${RandomEntryIndex}]
    capture element screenshot    (//dpp-hk-buyer-relationship-list//tbody//tr//td[3])[${RandomEntryIndex}]
    capture element screenshot    (//dpp-hk-buyer-relationship-list//tbody//tr//td[4])[${RandomEntryIndex}]
    capture element screenshot    (//dpp-hk-buyer-relationship-list//tbody//tr//td[5])[${RandomEntryIndex}]
    capture element screenshot    (//dpp-hk-buyer-relationship-list//tbody//tr//td[@class='pr-0']//span[@class='edit-label d-flex justify-content-end'])[${RandomEntryIndex}]

    set global variable    ${RandomEntryIndex}
    sleep    2

User should be able to click edit one Entry in Dealer HK Buyer Relationship Page
    wait until element is visible    (//dpp-hk-buyer-relationship-list//tbody//tr//td[@class='pr-0']//span[@class='edit-label d-flex justify-content-end'])[${RandomEntryIndex}]    10
    click element    (//dpp-hk-buyer-relationship-list//tbody//tr//td[@class='pr-0']//span[@class='edit-label d-flex justify-content-end'])[${RandomEntryIndex}]
    capture element screenshot    (//dpp-hk-buyer-relationship-list//tbody//tr)[${RandomEntryIndex}]
    sleep    2

User should be able to edit Parts Club in Dealer HK Buyer Relationship Page
    wait until element is visible    ${Dealer-HK_BuyerRelPage_Entry_PartsClub_Textbox}    10
    clear element text    ${Dealer-HK_BuyerRelPage_Entry_PartsClub_Textbox}
    input text    ${Dealer-HK_BuyerRelPage_Entry_PartsClub_Textbox}    ${Dealer-HK_BuyerRelPage_Entry_PartsClub_Value}
    capture element screenshot    ${Dealer-HK_BuyerRelPage_Entry_PartsClub_Textbox}
    sleep    2

User should be able to edit ADP in Dealer HK Buyer Relationship Page
    wait until element is visible    ${Dealer-HK_BuyerRelPage_Entry_ADP_TextBox}    10
    clear element text    ${Dealer-HK_BuyerRelPage_Entry_ADP_TextBox}
    input text    ${Dealer-HK_BuyerRelPage_Entry_ADP_TextBox}    ${Dealer-HK_BuyerRelPage_Entry_ADP_Value}
    capture element screenshot    ${Dealer-HK_BuyerRelPage_Entry_ADP_TextBox}
    sleep    2

User should be able to edit Member Teir in Dealer HK Buyer Relationship Page
    wait until element is visible    ${Dealer-HK_BuyerRelPage_Entry_MemberTeir_Dropdown}    10
    capture element screenshot    ${Dealer-HK_BuyerRelPage_Entry_MemberTeir_Dropdown}
    click element    ${Dealer-HK_BuyerRelPage_Entry_MemberTeir_Dropdown}
    wait until element is visible    ${Dealer-HK_BuyerRelPage_Entry_MemberTeir_Dropdown_Options}    10
    capture element screenshot    ${Dealer-HK_BuyerRelPage_Entry_MemberTeir_Dropdown_Options}
    ${TeirCount}    get element count    ${Dealer-HK_BuyerRelPage_Entry_MemberTeir_Dropdown_Options}
    ${RandomTierIndex}    evaluate    random.randint(1,${TeirCount})
    mouse over    ${Dealer-HK_BuyerRelPage_Entry_MemberTeir_Dropdown_Options1}
    click element    (//dpp-hk-buyer-relationship-list//tbody//tr//td[4]//ng-select//ng-dropdown-panel//div[@role='option'])[${RandomTierIndex}]
    sleep    2

User should be able to check/uncheck active status in Dealer HK Buyer Relationship Page
    wait until element is visible    (//dpp-hk-buyer-relationship-list//tbody//tr//td[5]//input[@type='checkbox'])[${RandomEntryIndex}]    10
    capture element screenshot    (//dpp-hk-buyer-relationship-list//tbody//tr//td[5]//input[@type='checkbox'])[${RandomEntryIndex}]
    click element    (//dpp-hk-buyer-relationship-list//tbody//tr//td[5]//input[@type='checkbox'])[${RandomEntryIndex}]
    sleep    2

User should be able to click cancel button in Dealer HK Buyer Relationship Page
    wait until element is visible    ${Dealer-HK_BuyerRelPage_Entry_Cancel_Button}    10
    capture element screenshot    ${Dealer-HK_BuyerRelPage_Entry_Cancel_Button}
    click element    ${Dealer-HK_BuyerRelPage_Entry_Cancel_Button}
    sleep    2

User should be able to click update button in Dealer HK Buyer Relationship Page
    wait until element is visible    ${Dealer-HK_BuyerRelPage_Entry_Update_Button}    10
    capture element screenshot    ${Dealer-HK_BuyerRelPage_Entry_Update_Button}
    click element    ${Dealer-HK_BuyerRelPage_Entry_Update_Button}
    sleep    2

User should be able to click Yes in Dealer HK Buyer Relationship Page
    wait until element is visible    ${CustRelPageModal}    10
    wait until element is visible    ${CustRelPageModalYes}    10
    capture element screenshot    ${CustRelPageModal}
    capture element screenshot    ${CustRelPageModalYes}
    click element    ${CustRelPageModalYes}
    sleep    2

User should be able to click No in Dealer HK Buyer Relationship Page
    wait until element is visible    ${CustRelPageModal}    10
    wait until element is visible    ${CustRelPageModalNo}    10
    capture element screenshot    ${CustRelPageModal}
    capture element screenshot    ${CustRelPageModalNo}
    click element    ${CustRelPageModalNo}
    sleep    2
