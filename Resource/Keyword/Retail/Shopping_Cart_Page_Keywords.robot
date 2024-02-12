*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary

#Resource  ../../../Resource/testdata/config.robot
Resource  ../../../Resource/testdata/Retail/Retail_Variable.robot
Resource  ../../../Resource/testdata/credentials.robot


*** Keywords ***
User should be able to view shopping cart in Retail Shopping Cart Page
    ${ShoppingCartPageStatus}    run keyword and return status    wait until element is visible    ${Retail_ShoppingCartPageItemList}    10
    run keyword if    '${ShoppingCartPageStatus}' == 'True'    Shopping Cart with Items
    run keyword if    '${ShoppingCartPageStatus}' == 'False'    Empty Shopping Cart

User should be able to view shopping cart in HK Retail Shopping Cart Page
    ${ShoppingCartPageStatus}    run keyword and return status    wait until element is visible    ${Retail_ShoppingCartPageItemList}    10
    run keyword if    '${ShoppingCartPageStatus}' == 'True'    Shopping Cart with Items for HK
    run keyword if    '${ShoppingCartPageStatus}' == 'False'    Empty Shopping Cart

Empty Shopping Cart
    wait until element is visible    ${Retail_ShoppingCartPageHeader}    10
    wait until element is visible    ${Retail_ShoppingCartPageEmptyCart}    10

    capture element screenshot    ${Retail_ShoppingCartPageHeader}
    capture element screenshot    ${Retail_ShoppingCartPageEmptyCart}

    Log    Cart is Empty

    sleep    2

Shopping Cart with Items
    wait until element is visible    ${Retail_ShoppingCartPageHeader}    10
    wait until element is visible    ${Retail_ShoppingCartPageYourPriceToggle}    10
    wait until element is visible    ${Retail_ShoppingCartPageGSTToggle}    10
    wait until element is visible    ${Retail_ShoppingCartPageDescriptionLabel}    10
    wait until element is visible    ${Retail_ShoppingCartPagePriceLabel}    10
    wait until element is visible    ${Retail_ShoppingCartPageRRPLabel}    10
    wait until element is visible    ${Retail_ShoppingCartPageQtyLabel}    10
    wait until element is visible    ${Retail_ShoppingCartPageSaveCartButton}    10
    wait until element is visible    ${Retail_ShoppingCartPageItemList}    10

    capture element screenshot    ${Retail_ShoppingCartPageHeader}
    capture element screenshot    ${Retail_ShoppingCartPageYourPriceToggle}
    capture element screenshot    ${Retail_ShoppingCartPageGSTToggle}
    capture element screenshot    ${Retail_ShoppingCartPageDescriptionLabel}
    capture element screenshot    ${Retail_ShoppingCartPagePriceLabel}
    capture element screenshot    ${Retail_ShoppingCartPageRRPLabel}
    capture element screenshot    ${Retail_ShoppingCartPageQtyLabel}
    capture element screenshot    ${Retail_ShoppingCartPageSaveCartButton}
    capture element screenshot    ${Retail_ShoppingCartPageItemList}

    wait until element is visible    ${Retail_ShoppingCartPageOrderSummaryContainer}    10
    wait until element is visible    ${Retail_ShoppingCartPageOrderSummaryHeader}    10
    wait until element is visible    ${Retail_ShoppingCartPageOrderSummarySubTotalLable}    10
    wait until element is visible    ${Retail_ShoppingCartPageOrderSummaryGSTLabel}    10
    wait until element is visible    ${Retail_ShoppingCartPageOrderSummarySubTotalValueLabel}    10
    wait until element is visible    ${Retail_ShoppingCartPageOrderSummaryGSTValueLabel}    10
    wait until element is visible    ${Retail_ShoppingCartPageOrderSummaryOrderTotalLabel}    10
    wait until element is visible    ${Retail_ShoppingCartPageOrderSummaryOrderTotalValueLabel}    10
    wait until element is visible    ${Retail_ShoppingCartPageOrderSummaryRRPTotalLabel}    10
    wait until element is visible    ${Retail_ShoppingCartPageOrderSummaryCheckoutButton}    10
    wait until element is visible    ${Retail_ShoppingCartPageOrderSummaryContinueShoppingButton}    10

    capture element screenshot    ${Retail_ShoppingCartPageOrderSummaryContainer}
    capture element screenshot    ${Retail_ShoppingCartPageOrderSummaryHeader}
    capture element screenshot    ${Retail_ShoppingCartPageOrderSummarySubTotalLable}
    capture element screenshot    ${Retail_ShoppingCartPageOrderSummaryGSTLabel}
    capture element screenshot    ${Retail_ShoppingCartPageOrderSummarySubTotalValueLabel}
    capture element screenshot    ${Retail_ShoppingCartPageOrderSummaryGSTValueLabel}
    capture element screenshot    ${Retail_ShoppingCartPageOrderSummaryOrderTotalLabel}
    capture element screenshot    ${Retail_ShoppingCartPageOrderSummaryOrderTotalValueLabel}
    capture element screenshot    ${Retail_ShoppingCartPageOrderSummaryRRPTotalLabel}
    capture element screenshot    ${Retail_ShoppingCartPageOrderSummaryCheckoutButton}
    capture element screenshot    ${Retail_ShoppingCartPageOrderSummaryContinueShoppingButton}


