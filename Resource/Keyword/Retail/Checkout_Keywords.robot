*** Settings ***
Documentation    Suite description

Library    SeleniumLibrary
Library    String

#Resource    ../../../Resource/testdata/config.robot
Resource    ../../../Resource/testdata/Retail/Retail_Variable.robot
Resource    ../../../Resource/testdata/credentials.robot


*** Keywords ***
User should be able to view checkout in Retail Checkout Page
    wait until element is visible    ${Retail_CheckoutPageHeader}    10
    wait until element is visible    ${Retail_CheckoutPageYourPriceToggle}    10
    wait until element is visible    ${Retail_CheckoutCartPageGSTToggle}    10

    capture element screenshot    ${Retail_CheckoutPageHeader}
    capture element screenshot    ${Retail_CheckoutPageYourPriceToggle}
    capture element screenshot    ${Retail_CheckoutCartPageGSTToggle}

    wait until element is visible    ${Retail_CheckoutPageCustomerDetailsContainer}    10
    wait until element is visible    ${Retail_CheckoutPageCustomerDetailsMethodofPaymetLabel}    10
    wait until element is visible    ${Retail_CheckoutPageCustomerDetailsMethodofPaymetValue}    10
    wait until element is visible    ${Retail_CheckoutPageCustomerDetailsAccountNameLabel}    10
    wait until element is visible    ${Retail_CheckoutPageCustomerDetailsAccountNameValue}    10
    wait until element is visible    ${Retail_CheckoutPageCustomerDetailsSupplierLabel}    10
    wait until element is visible    ${Retail_CheckoutPageCustomerDetailsSupplierValue}    10

    capture element screenshot    ${Retail_CheckoutPageCustomerDetailsContainer}
    capture element screenshot    ${Retail_CheckoutPageCustomerDetailsMethodofPaymetLabel}
    capture element screenshot    ${Retail_CheckoutPageCustomerDetailsMethodofPaymetValue}
    capture element screenshot    ${Retail_CheckoutPageCustomerDetailsAccountNameLabel}
    capture element screenshot    ${Retail_CheckoutPageCustomerDetailsAccountNameValue}
    capture element screenshot    ${Retail_CheckoutPageCustomerDetailsSupplierLabel}
    capture element screenshot    ${Retail_CheckoutPageCustomerDetailsSupplierValue}


    wait until element is visible    ${Retail_CheckoutPageCustomerDetailsPONumberLabel}    10
    wait until element is visible    ${Retail_CheckoutPageCustomerDetailsPONumberInfoButton}    10
    wait until element is visible    ${Retail_CheckoutPageCustomerDetailsPONumberTextBox}    10
    wait until element is visible    ${Retail_CheckoutPageCustomerDetailsPONumberSaveButton}    10
    wait until element is visible    ${Retail_CheckoutPageCustomerDetailsPONumberResetButton}    10
    wait until element is visible    ${Retail_CheckoutPageCustomerDetailsShippingToLabel}    10
    wait until element is visible    ${Retail_CheckoutPageCustomerDetailsShippingToInfoButton}    10
    wait until element is visible    ${Retail_CheckoutPageCustomerDetailsShippingToNameLabel}    10
    wait until element is visible    ${Retail_CheckoutPageCustomerDetailsShippingToAddressLabel}    10

    capture element screenshot    ${Retail_CheckoutPageCustomerDetailsPONumberLabel}
    capture element screenshot    ${Retail_CheckoutPageCustomerDetailsPONumberInfoButton}
    capture element screenshot    ${Retail_CheckoutPageCustomerDetailsPONumberTextBox}
    capture element screenshot    ${Retail_CheckoutPageCustomerDetailsPONumberSaveButton}
    capture element screenshot    ${Retail_CheckoutPageCustomerDetailsPONumberResetButton}
    capture element screenshot    ${Retail_CheckoutPageCustomerDetailsShippingToLabel}
    capture element screenshot    ${Retail_CheckoutPageCustomerDetailsShippingToInfoButton}
    capture element screenshot    ${Retail_CheckoutPageCustomerDetailsShippingToNameLabel}
    capture element screenshot    ${Retail_CheckoutPageCustomerDetailsShippingToAddressLabel}

    wait until element is visible    ${Retail_CheckoutPageCustomerDetailsOrderItemList}    10
    capture element screenshot    ${Retail_CheckoutPageCustomerDetailsOrderItemList}

    wait until element is visible    ${Retail_CheckoutPageCustomerDetailsOrderSummaryContainer}    10
    wait until element is visible    ${Retail_CheckoutPageCustomerDetailsOrderSummaryHeader}    10
    wait until element is visible    ${Retail_CheckoutPageCustomerDetailsOrderSummarySubTotalLabel}    10
    wait until element is visible    ${Retail_CheckoutPageCustomerDetailsOrderSummarySubTotalValue}    10
    wait until element is visible    ${Retail_CheckoutPageCustomerDetailsOrderSummaryGTSLabel}    10
    wait until element is visible    ${Retail_CheckoutPageCustomerDetailsOrderSummaryGTSValue}    10
    wait until element is visible    ${Retail_CheckoutPageCustomerDetailsOrderSummaryOrderTotalLabel}    10
    wait until element is visible    ${Retail_CheckoutPageCustomerDetailsOrderSummaryOrderTotalValue}    10

    wait until element is visible    ${Retail_CheckoutPageCustomerDetailsOrderSummaryRRPTotal}    10

    wait until element is visible    ${Retail_CheckoutPageCustomerDetailsOrderSummaryPlaceOrderButton}    10
    wait until element is visible    ${Retail_CheckoutPageCustomerDetailsOrderSummaryBacktoCartButton}    10

    capture element screenshot    ${Retail_CheckoutPageCustomerDetailsOrderSummaryContainer}
    capture element screenshot    ${Retail_CheckoutPageCustomerDetailsOrderSummaryHeader}
    capture element screenshot    ${Retail_CheckoutPageCustomerDetailsOrderSummarySubTotalLabel}
    capture element screenshot    ${Retail_CheckoutPageCustomerDetailsOrderSummarySubTotalValue}
    capture element screenshot    ${Retail_CheckoutPageCustomerDetailsOrderSummaryGTSLabel}
    capture element screenshot    ${Retail_CheckoutPageCustomerDetailsOrderSummaryGTSValue}
    capture element screenshot    ${Retail_CheckoutPageCustomerDetailsOrderSummaryOrderTotalLabel}
    capture element screenshot    ${Retail_CheckoutPageCustomerDetailsOrderSummaryOrderTotalValue}

    capture element screenshot    ${Retail_CheckoutPageCustomerDetailsOrderSummaryRRPTotal}

    capture element screenshot    ${Retail_CheckoutPageCustomerDetailsOrderSummaryPlaceOrderButton}
    capture element screenshot    ${Retail_CheckoutPageCustomerDetailsOrderSummaryBacktoCartButton}

User should be able to view checkout in HK Retail Checkout Page
    wait until element is visible    ${Retail_CheckoutPageHeader}    10

    capture element screenshot    ${Retail_CheckoutPageHeader}

    wait until element is visible    ${Retail_HK_CheckoutPageReviewItemsContainer}    10
    wait until element is visible    ${Retail_HK_CheckoutPageReviewItemsHeader}    10
    wait until element is visible    ${Retail_HK_CheckoutPageReviewItemsDeliveryDate}    10
    ${DelData}    get text    ${Retail_HK_CheckoutPageReviewItemsDeliveryDate}
    ${RemoveStringDelDate}    remove string    ${DelData}    Delivery:
    Log    ${RemoveStringDelDate}
    wait until element is visible    ${Retail_HK_CheckoutPageReviewItemsList}    10

    capture element screenshot    ${Retail_HK_CheckoutPageReviewItemsContainer}
    capture element screenshot    ${Retail_HK_CheckoutPageReviewItemsHeader}
    capture element screenshot    ${Retail_HK_CheckoutPageReviewItemsDeliveryDate}
    capture element screenshot    ${Retail_HK_CheckoutPageReviewItemsDeliveryDate}
    capture element screenshot    ${Retail_HK_CheckoutPageReviewItemsList}

#    wait until element is visible    ${Retail_CheckoutPageCustomerDetailsOrderItemList}    10
#    capture element screenshot    ${Retail_CheckoutPageCustomerDetailsOrderItemList}

    wait until element is visible    ${Retail_CheckoutPageCustomerDetailsOrderSummaryContainer}    10
    wait until element is visible    ${Retail_CheckoutPageCustomerDetailsOrderSummaryHeader}    10
    wait until element is visible    ${Retail_CheckoutPageCustomerDetailsOrderSummarySubTotalLabel}    10
    wait until element is visible    ${Retail_CheckoutPageCustomerDetailsOrderSummarySubTotalValue}    10
    wait until element is visible    ${Retail_HK_CheckoutPageCustomerDetailsOrderSummaryShippingFeeLabel}    10
    wait until element is visible    ${Retail_HK_CheckoutPageCustomerDetailsOrderSummaryShippingFeeValue}    10
    wait until element is visible    ${Retail_CheckoutPageCustomerDetailsOrderSummaryOrderTotalLabel}    10
    wait until element is visible    ${Retail_CheckoutPageCustomerDetailsOrderSummaryOrderTotalValue}    10

    wait until element is visible    ${Retail_HK_CheckoutPageCustomerDetailsOrderSummaryContinuePaymentButton}    10
    wait until element is visible    ${Retail_HK_CheckoutPageCustomerDetailsOrderSummaryBacktoCartButton}    10

    capture element screenshot    ${Retail_CheckoutPageCustomerDetailsOrderSummaryContainer}
    capture element screenshot    ${Retail_CheckoutPageCustomerDetailsOrderSummaryHeader}
    capture element screenshot    ${Retail_CheckoutPageCustomerDetailsOrderSummarySubTotalLabel}
    capture element screenshot    ${Retail_CheckoutPageCustomerDetailsOrderSummarySubTotalValue}
    capture element screenshot    ${Retail_HK_CheckoutPageCustomerDetailsOrderSummaryShippingFeeLabel}
    capture element screenshot    ${Retail_HK_CheckoutPageCustomerDetailsOrderSummaryShippingFeeValue}
    capture element screenshot    ${Retail_CheckoutPageCustomerDetailsOrderSummaryOrderTotalLabel}
    capture element screenshot    ${Retail_CheckoutPageCustomerDetailsOrderSummaryOrderTotalValue}

    capture element screenshot    ${Retail_HK_CheckoutPageCustomerDetailsOrderSummaryContinuePaymentButton}
    capture element screenshot    ${Retail_CheckoutPageCustomerDetailsOrderSummaryBacktoCartButton}

    ${currentshippingfee}    get text    ${Retail_HK_CheckoutPageCustomerDetailsOrderSummaryShippingFeeValue}
    ${currentshippingvalue}    remove string    ${currentshippingfee}    $
    set global variable    ${currentshippingvalue}

User should be able to click po number info in Retail Checkout Page
    wait until element is visible    ${Retail_CheckoutPageCustomerDetailsPONumberInfoButton}    10
    capture element screenshot    ${Retail_CheckoutPageCustomerDetailsPONumberInfoButton}
    click element    ${Retail_CheckoutPageCustomerDetailsPONumberInfoButton}
    capture page screenshot
    sleep    1
    click element    ${Retail_CheckoutPageCustomerDetailsPONumberInfoButton}
    sleep    2

User should be able to edit valid po number in Retail Checkout Page
    wait until element is visible    ${Retail_CheckoutPageCustomerDetailsPONumberTextBox}    10
    clear element text    ${Retail_CheckoutPageCustomerDetailsPONumberTextBox}
    input text    ${Retail_CheckoutPageCustomerDetailsPONumberTextBox}    ${Retail_CheckoutPageCustomerDetailsPONumberTextBoxValid_Value}
    capture element screenshot    ${Retail_CheckoutPageCustomerDetailsPONumberGroup}
    clear element text    ${Retail_CheckoutPageCustomerDetailsPONumberTextBox}
    input text    ${Retail_CheckoutPageCustomerDetailsPONumberTextBox}    ${Retail_CheckoutPageCustomerDetailsPONumberTextBoxValid-Value}
    capture element screenshot    ${Retail_CheckoutPageCustomerDetailsPONumberGroup}
    clear element text    ${Retail_CheckoutPageCustomerDetailsPONumberTextBox}
    input text    ${Retail_CheckoutPageCustomerDetailsPONumberTextBox}    ${Retail_CheckoutPageCustomerDetailsPONumberTextBoxValidValue}
    capture element screenshot    ${Retail_CheckoutPageCustomerDetailsPONumberGroup}
    sleep    2

User should be able to edit invalid po number in Retail Checkout Page
    wait until element is visible    ${Retail_CheckoutPageCustomerDetailsPONumberTextBox}    10
    clear element text    ${Retail_CheckoutPageCustomerDetailsPONumberTextBox}
    input text    ${Retail_CheckoutPageCustomerDetailsPONumberTextBox}    ${Retail_CheckoutPageCustomerDetailsPONumberTextBoxInvalidAboveMaxValue}
    capture element screenshot    ${Retail_CheckoutPageCustomerDetailsPONumberGroup}
    clear element text    ${Retail_CheckoutPageCustomerDetailsPONumberTextBox}
    input text    ${Retail_CheckoutPageCustomerDetailsPONumberTextBox}    ${Retail_CheckoutPageCustomerDetailsPONumberTextBoxInvalidSpaceValue}
    capture element screenshot    ${Retail_CheckoutPageCustomerDetailsPONumberGroup}
    clear element text    ${Retail_CheckoutPageCustomerDetailsPONumberTextBox}
    input text    ${Retail_CheckoutPageCustomerDetailsPONumberTextBox}    ${Retail_CheckoutPageCustomerDetailsPONumberTextBoxInvalidOtherCharValue}
    capture element screenshot    ${Retail_CheckoutPageCustomerDetailsPONumberGroup}
    sleep    2

User should be able to click save po number in Retail Checkout Page
    wait until element is visible    ${Retail_CheckoutPageCustomerDetailsPONumberSaveButton}    10
    capture element screenshot    ${Retail_CheckoutPageCustomerDetailsPONumberSaveButton}
    click element    ${Retail_CheckoutPageCustomerDetailsPONumberSaveButton}
    sleep    2

User should be able to click reset po number in Retail Checkout Page
    wait until element is visible    ${Retail_CheckoutPageCustomerDetailsPONumberResetButton}    10
    capture element screenshot    ${Retail_CheckoutPageCustomerDetailsPONumberResetButton}
    click element    ${Retail_CheckoutPageCustomerDetailsPONumberResetButton}
    sleep    2

User should be able to click shipping info button in Retail Checkout Page
    wait until element is visible    ${Retail_CheckoutPageCustomerDetailsShippingToInfoButton}    10
    capture element screenshot    ${Retail_CheckoutPageCustomerDetailsShippingToInfoButton}
    click element    ${Retail_CheckoutPageCustomerDetailsShippingToInfoButton}
    capture page screenshot
    sleep    1
    click element    ${Retail_CheckoutPageCustomerDetailsShippingToInfoButton}
    sleep    2



User should be albe to Compare Shipping Fee in HK Retail Checkout Page
    wait until element is visible    ${Retail_CheckoutPageCustomerDetailsOrderSummaryContainer}    10
    ${changeshippingfee}    get text    ${Retail_HK_CheckoutPageCustomerDetailsOrderSummaryShippingFeeValue}
    ${changeshippingvalue}    remove string    $
    run keyword and continue on failure    should not be equal    ${changeshippingvalue}    ${currentshippingvalue}
    sleep    5