Shopping Cart with Items for HK
    wait until element is visible    ${Retail_ShoppingCartPageHeader}    10
    wait until element is visible    ${Retail_ShoppingCartPageDescriptionLabel}    10
    wait until element is visible    ${Retail_ShoppingCartPagePriceLabel}    10
    wait until element is visible    ${Retail_ShoppingCartPageRRPLabel}    10
    wait until element is visible    ${Retail_ShoppingCartPageQtyLabel}    10
    wait until element is visible    ${Retail_ShoppingCartPageSaveCartButton}    10
    wait until element is visible    ${Retail_ShoppingCartPageItemList}    10

    capture element screenshot    ${Retail_ShoppingCartPageHeader}
    capture element screenshot    ${Retail_ShoppingCartPageDescriptionLabel}
    capture element screenshot    ${Retail_ShoppingCartPagePriceLabel}
    capture element screenshot    ${Retail_ShoppingCartPageRRPLabel}
    capture element screenshot    ${Retail_ShoppingCartPageQtyLabel}
    capture element screenshot    ${Retail_ShoppingCartPageSaveCartButton}
    capture element screenshot    ${Retail_ShoppingCartPageItemList}

    wait until element is visible    ${Retail_ShoppingCartPageOrderSummaryContainer}    10
    wait until element is visible    ${Retail_ShoppingCartPageOrderSummaryHeader}    10
    wait until element is visible    ${Retail_ShoppingCartPageOrderSummaryOrderTotalLabel}    10
    wait until element is visible    ${Retail_ShoppingCartPageOrderSummaryOrderTotalValueLabel}    10
    wait until element is visible    ${Retail_ShoppingCartPageOrderSummaryRRPTotalLabel}    10
    wait until element is visible    ${Retail_ShoppingCartPageOrderSummaryCheckoutButton}    10
    wait until element is visible    ${Retail_ShoppingCartPageOrderSummaryContinueShoppingButton}    10

    capture element screenshot    ${Retail_ShoppingCartPageOrderSummaryContainer}
    capture element screenshot    ${Retail_ShoppingCartPageOrderSummaryHeader}
    capture element screenshot    ${Retail_ShoppingCartPageOrderSummaryOrderTotalLabel}
    capture element screenshot    ${Retail_ShoppingCartPageOrderSummaryOrderTotalValueLabel}
    capture element screenshot    ${Retail_ShoppingCartPageOrderSummaryRRPTotalLabel}
    capture element screenshot    ${Retail_ShoppingCartPageOrderSummaryCheckoutButton}
    capture element screenshot    ${Retail_ShoppingCartPageOrderSummaryContinueShoppingButton}

User should be able to toggle on/off your price in Retail Shopping Cart Page
    wait until element is visible    ${Retail_ShoppingCartPageYourPriceToggle}    10
    capture element screenshot    ${Retail_ShoppingCartPageYourPriceToggle}
    click element    ${Retail_ShoppingCartPageYourPriceToggle}
    sleep    2

User should be able to toggle on/off GST in Retail Shopping Cart Page
    wait until element is visible    ${Retail_ShoppingCartPageGSTToggle}    10
    capture element screenshot    ${Retail_ShoppingCartPageGSTToggle}
    click element    ${Retail_ShoppingCartPageGSTToggle}
    sleep    2

User should be able to click save cart button in Retail Shopping Cart Page
    wait until element is visible    ${Retail_ShoppingCartPageSaveCartButton}    10
    capture element screenshot    ${Retail_ShoppingCartPageSaveCartButton}
    click element    ${Retail_ShoppingCartPageSaveCartButton}
    sleep    2

User should be able to click sold by seller button in Retail Shopping Cart Page
    wait until element is visible    ${Retail_ShoppingCartPageItemListSoldBySellerButton}    10
    capture element screenshot    ${Retail_ShoppingCartPageItemListSoldBySellerButton}
    click element    ${Retail_ShoppingCartPageItemListSoldBySellerButton}
    wait until element is visible    ${Retail_ShoppingCartPageItemListSoldBySellerContainer}    10
    capture page screenshot    ${Retail_ShoppingCartPageItemListSoldBySellerContainer}
    sleep    5
    mouse over    ${HomePageLogo}
    click element    ${HomePageLogo}
    sleep    2

User should be able to view 1 cart item in Retail Shopping Cart Page
    wait until element is visible    ${Retail_ShoppingCartPageItemList}    10
    ${ItemIndex}    get element count    ${Retail_ShoppingCartPageItemList}
    ${RandomItemIndex}    evaluate    random.randint(1,${ItemIndex})
    set global variable    ${RandomItemIndex}
    sleep    2

User should be able to click 1 product cart item in Retail Shopping Cart Page
    wait until element is visible    //dpp-cart-item-list//div[@class='cx-item-list-row'][${RandomItemIndex}]//div[@class='cx-info col-10']//div[@class='cx-name']    10
    scroll element into view    //dpp-cart-item-list//div[@class='cx-item-list-row'][${RandomItemIndex}]//div[@class='col-6 price-container']//div[@class='cx-quantity col-3']//button[@aria-label='Add one more']
    capture element screenshot    //dpp-cart-item-list//div[@class='cx-item-list-row'][${RandomItemIndex}]//div[@class='cx-info col-10']//div[@class='cx-name']
    click element    //dpp-cart-item-list//div[@class='cx-item-list-row'][${RandomItemIndex}]//div[@class='cx-info col-10']//div[@class='cx-name']
    sleep    2

User should be able to click add item qty in Retail Shopping Cart Page
    wait until element is visible    //dpp-cart-item-list//div[@class='cx-item-list-row'][${RandomItemIndex}]//div[@class='col-6 price-container']//div[@class='cx-quantity col-3']//button[@aria-label='Add one more']    10
    capture element screenshot    //dpp-cart-item-list//div[@class='cx-item-list-row'][${RandomItemIndex}]//div[@class='col-6 price-container']//div[@class='cx-quantity col-3']//button[@aria-label='Add one more']
    click element    //dpp-cart-item-list//div[@class='cx-item-list-row'][${RandomItemIndex}]//div[@class='col-6 price-container']//div[@class='cx-quantity col-3']//button[@aria-label='Add one more']
    sleep    2

User should be able to click remove item qty in Retail Shopping Cart Page
    wait until element is visible    //dpp-cart-item-list//div[@class='cx-item-list-row'][${RandomItemIndex}]//div[@class='col-6 price-container']//div[@class='cx-quantity col-3']//button[@aria-label='Remove one']    10
    capture element screenshot    //dpp-cart-item-list//div[@class='cx-item-list-row'][${RandomItemIndex}]//div[@class='col-6 price-container']//div[@class='cx-quantity col-3']//button[@aria-label='Remove one']
    click element    //dpp-cart-item-list//div[@class='cx-item-list-row'][${RandomItemIndex}]//div[@class='col-6 price-container']//div[@class='cx-quantity col-3']//button[@aria-label='Remove one']
    sleep    2

User should be able to input item qty in Retail Shopping Cart Page
    wait until element is visible    //dpp-cart-item-list//div[@class='cx-item-list-row'][${RandomItemIndex}]//div[@class='col-6 price-container']//div[@class='cx-quantity col-3']//input[@type='number']    10
    clear element text    //dpp-cart-item-list//div[@class='cx-item-list-row'][${RandomItemIndex}]//div[@class='col-6 price-container']//div[@class='cx-quantity col-3']//input[@type='number']
    input text    //dpp-cart-item-list//div[@class='cx-item-list-row'][${RandomItemIndex}]//div[@class='col-6 price-container']//div[@class='cx-quantity col-3']//input[@type='number']    ${Retail_ShoppingCartPageItemListQtyTextBoxValue}
    capture element screenshot    //dpp-cart-item-list//div[@class='cx-item-list-row'][${RandomItemIndex}]//div[@class='col-6 price-container']//div[@class='cx-quantity col-3']//input[@type='number']
    sleep    2

User should be able to click delete cart item button in Retail Shopping Cart Page
    ${DeleteItemCount}    get element count    ${Retail_ShoppingCartPageItemList}
    ${RandomDeleteItemIndex}    evaluate    random.randint(1,${DeleteItemCount})
    wait until element is visible    //dpp-cart-item-list//div[@class='cx-item-list-row'][${RandomDeleteItemIndex}]//div[@class='col-6 price-container']//div[@class='cx-quantity col-1 pl-4 cx-remove-btn']//button
    capture element screenshot    //dpp-cart-item-list//div[@class='cx-item-list-row'][${RandomDeleteItemIndex}]//div[@class='col-6 price-container']//div[@class='cx-quantity col-1 pl-4 cx-remove-btn']//button
    click element    //dpp-cart-item-list//div[@class='cx-item-list-row'][${RandomDeleteItemIndex}]//div[@class='col-6 price-container']//div[@class='cx-quantity col-1 pl-4 cx-remove-btn']//button
    sleep    2

User should be able to click continue shopping button in Retail Shopping Cart Page
    wait until element is visible    ${Retail_ShoppingCartPageOrderSummaryContinueShoppingButton}    10
    capture element screenshot    ${Retail_ShoppingCartPageOrderSummaryContinueShoppingButton}
    click element    ${Retail_ShoppingCartPageOrderSummaryContinueShoppingButton}
    sleep    2

User should be able to click checkout button in Retail Shopping Cart Page
    wait until element is visible    ${Retail_ShoppingCartPageOrderSummaryCheckoutButton}    10
    capture element screenshot    ${Retail_ShoppingCartPageOrderSummaryCheckoutButton}
    click element    ${Retail_ShoppingCartPageOrderSummaryCheckoutButton}
    sleep    2