User should be able to view Shipping Details in HK Retail Checkout Page
    wait until element is visible    ${Retail_HK_CheckoutPageShippingAddressContainer}    10
    scroll element into view    ${Retail_HK_CheckoutPageShippingAddressContainer}
    capture element screenshot    ${Retail_HK_CheckoutPageShippingAddressContainer}

    wait until element is visible    ${Retail_HK_CheckoutPageShippingAddressHeader}    10
    wait until element is visible    ${Retail_HK_CheckoutPageShippingAddressBuyer}    10
    wait until element is visible    ${Retail_HK_CheckoutPageShippingAddress1}    10
    wait until element is visible    ${Retail_HK_CheckoutPageShippingAddress2}    10
    wait until element is visible    ${Retail_HK_CheckoutPageShippingAddressAddInstruction}    10
    wait until element is visible    ${Retail_HK_CheckoutPageShippingAddressChangeButton}    10

    capture element screenshot    ${Retail_HK_CheckoutPageShippingAddressHeader}
    capture element screenshot    ${Retail_HK_CheckoutPageShippingAddressBuyer}
    capture element screenshot    ${Retail_HK_CheckoutPageShippingAddress1}
    capture element screenshot    ${Retail_HK_CheckoutPageShippingAddress2}
    capture element screenshot    ${Retail_HK_CheckoutPageShippingAddressAddInstruction}
    capture element screenshot    ${Retail_HK_CheckoutPageShippingAddressChangeButton}

    sleep    2

User should be albe to Manage Instruction in HK Retail Checkout Page
    ${InstructionStatus}    run keyword and return status    wait until element is visible    ${Retail_ShoppingCartPageItemList}    10
    run keyword if    '${InstructionStatus}' == 'True'    User should be albe to click Add Instruction in HK Retail Checkout Page
    run keyword if    '${InstructionStatus}' == 'False'    User should be albe to click Edit Instruction in HK Retail Checkout Page

User should be albe to click Add Instruction in HK Retail Checkout Page
    wait until element is visible    ${Retail_HK_CheckoutPageShippingAddressAddInstruction}    10
    scroll element into view    ${Retail_HK_CheckoutPageShippingAddressAddInstruction}
    click element    ${Retail_HK_CheckoutPageShippingAddressAddInstruction}
    sleep    2

User should be albe to Add Instuction text in HK Retail Checkout Page
    wait until element is visible    ${Retail_HK_CheckoutPageShippingAddressAddInstructionTextBox}    10
    scroll element into view    ${Retail_HK_CheckoutPageShippingAddressAddInstructionTextBox}
    clear element text    ${Retail_HK_CheckoutPageShippingAddressAddInstructionTextBox}
    input text    ${Retail_HK_CheckoutPageShippingAddressAddInstructionTextBox}    ${Retail_HK_CheckoutPage_ShippingAddress_AddInstruction_TextBox_Value2}
    capture element screenshot    ${Retail_HK_CheckoutPageShippingAddressAddInstructionTextBox}
    sleep    2

User should be albe to click Cancel Instruction in HK Retail Checkout Page
    wait until element is visible    ${Retail_HK_CheckoutPageShippingAddressAddInstructionCancelButton}    10
    scroll element into view    ${Retail_HK_CheckoutPageShippingAddressAddInstructionCancelButton}
    capture element screenshot    ${Retail_HK_CheckoutPageShippingAddressAddInstructionCancelButton}
    click element    ${Retail_HK_CheckoutPageShippingAddressAddInstructionCancelButton}
    sleep    2

User should be albe to click Save Instruction in HK Retail Checkout Page
    wait until element is visible    ${Retail_HK_CheckoutPageShippingAddressAddInstructionSaveButton}    10
    scroll element into view    ${Retail_HK_CheckoutPageShippingAddressAddInstructionSaveButton}
    capture element screenshot    ${Retail_HK_CheckoutPageShippingAddressAddInstructionSaveButton}
    click element    ${Retail_HK_CheckoutPageShippingAddressAddInstructionSaveButton}
    sleep    2

User should be albe to click Edit Instruction in HK Retail Checkout Page
    wait until element is visible    ${Retail_HK_CheckoutPageShippingAddressAddInstructionEditButton}    10
    scroll element into view    ${Retail_HK_CheckoutPageShippingAddressAddInstructionEditButton}
    capture element screenshot    ${Retail_HK_CheckoutPageShippingAddressAddInstructionEditButton}
    click element    ${Retail_HK_CheckoutPageShippingAddressAddInstructionEditButton}
    sleep    2

User should be albe to click Delete Instruction in HK Retail Checkout Page
    wait until element is visible    ${Retail_HK_CheckoutPageShippingAddressAddInstructionDeleteButton}    10
    scroll element into view    ${Retail_HK_CheckoutPageShippingAddressAddInstructionDeleteButton}
    capture element screenshot    ${Retail_HK_CheckoutPageShippingAddressAddInstructionDeleteButton}
    click element    ${Retail_HK_CheckoutPageShippingAddressAddInstructionDeleteButton}
    sleep    2

User should be able to click Yes on Delete Instruction Pop Up in HK Retail Checkout Page
    wait until element is visible    ${Retail_HK_CheckoutPage_ShippingAddress_AddInstructionDelete_PopUp_Container}    10
    wait until element is visible    ${Retail_HK_CheckoutPage_ShippingAddress_AddInstructionDelete_PopUp_Yes_Button}    10
    capture element screenshot    ${Retail_HK_CheckoutPage_ShippingAddress_AddInstructionDelete_PopUp_Container}
    capture element screenshot    ${Retail_HK_CheckoutPage_ShippingAddress_AddInstructionDelete_PopUp_Yes_Button}
    click element    ${Retail_HK_CheckoutPage_ShippingAddress_AddInstructionDelete_PopUp_Yes_Button}
    sleep    2

User should be able to click No on Delete Instruction Pop Up in HK Retail Checkout Page
    wait until element is visible    ${Retail_HK_CheckoutPage_ShippingAddress_AddInstructionDelete_PopUp_Container}    10
    wait until element is visible    ${Retail_HK_CheckoutPage_ShippingAddress_AddInstructionDelete_PopUp_No_Button}    10
    capture element screenshot    ${Retail_HK_CheckoutPage_ShippingAddress_AddInstructionDelete_PopUp_Container}
    capture element screenshot    ${Retail_HK_CheckoutPage_ShippingAddress_AddInstructionDelete_PopUp_No_Button}
    click element    ${Retail_HK_CheckoutPage_ShippingAddress_AddInstructionDelete_PopUp_No_Button}
    sleep    2


User should be albe to click Change Address in HK Retail Checkout Page
    wait until element is visible    ${Retail_HK_CheckoutPageShippingAddressChangeButton}    10
    capture element screenshot    ${Retail_HK_CheckoutPageShippingAddressChangeButton}
    click element    ${Retail_HK_CheckoutPageShippingAddressChangeButton}
    sleep    2

User should be able to view Change Shipping Address Modal in HK Retail Checkout Page
    wait until element is visible    ${Retail_HK_CheckoutPageShippingAddressChangePopUpContainer}    10
    capture element screenshot    ${Retail_HK_CheckoutPageShippingAddressChangePopUpContainer}

    scroll element into view    ${Retail_HK_CheckoutPageShippingAddressChangePopUpFirstNameLabel}
    wait until element is visible    ${Retail_HK_CheckoutPageShippingAddressChangePopUpFirstNameLabel}    10
    wait until element is visible    ${Retail_HK_CheckoutPageShippingAddressChangePopUpLastNameLabel}    10
    wait until element is visible    ${Retail_HK_CheckoutPageShippingAddressChangePopUpEmailAddressLabel}    10
    wait until element is visible    ${Retail_HK_CheckoutPageShippingAddressChangePopUpMobileNumberLabel}    10
    wait until element is visible    ${Retail_HK_CheckoutPageShippingAddressChangePopUpLandlineNumberLabel}    10
    wait until element is visible    ${Retail_HK_CheckoutPageShippingAddressChangePopUpAddressLine1Label}    10
    wait until element is visible    ${Retail_HK_CheckoutPageShippingAddressChangePopUpAddressLine2Label}    10
    wait until element is visible    ${Retail_HK_CheckoutPageShippingAddressChangePopUpAreaLabel}    10
    wait until element is visible    ${Retail_HK_CheckoutPageShippingAddressChangePopUpDistrictLabel}    10
    wait until element is visible    ${Retail_HK_CheckoutPageShippingAddressChangePopUpDeliveryInstructionsLabel}    10
    wait until element is visible    ${Retail_HK_CheckoutPageShippingAddressChangePopUpFirstNameTextBox}    10
    wait until element is visible    ${Retail_HK_CheckoutPageShippingAddressChangePopUpLastNameTextBox}    10
    wait until element is visible    ${Retail_HK_CheckoutPageShippingAddressChangePopUpEmailAddressTextBox}    10
    wait until element is visible    ${Retail_HK_CheckoutPageShippingAddressChangePopUpMobileNumberTextBox}    10
    wait until element is visible    ${Retail_HK_CheckoutPageShippingAddressChangePopUpLandlineNumberTextBox}    10
    wait until element is visible    ${Retail_HK_CheckoutPageShippingAddressChangePopUpAddressLine1TextBox}    10
    wait until element is visible    ${Retail_HK_CheckoutPageShippingAddressChangePopUpAddressLine2TextBox}    10
    wait until element is visible    ${Retail_HK_CheckoutPageShippingAddressChangePopUpDeliveryInstructionsTextBox}    10
    wait until element is visible    ${Retail_HK_CheckoutPageShippingAddressChangePopUpAreaComboBox}    10
    wait until element is visible    ${Retail_HK_CheckoutPageShippingAddressChangePopUpDistrictComboBox}    10
    scroll element into view    ${Retail_HK_CheckoutPageShippingAddressChangePopUpCancelButton}
    wait until element is visible    ${Retail_HK_CheckoutPageShippingAddressChangePopUpCancelButton}    10
    wait until element is visible    ${Retail_HK_CheckoutPageShippingAddressChangePopUpSaveButton}    10

    scroll element into view    ${Retail_HK_CheckoutPageShippingAddressChangePopUpFirstNameLabel}
    capture element screenshot    ${Retail_HK_CheckoutPageShippingAddressChangePopUpFirstNameLabel}
    capture element screenshot    ${Retail_HK_CheckoutPageShippingAddressChangePopUpLastNameLabel}
    capture element screenshot    ${Retail_HK_CheckoutPageShippingAddressChangePopUpEmailAddressLabel}
    capture element screenshot    ${Retail_HK_CheckoutPageShippingAddressChangePopUpMobileNumberLabel}
    capture element screenshot    ${Retail_HK_CheckoutPageShippingAddressChangePopUpLandlineNumberLabel}
    capture element screenshot    ${Retail_HK_CheckoutPageShippingAddressChangePopUpAddressLine1Label}
    capture element screenshot    ${Retail_HK_CheckoutPageShippingAddressChangePopUpAddressLine2Label}
    capture element screenshot    ${Retail_HK_CheckoutPageShippingAddressChangePopUpAreaLabel}
    capture element screenshot    ${Retail_HK_CheckoutPageShippingAddressChangePopUpDistrictLabel}
    capture element screenshot    ${Retail_HK_CheckoutPageShippingAddressChangePopUpDeliveryInstructionsLabel}
    capture element screenshot    ${Retail_HK_CheckoutPageShippingAddressChangePopUpFirstNameTextBox}
    capture element screenshot    ${Retail_HK_CheckoutPageShippingAddressChangePopUpLastNameTextBox}
    capture element screenshot    ${Retail_HK_CheckoutPageShippingAddressChangePopUpEmailAddressTextBox}
    capture element screenshot    ${Retail_HK_CheckoutPageShippingAddressChangePopUpMobileNumberTextBox}
    capture element screenshot    ${Retail_HK_CheckoutPageShippingAddressChangePopUpLandlineNumberTextBox}
    capture element screenshot    ${Retail_HK_CheckoutPageShippingAddressChangePopUpAddressLine1TextBox}
    capture element screenshot    ${Retail_HK_CheckoutPageShippingAddressChangePopUpAddressLine2TextBox}
    capture element screenshot    ${Retail_HK_CheckoutPageShippingAddressChangePopUpDeliveryInstructionsTextBox}
    capture element screenshot    ${Retail_HK_CheckoutPageShippingAddressChangePopUpAreaComboBox}
    capture element screenshot    ${Retail_HK_CheckoutPageShippingAddressChangePopUpDistrictComboBox}
    scroll element into view    ${Retail_HK_CheckoutPageShippingAddressChangePopUpCancelButton}
    capture element screenshot    ${Retail_HK_CheckoutPageShippingAddressChangePopUpCancelButton}
    capture element screenshot    ${Retail_HK_CheckoutPageShippingAddressChangePopUpSaveButton}

    sleep    2

User should be able to change Mobile Number on change shipping in HK Retail Checkout Page
    wait until element is visible    ${Retail_HK_CheckoutPageShippingAddressChangePopUpMobileNumberTextBox}    10
    clear element text    ${Retail_HK_CheckoutPageShippingAddressChangePopUpMobileNumberTextBox}
    input text    ${Retail_HK_CheckoutPageShippingAddressChangePopUpMobileNumberTextBox}    ${Retail_HK_Registration_MobileNumber_Value}
    capture element screenshot    ${Retail_HK_CheckoutPageShippingAddressChangePopUpMobileNumberTextBox}
    sleep    2

User should be able to change Landline Number on change shipping in HK Retail Checkout Page
    wait until element is visible    ${Retail_HK_CheckoutPageShippingAddressChangePopUpLandlineNumberTextBox}    10
    clear element text    ${Retail_HK_CheckoutPageShippingAddressChangePopUpLandlineNumberTextBox}
    input text    ${Retail_HK_CheckoutPageShippingAddressChangePopUpLandlineNumberTextBox}    ${Retail_HK_Registration_LandlineNumber_Value}
    capture element screenshot    ${Retail_HK_CheckoutPageShippingAddressChangePopUpLandlineNumberTextBox}
    sleep    2

User should be able to edit shipping address on change shipping in HK Retail Checkout Page
    wait until element is visible    ${Retail_HK_CheckoutPageShippingAddressChangePopUpAddressLine1TextBox}    10
    scroll element into view    ${Retail_HK_CheckoutPageShippingAddressChangePopUpAddressLine1TextBox}
    click element    ${Retail_HK_CheckoutPageShippingAddressChangePopUpAddressLine1TextBox}
    clear element text    ${Retail_HK_CheckoutPageShippingAddressChangePopUpAddressLine1TextBox}
    input text    ${Retail_HK_CheckoutPageShippingAddressChangePopUpAddressLine1TextBox}    ${Retail_HK_RegistrationPostalAddLine1Value}
    capture element screenshot    ${Retail_HK_CheckoutPageShippingAddressChangePopUpAddressLine1TextBox}
    sleep    2

User should be able to clear shipping address on shipping in HK Retail Checkout Page
    wait until element is visible    ${Retail_HK_CheckoutPageShippingAddressChangePopUpAddressLine1TextBox_Clear_Button}    10
    capture element screenshot    ${Retail_HK_CheckoutPageShippingAddressChangePopUpAddressLine1TextBox_Clear_Button}
    click element    ${Retail_HK_CheckoutPageShippingAddressChangePopUpAddressLine1TextBox_Clear_Button}
    sleep    2

User should be able to edit manual shipping address on change shipping in HK Retail Checkout Page
    wait until element is visible    ${Retail_HK_CheckoutPageShippingAddressChangePopUpAddressLine1TextBox}    10
    scroll element into view    ${Retail_HK_CheckoutPageShippingAddressChangePopUpAddressLine1TextBox}
    click element    ${Retail_HK_CheckoutPageShippingAddressChangePopUpAddressLine1TextBox}
    clear element text    ${Retail_HK_CheckoutPageShippingAddressChangePopUpAddressLine1TextBox}
    input text    ${Retail_HK_CheckoutPageShippingAddressChangePopUpAddressLine1TextBox}    ${Retail_HK_RegistrationManualPostalAddLine1Value}
    capture element screenshot    ${Retail_HK_CheckoutPageShippingAddressChangePopUpAddressLine1TextBox}
    sleep    2

User should be able to click manual shipping address on change shipping in HK Retail Checkout Page
    wait until element is visible    ${Retail_HK_CheckoutPage_ShippingAddress_ChangePopUp_AddressLine1_Manual_Options}    10
    capture element screenshot    ${Retail_HK_CheckoutPage_ShippingAddress_ChangePopUp_AddressLine1_Manual_Options}
    click element    ${Retail_HK_CheckoutPage_ShippingAddress_ChangePopUp_AddressLine1_Manual_Options}
    sleep    2

User should be able to select Random Address from suggestions in HK Retail Checkout Page
    wait until element is visible    ${Retail_HK_CheckoutPage_ShippingAddress_ChangePopUp_AddressLine1_Suggest_Options}    10
    ${AddressCount}    get element count    ${Retail_HK_CheckoutPage_ShippingAddress_ChangePopUp_AddressLine1_Suggest_Options}
    ${AddressRanIndex}    evaluate    random.randint(1,${AddressCount})
    mouse over    ${Retail_HK_CheckoutPage_ShippingAddress_ChangePopUp_AddressLine1_Suggest_Options}
    scroll element into view    (//dpp-autocomplete-search//ng-dropdown-panel//div//div[@role='option'])[${AddressRanIndex}]
    capture element screenshot    (//dpp-autocomplete-search//ng-dropdown-panel//div//div[@role='option'])[${AddressRanIndex}]
    click element    (//dpp-autocomplete-search//ng-dropdown-panel//div//div[@role='option'])[${AddressRanIndex}]
    sleep    2

User should be able to click Area Dropdown on change shipping in HK Retail Checkout Page
    wait until element is visible    ${Retail_HK_CheckoutPageShippingAddressChangePopUpAreaComboBox}    10
    capture element screenshot    ${Retail_HK_CheckoutPageShippingAddressChangePopUpAreaComboBox}
    click element    ${Retail_HK_CheckoutPageShippingAddressChangePopUpAreaComboBox}
    sleep    2

User should be able to select Random Area on change shipping in HK Retail Checkout Page
    wait until element is visible    ${Retail_HK_CheckoutPage_ShippingAddress_ChangePopUp_Area_ComboBox_Options}    10
    ${AreaCount}    get element count    ${Retail_HK_CheckoutPage_ShippingAddress_ChangePopUp_Area_ComboBox_Options}
    ${AreaRanIndex}    evaluate    random.randint(1,${AreaCount})
    mouse over    ${Retail_HK_CheckoutPage_ShippingAddress_ChangePopUp_Area_ComboBox_Options}
    scroll element into view    (//label[contains(text(),'Area') or contains(text(),'地區')]/following-sibling::ng-select//ng-dropdown-panel//div[@role='option'])[${AreaRanIndex}]
    capture element screenshot    (//label[contains(text(),'Area') or contains(text(),'地區')]/following-sibling::ng-select//ng-dropdown-panel//div[@role='option'])[${AreaRanIndex}]
    click element    (//label[contains(text(),'Area') or contains(text(),'地區')]/following-sibling::ng-select//ng-dropdown-panel//div[@role='option'])[${AreaRanIndex}]
    sleep    2

User should be able to click District Dropdown on change shipping in HK Retail Checkout Page
    wait until element is visible    ${Retail_HK_CheckoutPageShippingAddressChangePopUpDistrictComboBox}    10
    capture element screenshot    ${Retail_HK_CheckoutPageShippingAddressChangePopUpDistrictComboBox}
    click element    ${Retail_HK_CheckoutPageShippingAddressChangePopUpDistrictComboBox}
    sleep    2

User should be able to select Random District on change shipping in HK Retail Checkout Page
    wait until element is visible    ${Retail_HK_CheckoutPage_ShippingAddress_ChangePopUp_District_ComboBox_Options}    10
    ${DistrictCount}    get element count    ${Retail_HK_CheckoutPage_ShippingAddress_ChangePopUp_District_ComboBox_Options}
    ${DistrictRanIndex}    evaluate    random.randint(1,${DistrictCount})
    mouse over    ${Retail_HK_CheckoutPage_ShippingAddress_ChangePopUp_District_ComboBox_Options}
    scroll element into view    (//label[contains(text(),'District') or contains(text(),'區')]/following-sibling::ng-select//ng-dropdown-panel//div[@role='option'])[${DistrictRanIndex}]
    capture element screenshot    (//label[contains(text(),'District') or contains(text(),'區')]/following-sibling::ng-select//ng-dropdown-panel//div[@role='option'])[${DistrictRanIndex}]
    click element    (//label[contains(text(),'District') or contains(text(),'區')]/following-sibling::ng-select//ng-dropdown-panel//div[@role='option'])[${DistrictRanIndex}]
    sleep    2

User should be able to click Save Button on change shipping in HK Retail Checkout Page
    wait until element is visible    ${Retail_HK_CheckoutPageShippingAddressChangePopUpSaveButton}    10
    scroll element into view    ${Retail_HK_CheckoutPageShippingAddressChangePopUpSaveButton}
    capture element screenshot    ${Retail_HK_CheckoutPageShippingAddressChangePopUpSaveButton}
    click element    ${Retail_HK_CheckoutPageShippingAddressChangePopUpSaveButton}
    sleep    5

User should be able to click Cancel Button on change shipping in HK Retail Checkout Page
    wait until element is visible    ${Retail_HK_CheckoutPageShippingAddressChangePopUpCancelButton}    10
    scroll element into view    ${Retail_HK_CheckoutPageShippingAddressChangePopUpCancelButton}
    capture element screenshot    ${Retail_HK_CheckoutPageShippingAddressChangePopUpCancelButton}
    click element    ${Retail_HK_CheckoutPageShippingAddressChangePopUpCancelButton}
    sleep    2

User should be able to click back to cart button in Retail Checkout Page
    wait until element is visible    ${Retail_CheckoutPageCustomerDetailsOrderSummaryBacktoCartButton}    10
    capture element screenshot    ${Retail_CheckoutPageCustomerDetailsOrderSummaryBacktoCartButton}
    click element    ${Retail_CheckoutPageCustomerDetailsOrderSummaryBacktoCartButton}
    sleep    2

User should be able to click place order button in Retail Checkout Page
    wait until element is visible    ${Retail_CheckoutPageCustomerDetailsOrderSummaryPlaceOrderButton}    10
    capture element screenshot    ${Retail_CheckoutPageCustomerDetailsOrderSummaryPlaceOrderButton}
    click element    ${Retail_CheckoutPageCustomerDetailsOrderSummaryPlaceOrderButton}
    wait until element is visible    ${Retail_CheckoutPageCustomerDetailsOrderSummaryPlaceOrderDisabledButton}    10
    capture element screenshot    ${Retail_CheckoutPageCustomerDetailsOrderSummaryPlaceOrderDisabledButton}
    sleep    20







User should be able to click place order button in HK Retail Checkout Page
    wait until element is visible    ${Retail_CheckoutPageCustomerDetailsOrderSummaryPlaceOrderButton}    10
    capture element screenshot    ${Retail_CheckoutPageCustomerDetailsOrderSummaryPlaceOrderButton}
    click element    ${Retail_CheckoutPageCustomerDetailsOrderSummaryPlaceOrderButton}
    sleep    20

User should be able to view place order in Retail Place Order Page
    wait until element is visible    ${Retail_PlaceOrderPageContainer}    10
    wait until element is visible    ${Retail_PlaceOrderPageCofirmationMessage}    10

    wait until element is visible    ${Retail_PlaceOrderPageCofirmationDetailsContainer}    10

    wait until element is visible    ${Retail_PlaceOrderPageCofirmationDetailsPartsRefLabel}    10
    wait until element is visible    ${Retail_PlaceOrderPageCofirmationDetailsPartsRefValue}    10
    wait until element is visible    ${Retail_PlaceOrderPageCofirmationDetailsPONumerLabel}    10
    wait until element is visible    ${Retail_PlaceOrderPageCofirmationDetailsPONumerValue}    10
    wait until element is visible    ${Retail_PlaceOrderPageCofirmationDetailsSupplierRefLabel}    10
    wait until element is visible    ${Retail_PlaceOrderPageCofirmationDetailsSupplierRefValue}    10
    wait until element is visible    ${Retail_PlaceOrderPageCofirmationDetailsSupplierLabel}    10
    wait until element is visible    ${Retail_PlaceOrderPageCofirmationDetailsSupplierValue}    10
    wait until element is visible    ${Retail_PlaceOrderPageCofirmationDetailsQtyLabel}    10
    wait until element is visible    ${Retail_PlaceOrderPageCofirmationDetailsQtyValue}    10
    wait until element is visible    ${Retail_PlaceOrderPageCofirmationDetailsOrderDateLabel}    10
    wait until element is visible    ${Retail_PlaceOrderPageCofirmationDetailsOrderDateValue}    10
    wait until element is visible    ${Retail_PlaceOrderPageCofirmationDetailsTotalLabel}    10
    wait until element is visible    ${Retail_PlaceOrderPageCofirmationDetailsTotalValue}    10

    wait until element is visible    ${Retail_PlaceOrderPageBacktoHomeButton}    10
    wait until element is visible    ${Retail_PlaceOrderPageViewOrderButton}    10

    capture element screenshot    ${Retail_PlaceOrderPageContainer}
    capture element screenshot    ${Retail_PlaceOrderPageCofirmationMessage}

    capture element screenshot    ${Retail_PlaceOrderPageCofirmationDetailsContainer}

    capture element screenshot    ${Retail_PlaceOrderPageCofirmationDetailsPartsRefLabel}
    capture element screenshot    ${Retail_PlaceOrderPageCofirmationDetailsPartsRefValue}
    capture element screenshot    ${Retail_PlaceOrderPageCofirmationDetailsPONumerLabel}
    capture element screenshot    ${Retail_PlaceOrderPageCofirmationDetailsPONumerValue}
    capture element screenshot    ${Retail_PlaceOrderPageCofirmationDetailsSupplierRefLabel}
    capture element screenshot    ${Retail_PlaceOrderPageCofirmationDetailsSupplierRefValue}
    capture element screenshot    ${Retail_PlaceOrderPageCofirmationDetailsSupplierLabel}
    capture element screenshot    ${Retail_PlaceOrderPageCofirmationDetailsSupplierValue}
    capture element screenshot    ${Retail_PlaceOrderPageCofirmationDetailsQtyLabel}
    capture element screenshot    ${Retail_PlaceOrderPageCofirmationDetailsQtyValue}
    capture element screenshot    ${Retail_PlaceOrderPageCofirmationDetailsOrderDateLabel}
    capture element screenshot    ${Retail_PlaceOrderPageCofirmationDetailsOrderDateValue}
    capture element screenshot    ${Retail_PlaceOrderPageCofirmationDetailsTotalLabel}
    capture element screenshot    ${Retail_PlaceOrderPageCofirmationDetailsTotalValue}

    capture element screenshot    ${Retail_PlaceOrderPageBacktoHomeButton}
    capture element screenshot    ${Retail_PlaceOrderPageViewOrderButton}

User should be able to click back to home button in Retail Place Order Page
    wait until element is visible    ${Retail_PlaceOrderPageBacktoHomeButton}    10
    capture element screenshot    ${Retail_PlaceOrderPageBacktoHomeButton}
    click element    ${Retail_PlaceOrderPageBacktoHomeButton}
    sleep    2

User should be able to click view order button in Retail Place Order Page
    wait until element is visible    ${Retail_PlaceOrderPageViewOrderButton}    10
    capture element screenshot    ${Retail_PlaceOrderPageViewOrderButton}
    click element    ${Retail_PlaceOrderPageViewOrderButton}
    sleep    2

User should be able to view payment method in HK Retail Checkout Page
    wait until element is visible    ${Retail_HK_CheckoutPagePaymentMethodHeader}    10
    scroll element into view    ${Retail_HK_CheckoutPagePaymentMethodHeader}
    sleep    2

User should be albe to select COD Payment
    wait until element is visible    ${Retail_HK_CheckoutPage_PaymentMethod_COD_Label}    10
    wait until element is visible    ${Retail_HK_CheckoutPage_PaymentMethod_COD_RadioButton}    10
    capture element screenshot    ${Retail_HK_CheckoutPage_PaymentMethod_COD_RadioButton}
    capture element screenshot    ${Retail_HK_CheckoutPage_PaymentMethod_COD_Label}
    click element    ${Retail_HK_CheckoutPage_PaymentMethod_COD_RadioButton}
    sleep    2

User should be albe to select Credit Cart Payment
    wait until element is visible    ${Retail_HK_CheckoutPage_PaymentMethod_Credit_Label}    10
    wait until element is visible    ${Retail_HK_CheckoutPage_PaymentMethod_Credit_RadioButton}    10
    capture element screenshot    ${Retail_HK_CheckoutPage_PaymentMethod_Credit_RadioButton}
    capture element screenshot    ${Retail_HK_CheckoutPage_PaymentMethod_Credit_Label}
    click element    ${Retail_HK_CheckoutPage_PaymentMethod_Credit_RadioButton}
    sleep    2

Select Credit Card Frame
    select frame    ${Retail_HK_CheckoutPagePaymentMethodFrame}
    sleep    2

Unselect Credit Card Frame
    unselect frame
    sleep    2

User should be able to input visa card number
    wait until element is visible    ${Retail_HK_CheckoutPagePaymentMethodFrameCardNumberTextBox}    10
    clear element text    ${Retail_HK_CheckoutPagePaymentMethodFrameCardNumberTextBox}
    input text    ${Retail_HK_CheckoutPagePaymentMethodFrameCardNumberTextBox}    ${Retail_HK_CheckoutPagePaymentMethodFrameCardNumberValueVisa}
    wait until element is visible    ${Retail_HK_CheckoutPagePaymentMethodFrameCardNumberValueVisaLogo}    10
    capture element screenshot    ${Retail_HK_CheckoutPagePaymentMethodFrameCardNumberTextBox}
    sleep    2

User should be able to input master card number
    wait until element is visible    ${Retail_HK_CheckoutPagePaymentMethodFrameCardNumberTextBox}    10
    clear element text    ${Retail_HK_CheckoutPagePaymentMethodFrameCardNumberTextBox}
    input text    ${Retail_HK_CheckoutPagePaymentMethodFrameCardNumberTextBox}    ${Retail_HK_CheckoutPagePaymentMethodFrameCardNumberValueMaster}
    wait until element is visible    ${Retail_HK_CheckoutPagePaymentMethodFrameCardNumberValueMasterLogo}    10
    capture element screenshot    ${Retail_HK_CheckoutPagePaymentMethodFrameCardNumberTextBox}
    sleep    2

User should be able to input jcb card number
    wait until element is visible    ${Retail_HK_CheckoutPagePaymentMethodFrameCardNumberTextBox}    10
    clear element text    ${Retail_HK_CheckoutPagePaymentMethodFrameCardNumberTextBox}
    input text    ${Retail_HK_CheckoutPagePaymentMethodFrameCardNumberTextBox}    ${Retail_HK_CheckoutPagePaymentMethodFrameCardNumberValueJCB}
    wait until element is visible    ${Retail_HK_CheckoutPagePaymentMethodFrameCardNumberValueJCBLogo}    10
    capture element screenshot    ${Retail_HK_CheckoutPagePaymentMethodFrameCardNumberTextBox}
    sleep    2

User should be able to input discover card number
    wait until element is visible    ${Retail_HK_CheckoutPagePaymentMethodFrameCardNumberTextBox}    10
    clear element text    ${Retail_HK_CheckoutPagePaymentMethodFrameCardNumberTextBox}
    input text    ${Retail_HK_CheckoutPagePaymentMethodFrameCardNumberTextBox}    ${Retail_HK_CheckoutPagePaymentMethodFrameCardNumberValueDiscover}
    wait until element is visible    ${Retail_HK_CheckoutPagePaymentMethodFrameCardNumberValueDiscoverLogo}    10
    capture element screenshot    ${Retail_HK_CheckoutPagePaymentMethodFrameCardNumberTextBox}
    sleep    2

User should be able to input diners card number
    wait until element is visible    ${Retail_HK_CheckoutPagePaymentMethodFrameCardNumberTextBox}    10
    clear element text    ${Retail_HK_CheckoutPagePaymentMethodFrameCardNumberTextBox}
    input text    ${Retail_HK_CheckoutPagePaymentMethodFrameCardNumberTextBox}    ${Retail_HK_CheckoutPagePaymentMethodFrameCardNumberValueDiners}
    wait until element is visible    ${Retail_HK_CheckoutPagePaymentMethodFrameCardNumberValueDinersLogo}    10
    capture element screenshot    ${Retail_HK_CheckoutPagePaymentMethodFrameCardNumberTextBox}
    sleep    2

User should be albe to input Exp Date
    wait until element is visible    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_ExpDate_Label}    10
    wait until element is visible    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_ExpDate_TextBox}    10
    clear element text    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_ExpDate_TextBox}
    input text    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_ExpDate_TextBox}    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_ExpDate_Value}
    capture element screenshot    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_ExpDate_Container}
    sleep    2

User should be albe to input CVV
    wait until element is visible    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_CVV_Label}    10
    wait until element is visible    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_CVV_TextBox}    10
    clear element text    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_CVV_TextBox}
    input text    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_CVV_TextBox}    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_CVV_Value}
    capture element screenshot    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_CVV_TextBox}
    sleep    2

User should be albe to input Card Holders Name
    wait until element is visible    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_CardHolderName_Label}    10
    wait until element is visible    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_CardHolderName_TextBox}    10
    clear element text    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_CardHolderName_TextBox}
    input text    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_CardHolderName_TextBox}    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_CardHolderName_Value}
    capture element screenshot    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_CardHolderName_TextBox}
    sleep    2

User should be albe to input Email
    wait until element is visible    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_Email_Label}    10
    wait until element is visible    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_Email_TextBox}    10
    clear element text    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_Email_TextBox}
    input text    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_Email_TextBox}    ${Username}
    capture element screenshot    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_Email_TextBox}
    sleep    2

User should be able to click cancel button
    wait until element is visible    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_Cancel_Button}    10
    capture element screenshot    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_Cancel_Button}
    click element    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_Cancel_Button}
    sleep    10

User should be able to click continue payment button
    wait until element is visible    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_ContinuePayment_Button}    10
    capture element screenshot    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_ContinuePayment_Button}
    click element    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_ContinuePayment_Button}
    sleep    10

User should be able to view 2C2P Modal
    wait until element is visible    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_Container}    10
    wait until element is visible    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_VerifyOTP_Label}    10
    wait until element is visible    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_MerchantName_Label}    10
    wait until element is visible    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_MerchantName_Value}    10
    wait until element is visible    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_Ammount_Label}    10
    wait until element is visible    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_Amount_Value}    10
    wait until element is visible    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_TransactionDate_Label}    10
    wait until element is visible    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_TransactionDate_Value}    10
    wait until element is visible    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_CardNumber_Label}    10
    wait until element is visible    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_CardNumber_Value}    10
    wait until element is visible    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_OTP_TextBox}    10
    wait until element is visible    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_Resend_Button}    10
    wait until element is visible    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_Cancel_Button}    10
    wait until element is visible    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_Submit_Button}    10

    capture element screenshot    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_Container}
    capture element screenshot    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_VerifyOTP_Label}
    capture element screenshot    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_MerchantName_Label}
    capture element screenshot    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_MerchantName_Value}
    capture element screenshot    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_Ammount_Label}
    capture element screenshot    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_Amount_Value}
    capture element screenshot    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_TransactionDate_Label}
    capture element screenshot    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_TransactionDate_Value}
    capture element screenshot    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_CardNumber_Label}
    capture element screenshot    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_CardNumber_Value}
    capture element screenshot    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_OTP_TextBox}
    capture element screenshot    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_Resend_Button}
    capture element screenshot    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_Cancel_Button}
    capture element screenshot    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_Submit_Button}
    sleep    2

User should be able to Input OTP
    wait until element is visible    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_OTP_TextBox}    10
    clear element text    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_OTP_TextBox}
    input text    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_OTP_TextBox}    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_OTP_Value}
    capture element screenshot    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_OTP_TextBox}
    sleep    2

User should be able to click resend otp on 2C2P
    wait until element is visible    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_Resend_Button}    10
    capture element screenshot    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_Resend_Button}
    click element    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_Resend_Button}
    sleep    2

User should be able to click Cancel button on 2C2P
    wait until element is visible    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_Cancel_Button}    10
    capture element screenshot    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_Cancel_Button}
    click element    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_Cancel_Button}
    sleep    2

User should be able to click Submit button on 2C2P
    wait until element is visible    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_Submit_Button}     10
    capture element screenshot    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_Submit_Button}
    click element    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_Submit_Button}
    sleep    2

User should be able to view 2C2P Confirmation
    wait until element is visible    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_ConfirmationPage_Container}    20
    wait until element is visible    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_ConfirmationPage_BackToMerchant_Button}    20
    capture element screenshot    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_ConfirmationPage_Container}
    capture element screenshot    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_ConfirmationPage_BackToMerchant_Button}
    sleep    10

User should be able to view success transaction
    wait until element is visible    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_ConfirmationPage_SuccessTransaction}    20
    wait until element is visible    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_ConfirmationPage_TransactionNumber}    10
    wait until element is not visible    ${Retail_Loader}    20
    capture element screenshot    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_ConfirmationPage_SuccessTransaction}
    capture element screenshot    ${Retail_HK_CheckoutPage_PaymentMethod_Frame_2C2P_ConfirmationPage_TransactionNumber}
    sleep    2

User should be able to view place order in HK Retail Place Order Page
    wait until element is visible    ${Retail_PlaceOrderPageCofirmationMessage}    10
    wait until element is visible    ${Retail_PlaceOrderPageCofirmationDetailsContainer}    10
    wait until element is visible    ${Retail_HK_PlaceOrderPage_CofirmationDetails_PartsRef_Label}    10
    wait until element is visible    ${Retail_HK_PlaceOrderPage_CofirmationDetails_PartsRef_Value}    10
    wait until element is visible    ${Retail_HK_PlaceOrderPage_CofirmationDetails_OrderDate_Label}    10
    wait until element is visible    ${Retail_HK_PlaceOrderPage_CofirmationDetails_OrderDate_Value}    10
    wait until element is visible    ${Retail_HK_PlaceOrderPage_CofirmationDetails_EstDelDate_Label}    10
    wait until element is visible    ${Retail_HK_PlaceOrderPage_CofirmationDetails_EstDelDate_Value}    10
#    wait until element is visible    ${Retail_HK_PlaceOrderPage_CofirmationDetails_PONumer_Label}    10
#    wait until element is visible    ${Retail_HK_PlaceOrderPage_CofirmationDetails_PONumer_Value}    10
    wait until element is visible    ${Retail_PlaceOrderPageBacktoHomeButton}    10
    wait until element is visible    ${Retail_PlaceOrderPageViewOrderButton}    10

    capture element screenshot    ${Retail_PlaceOrderPageCofirmationMessage}
    capture element screenshot    ${Retail_PlaceOrderPageCofirmationDetailsContainer}
    capture element screenshot    ${Retail_HK_PlaceOrderPage_CofirmationDetails_PartsRef_Label}
    capture element screenshot    ${Retail_HK_PlaceOrderPage_CofirmationDetails_PartsRef_Value}
    capture element screenshot    ${Retail_HK_PlaceOrderPage_CofirmationDetails_OrderDate_Label}
    capture element screenshot    ${Retail_HK_PlaceOrderPage_CofirmationDetails_OrderDate_Value}
    capture element screenshot    ${Retail_HK_PlaceOrderPage_CofirmationDetails_EstDelDate_Label}
    capture element screenshot    ${Retail_HK_PlaceOrderPage_CofirmationDetails_EstDelDate_Value}
#    capture element screenshot    ${Retail_HK_PlaceOrderPage_CofirmationDetails_PONumer_Label}
#    capture element screenshot    ${Retail_HK_PlaceOrderPage_CofirmationDetails_PONumer_Value}
    capture element screenshot    ${Retail_PlaceOrderPageBacktoHomeButton}
    capture element screenshot    ${Retail_PlaceOrderPageViewOrderButton}

    sleep    2

User should be able to view Promo Code in HK Retail Checkout Page
    wait until element is visible    ${Retail_HK_CheckoutPage_PromoCode_Container}    10
    wait until element is visible    ${Retail_HK_CheckoutPage_PromoCode_Label}    10
    wait until element is visible    ${Retail_HK_CheckoutPage_PromoCode_TextBox}    10
    wait until element is visible    ${Retail_HK_CheckoutPage_PromoCode_Apply_Button}    10

    capture element screenshot    ${Retail_HK_CheckoutPage_PromoCode_Container}
    capture element screenshot    ${Retail_HK_CheckoutPage_PromoCode_Label}
    capture element screenshot    ${Retail_HK_CheckoutPage_PromoCode_TextBox}
    capture element screenshot    ${Retail_HK_CheckoutPage_PromoCode_Apply_Button}
    sleep    2

User should be able to input Promo Code in HK Retail Checkout Page
    wait until element is visible    ${Retail_HK_CheckoutPage_PromoCode_TextBox}    10
    input text    ${Retail_HK_CheckoutPage_PromoCode_TextBox}    ${Retail_HK_CheckoutPage_PromoCode_Value}
    capture element screenshot    ${Retail_HK_CheckoutPage_PromoCode_TextBox}
    click element    ${Retail_HK_CheckoutPage_PromoCode_Apply_Button}
    sleep    5
    capture element screenshot    ${Retail_HK_CheckoutPage_PromoCode_Container}
    sleep    2

User should be able to remove Promo Code in HK Retail Checkout Page
    scroll element into view    ${FooterLogo}
    wait until element is visible    ${Retail_HK_CheckoutPage_PromoCode_Remove_Button}    10
    capture element screenshot    ${Retail_HK_CheckoutPage_PromoCode_Remove_Button}
    click element    ${Retail_HK_CheckoutPage_PromoCode_Remove_Button}
    sleep    5

Get Promo code used
    wait until element is visible    ${Retail_HK_CheckoutPage_PromoCode_Code}    10
    ${PromoCode}    get text    ${Retail_HK_CheckoutPage_PromoCode_Code}
    log to console    ${PromoCode}
    log    ${PromoCode}


User should be able to check Promo Code in HK Retail Checkout Page
    ${100DiscountMin}    set variable    2000
    ${100DiscountMax}    set variable    3999.9
    ${200DiscountMin}    set variable    4000
    ${200DiscountMax}    set variable    5999.9
    ${300DiscountMin}    set variable    6000

    ${SubtotalText}    get text    ${Retail_CheckoutPageCustomerDetailsOrderSummarySubTotalValue}
    ${ShippingFeeText}    get text    ${Retail_HK_CheckoutPageCustomerDetailsOrderSummaryShippingFeeValue}
    ${DiscountText}    get text    ${Retail_HK_CheckoutPage_CustomerDetails_OrderSummary_Discounnt_Value}
    ${OrderTotalText}    get text    ${Retail_CheckoutPageCustomerDetailsOrderSummaryOrderTotalValue}

#    ${SubtotalString}    convert to string    ${SubtotalText}
#    ${ShippingString}    convert to string    ${ShippingFeeText}
#    ${DiscountString}    convert to string    ${DiscountText}
#    ${OrderTotalString}    convert to string    ${OrderTotalText}

    ${RemoveSubTotalString}    remove string    ${SubtotalText}    $    ,
    ${RemoveShippingString}    remove string   ${ShippingFeeText}    Free    $    ,    FREE
    ${RemoveDiscountString}    remove string    ${DiscountText}    $    ,
    ${RemoveOrderTotalString}    remove string    ${OrderTotalText}    $    ,
    set global variable    ${RemoveDiscountString}

    ${RemoveShippingString}    run keyword if    '${RemoveShippingString}' == ''    set variable    0    ELSE    set variable    ${RemoveShippingString}

    ${SubTotal}    convert to number    ${RemoveSubTotalString}
    ${Shipping}    convert to number    ${RemoveShippingString}
    ${Discount}    convert to number    ${RemoveDiscountString}
    ${OrderTotal}  convert to number    ${RemoveOrderTotalString}
    set global variable    ${OrderTotal}

    ${SubTotalPrice}    evaluate    ${RemoveSubTotalString}+${RemoveShippingString}
    ${OrderTotalPrice}    evaluate    ${SubTotalPrice}-${RemoveDiscountString}
    set global variable    ${OrderTotalPrice}

    run keyword if    ${RemoveSubTotalString} < ${100DiscountMin}    Invalid Promo Code
    run keyword if    ${RemoveSubTotalString} > ${100DiscountMin} and ${RemoveSubTotalString} < ${100DiscountMax}    Set Discount to 100
    run keyword if    ${RemoveSubTotalString} > ${200DiscountMin} and ${RemoveSubTotalString} < ${200DiscountMax}    Set Discount to 200
    run keyword if    ${RemoveSubTotalString} > ${300DiscountMin}    Set Discount to 300
    run keyword if    ${RemoveSubTotalString} > ${100DiscountMin}    Compare Promo Code


Set Discount to 100
    ${DiscountValue}  set variable    ${100}
    set global variable    ${DiscountValue}

Set Discount to 200
    ${DiscountValue}  set variable    ${200}
    set global variable    ${DiscountValue}

Set Discount to 300
    ${DiscountValue}  set variable    ${300}
    set global variable    ${DiscountValue}

Invalid Promo Code
    log to console    Invalid Promo code or Below Min Ammount
    log    Invalid Promo code or Below Min Ammount

Compare Promo Code
    run keyword and continue on failure    should be equal    ${OrderTotal}    ${OrderTotalPrice}
    run keyword and continue on failure    should be equal    ${DiscountValue}    ${RemoveDiscountString}

#####sample