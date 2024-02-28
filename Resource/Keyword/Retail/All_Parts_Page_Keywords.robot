*** Settings ***
Documentation    Suite description

Library    SeleniumLibrary
Library    String
Library    ExcelLibrary

#Resource  ../../../Resource/testdata/config.robot
Resource  ../../../Resource/testdata/Retail/Retail_Variable.robot
Resource  ../../../Resource/testdata/Retail/Retail_Resource.robot
Resource  ../../../Resource/testdata/credentials.robot


*** Keywords ***
User should be able to view All Parts Page
    wait until element is visible    ${HomePageAllCategory}    10
    click element    ${HomePageAllCategory}
    wait until element is visible    ${AllProdPageLabelFilter}    10
    wait until element is visible    ${AllProdPagePanelHeader}    10
    capture page screenshot
    sleep    2

User should be able to filter product name from A to Z
    wait until element is visible    ${AllProdPageSortProdDropdown}    10
    scroll element into view    ${AllProdPageLabelFilter}
    capture element screenshot    ${AllProdPageSortProdDropdown}
    click element    ${AllProdPageSortProdDropdown}
    wait until element is visible    ${AllProdPageSortProdDropdownAtoZ}    10
    capture element screenshot    ${AllProdPageSortProdDropdownAtoZ}
    click element    ${AllProdPageSortProdDropdownAtoZ}
    sleep    3
    capture page screenshot
    sleep    5

User should be able to fitler results per page to 100
    wait until element is visible    ${AllProdPageResultPerPageDropDown}    20
    scroll element into view    ${AllProdPageResultPerPageDropDown}
    capture element screenshot    ${AllProdPageResultPerPageDropDown}
    click element    ${AllProdPageResultPerPageDropDown}
    wait until element is visible    ${AllProdPageResultPerPageDropDown100}    10
    capture element screenshot    ${AllProdPageResultPerPageDropDown100}
    click element    ${AllProdPageResultPerPageDropDown100}
    sleep    5

User should be able to Filter Products by Stocks
    wait until element is visible    ${AllProdPageInStockCheckBoxContainer}    10
    scroll element into view    ${AllProdPageInStockCheckBoxContainer}
    click element    ${AllProdPageInStockCheckBox}
    sleep    5

User should be able to view product In Stock and DC Stock
    FOR    ${Nextpage}    IN RANGE    1    500
    ${InStockDCStockStatus}    run keyword and return status    element should be visible    ${ProductSelectionInStockDCStockContainer}
    run keyword if    '${InStockDCStockStatus}' == 'False'    User should be able to click next page
    exit for loop if    '${InStockDCStockStatus}' == 'True'
    END
    scroll element into view    ${ProductSelectionInStockDCStockContainer}
    wait until element is visible    ${ProductSelectionInStockDCStockContainer}    10
    capture element screenshot    ${ProductSelectionInStockDCStockContainer}
    sleep    2

User should be able to view product Out of Stock and DC Stock
    FOR    ${Nextpage}    IN RANGE    1    500
    ${OutofStockDCStockStatus}    run keyword and return status    element should be visible    ${ProductSelectionOutofStockDCStockContainer}
    run keyword if    '${OutofStockDCStockStatus}' == 'False'    User should be able to click next page
    exit for loop if    '${OutofStockDCStockStatus}' == 'True'
    END
    scroll element into view    ${ProductSelectionOutofStockDCStockContainer}
    wait until element is visible    ${ProductSelectionOutofStockDCStockContainer}    10
    capture element screenshot    ${ProductSelectionOutofStockDCStockContainer}
    sleep    2

User should be able to view product In Stock Only
    FOR    ${Nextpage}    IN RANGE    1    500
    ${InStockOnlyStatus}    run keyword and return status    element should be visible    ${ProductSelectionInStockOnlyContainer}
    run keyword if    '${InStockOnlyStatus}' == 'False'    User should be able to click next page
    exit for loop if    '${InStockOnlyStatus}' == 'True'
    END
    scroll element into view    ${ProductSelectionInStockOnlyContainer}
    wait until element is visible    ${ProductSelectionInStockOnlyContainer}    10
    capture element screenshot    ${ProductSelectionInStockOnlyContainer}
    sleep    2

User should be able to view product In Stock Only in HK Retail Products Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${InStockOnlyStatus}    run keyword and return status    element should be visible    ${ProductSelectionInStockOnlyContainer}
    run keyword if    '${InStockOnlyStatus}' == 'False'    User should be able to click load more button in HK Retail Product Page
    exit for loop if    '${InStockOnlyStatus}' == 'True'
    END
    scroll element into view    ${ProductSelectionInStockOnlyContainer}
    wait until element is visible    ${ProductSelectionInStockOnlyContainer}    10
    capture element screenshot    ${ProductSelectionInStockOnlyContainer}
    sleep    2

User should be able to view product Out of Stock
    FOR    ${Nextpage}    IN RANGE    1    500
    ${OutofStockStatus}    run keyword and return status    element should be visible    ${ProductSelectionOutofStockContainer}
    run keyword if    '${OutofStockStatus}' == 'False'    User should be able to click next page
    exit for loop if    '${OutofStockStatus}' == 'True'
    END
    scroll element into view    ${ProductSelectionOutofStockContainer}
    wait until element is visible    ${ProductSelectionOutofStockContainer}    10
    capture element screenshot    ${ProductSelectionOutofStockContainer}
    sleep    2

User should be able to view product Out of Stock in HK Retail Products Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${OutofStockStatus}    run keyword and return status    element should be visible    ${ProductSelectionOutofStockContainer}
    run keyword if    '${OutofStockStatus}' == 'False'    User should be able to click load more button in HK Retail Product Page
    exit for loop if    '${OutofStockStatus}' == 'True'
    END
    scroll element into view    ${ProductSelectionOutofStockContainer}
    wait until element is visible    ${ProductSelectionOutofStockContainer}    10
    capture element screenshot    ${ProductSelectionOutofStockContainer}
    sleep    2

User should be able to view product Price not Available
    FOR    ${Nextpage}    IN RANGE    1    500
    ${NoPriceStatus}    run keyword and return status    element should be visible    ${ProductSelectionNoPriceContainer}
    run keyword if    '${NoPriceStatus}' == 'False'    User should be able to click next page
    exit for loop if    '${NoPriceStatus}' == 'True'
    END
    scroll element into view    ${ProductSelectionNoPriceContainer}
    wait until element is visible    ${ProductSelectionNoPriceContainer}    10
    capture element screenshot    ${ProductSelectionNoPriceContainer}
    sleep    2

User should be able to view product Price not Available HK
    FOR    ${Nextpage}    IN RANGE    1    500
    ${NoPriceStatus}    run keyword and return status    element should be visible    ${ProductSelectionNoPriceContainer}
    run keyword if    '${NoPriceStatus}' == 'False'    User should be able to click load more button in HK Retail Product Page
    exit for loop if    '${NoPriceStatus}' == 'True'
    END
    scroll element into view    ${ProductSelectionNoPriceContainer}
    wait until element is visible    ${ProductSelectionNoPriceContainer}    10
    capture element screenshot    ${ProductSelectionNoPriceContainer}
    sleep    2

User should be able to click product details In Stock and DC Stock
    wait until element is visible    ${ProductSelectionInStockDCStockProductNameContainer}    10
    click element    ${ProductSelectionInStockDCStockProductNameContainer}
    wait until element is visible    ${ProductDeatilsPageProductName}    10
    capture page screenshot
    sleep    2

User should be able to click product details Out of Stock and DC Stock
    wait until element is visible    ${ProductSelectionOutofStockDCStockProductNameContainer}    10
    click element    ${ProductSelectionOutofStockDCStockProductNameContainer}
    wait until element is visible    ${ProductDeatilsPageProductName}    10
    capture page screenshot
    sleep    2

User should be able to click product details In Stock Only
    wait until element is visible    ${ProductSelectionInStockOnlyProductNameContainer}    10
    click element    ${ProductSelectionInStockOnlyProductNameContainer}
    wait until element is visible    ${ProductDeatilsPageProductName}    10
    capture page screenshot
    sleep    2

User should be able to click product details Out of Stock
    wait until element is visible    ${ProductSelectionOutofStockProductNameContainer}    10
    click element    ${ProductSelectionOutofStockProductNameContainer}
    wait until element is visible    ${ProductDeatilsPageProductName}    10
    capture page screenshot
    sleep    2

User should be able to click product details Price not Available
    wait until element is visible    ${ProductSelectionNoPriceProductNameContainer}    10
    click element    ${ProductSelectionNoPriceProductNameContainer}
    wait until element is visible    ${ProductDeatilsPageProductName}    10
    capture page screenshot
    sleep    2

User should be able to view product details In Stock and DC Stock
    wait until element is visible    ${ProductDeatilsPageProductImage}    10
    wait until element is visible    ${ProductDeatilsPageProductName}    10
    wait until element is visible    ${ProductDeatilsPageProductPartNum}    10
    wait until element is visible    ${ProductDeatilsPageProductPrice}    10
    wait until element is visible    ${ProductDeatilsPageProductPriceRRP}    10
    wait until element is visible    ${ProductDeatilsPageProductInStock}    10
    wait until element is visible    ${ProductDeatilsPageProductDCStock}    10
    wait until element is visible    ${ProductDeatilsPageProductAddtoCartButton}    10
    wait until element is visible    ${ProductDeatilsPageProductYourPriceToggle}    10
    wait until element is visible    ${ProductDeatilsPageProductGSTToggle}    10

    capture page screenshot

User should be able to view product details Out of Stock and DC Stock
    wait until element is visible    ${ProductDeatilsPageProductImage}    10
    wait until element is visible    ${ProductDeatilsPageProductName}    10
    wait until element is visible    ${ProductDeatilsPageProductPartNum}    10
    wait until element is visible    ${ProductDeatilsPageProductPrice}    10
    wait until element is visible    ${ProductDeatilsPageProductPriceRRP}    10
    wait until element is visible    ${ProductDeatilsPageProductOutofStock}    10
    wait until element is visible    ${ProductDeatilsPageProductDCStock}    10
    wait until element is visible    ${ProductDeatilsPageProductAddtoCartButton}    10
    wait until element is visible    ${ProductDeatilsPageProductYourPriceToggle}    10
    wait until element is visible    ${ProductDeatilsPageProductGSTToggle}    10

    capture page screenshot

User should be able to view product details Out of Stock
    wait until element is visible    ${ProductDeatilsPageProductImage}    10
    wait until element is visible    ${ProductDeatilsPageProductName}    10
    wait until element is visible    ${ProductDeatilsPageProductPartNum}    10
    wait until element is visible    ${ProductDeatilsPageProductPrice}    10
    wait until element is visible    ${ProductDeatilsPageProductPriceRRP}    10
    wait until element is visible    ${ProductDeatilsPageProductOutofStock}    10
    wait until element is visible    ${ProductDeatilsPageProductEnqNowButton}    10
    wait until element is visible    ${ProductDeatilsPageProductAddtoCartButtonDisabled}    10
    wait until element is visible    ${ProductDeatilsPageProductYourPriceToggle}    10
    wait until element is visible    ${ProductDeatilsPageProductGSTToggle}    10

    capture page screenshot

User should be able to view product details Out of Stock in HK Product Page
    wait until element is visible    ${ProductDeatilsPageProductImage}    10
    wait until element is visible    ${ProductDeatilsPageProductName}    10
    wait until element is visible    ${ProductDeatilsPageProductPartNum}    10
    wait until element is visible    ${ProductDeatilsPageProductPrice}    10
    wait until element is visible    ${ProductDeatilsPageProductOutofStock}    10
    wait until element is visible    ${ProductDeatilsPageProductEnqNowButton}    10
    wait until element is visible    ${ProductDeatilsPageProductAddtoCartButtonDisabled}    10

    capture page screenshot

User should be able to view product details In Stock Only
    wait until element is visible    ${ProductDeatilsPageProductImage}    10
    wait until element is visible    ${ProductDeatilsPageProductName}    10
    wait until element is visible    ${ProductDeatilsPageProductPartNum}    10
    wait until element is visible    ${ProductDeatilsPageProductPrice}    10
    wait until element is visible    ${ProductDeatilsPageProductPriceRRP}    10
    wait until element is visible    ${ProductDeatilsPageProductInStock}    10
    wait until element is visible    ${ProductDeatilsPageProductAddtoCartButton}    10
    wait until element is visible    ${ProductDeatilsPageProductYourPriceToggle}    10
    wait until element is visible    ${ProductDeatilsPageProductGSTToggle}    10

    capture page screenshot

User should be able to view product details In Stock Only in HK Product Page
    wait until element is visible    ${ProductDeatilsPageProductImage}    10
    wait until element is visible    ${ProductDeatilsPageProductName}    10
    wait until element is visible    ${ProductDeatilsPageProductPartNum}    10
    wait until element is visible    ${ProductDeatilsPageProductPrice}    10
    wait until element is visible    ${ProductDeatilsPageProductInStock}    10
    wait until element is visible    ${ProductDeatilsPageProductAddtoCartButton}    10

    capture page screenshot

User should be able to view product details Price not Available
    wait until element is visible    ${ProductDeatilsPageProductImage}    10
    wait until element is visible    ${ProductDeatilsPageProductName}    10
    wait until element is visible    ${ProductDeatilsPageProductPartNum}    10
    wait until element is visible    ${ProductDeatilsPageProductNoPrice}    10
    wait until element is visible    ${ProductDeatilsPageProductEnqNowButton}    10
    wait until element is visible    ${ProductDeatilsPageProductYourPriceToggleDisabled}    10
    wait until element is visible    ${ProductDeatilsPageProductGSTToggleDisabled}    10

    capture page screenshot


User should be able to click add to cart button in Retail Products Details Page
    wait until element is visible    ${ProductDeatilsPageProductAddtoCartButton}    10
    capture element screenshot    ${ProductDeatilsPageProductAddtoCartButton}
    click element    ${ProductDeatilsPageProductAddtoCartButton}
    sleep    2

User should be able to click enquire now button in Retail Products Details Page
    wait until element is visible    ${ProductDeatilsPageProductEnqNowButton}    10
    capture element screenshot    ${ProductDeatilsPageProductEnqNowButton}
    click element    ${ProductDeatilsPageProductEnqNowButton}
    sleep    2


User should be able to count the number of products Stock
    ${TotalProductCount}    set variable    0
    ${TotalInstockDCStockCount}    set variable    0
    ${TotalInstockOnlyCount}    set variable    0
    ${TotalOutofStockDCStockCount}    set variable    0
    ${TotalNoPriceCount}    set variable    0
    ${TotalOutofStockCount}    set variable    0
    FOR    ${Nextpage}    IN RANGE    1    500
      ${InstockDCStockCount}    get element count    ${ProductSelectionInStockDCStock}
      sleep    1
      ${InstockOnlyCount}    get element count    ${ProductSelectionInStockOnly}
      sleep    1
      ${OutofStockDCStockCount}    get element count    ${ProductSelectionOutofStockDCStock}
      sleep    1
      ${NoPriceCount}    get element count    ${ProductSelectionNoPrice}
      sleep    1
#      ${OutofStockCount}    get element count    ${ProductSelectionOutofStock}
#      sleep    1
      log    ${InstockDCStockCount}
      log    ${InstockOnlyCount}
      log    ${OutofStockDCStockCount}
      log    ${NoPriceCount}

      ${TotalInstockDCStockCount}    evaluate    ${TotalInstockDCStockCount}+${InstockDCStockCount}
      ${TotalInstockOnlyCount}    evaluate    ${TotalInstockOnlyCount}+${InstockOnlyCount}
      ${TotalOutofStockDCStockCount}    evaluate    ${TotalOutofStockDCStockCount}+${OutofStockDCStockCount}
      ${TotalNoPriceCount}    evaluate    ${TotalNoPriceCount}+${NoPriceCount}
#      ${TotalOutofStockCount}    evaluate    ${TotalOutofStockCount}+${OutofStockCount}
      log    ${TotalInstockDCStockCount}
      log    ${TotalInstockOnlyCount}
      log    ${TotalOutofStockDCStockCount}
      log    ${TotalNoPriceCount}

      ${TotalProductCount}    evaluate    ${TotalInstockDCStockCount}+${TotalInstockOnlyCount}+${TotalOutofStockDCStockCount}+${TotalNoPriceCount}
      Log    ${TotalProductCount}
      log to console
      ${pagestatus}    run keyword and return status    element should be visible    ${AllProdPageDetailsNextPageButtonDisabled}
      run keyword if    '${pagestatus}' == 'False'    User should be able to click next page
      exit for loop if    '${pagestatus}' == 'True'
    END


User should be able to click add car in Retail Products Page
    wait until element is visible    ${AllProdPageAddCar/ChangeCarButton}    10
    capture element screenshot    ${AllProdPageAddCar/ChangeCarButton}
    click element    ${AllProdPageAddCar/ChangeCarButton}
    sleep    2

User should be able to click change car in Retail Products Page
    wait until element is visible    ${AllProdPageAddCar/ChangeCarButton}    10
    capture element screenshot    ${AllProdPageAddCar/ChangeCarButton}
    click element    ${AllProdPageAddCar/ChangeCarButton}
    sleep    2

User should be able to breakdown L1 product filter in Retail All Products Page
    ${RandomBreakdownList1}    get element count    ${AllProdPageProdFilterList1stBreakdownIcon}
    ${RandomBreakdownListIndex1}    evaluate    random.randint(1,${RandomBreakdownList1})
    wait until element is visible    (//dpp-product-facet-navigation//ul[@class='facets-container']//ul//li//div[@class='d-flex justify-content-between align-items-center']//cx-icon)[${RandomBreakdownListIndex1}]    10
    scroll element into view    (//dpp-product-facet-navigation//ul[@class='facets-container']//ul//li//div[@class='d-flex justify-content-between align-items-center']//cx-icon)[${RandomBreakdownListIndex1}]
    click element    (//dpp-product-facet-navigation//ul[@class='facets-container']//ul//li//div[@class='d-flex justify-content-between align-items-center']//cx-icon)[${RandomBreakdownListIndex1}]
#    wait until element is visible    ${AllProdPageProdFilterList1stBreakdown}    10
#    capture element screenshot    ${AllProdPageProdFilterList1stBreakdown}
#    click element    ${AllProdPageProdFilterList1stBreakdown}
    sleep    2

User should be able to breakdown L2 product filter in Retail All Products Page
    ${RandomBreakdownList2}    get element count    ${AllProdPageProdFilterList2ndBreakdownIcon}
    ${RandomBreakdownListIndex2}    evaluate    random.randint(1,${RandomBreakdownList2})
    wait until element is visible    (//dpp-product-facet-navigation//ul[@class='facets-container']//ul//li[@class='expanded']//ul//li//div[@class='d-flex justify-content-between']//cx-icon)[${RandomBreakdownListIndex2}]    10
    scroll element into view    (//dpp-product-facet-navigation//ul[@class='facets-container']//ul//li[@class='expanded']//ul//li//div[@class='d-flex justify-content-between']//cx-icon)[${RandomBreakdownListIndex2}]
    click element    (//dpp-product-facet-navigation//ul[@class='facets-container']//ul//li[@class='expanded']//ul//li//div[@class='d-flex justify-content-between']//cx-icon)[${RandomBreakdownListIndex2}]
    set global variable    ${RandomBreakdownListIndex2}
#    wait until element is visible    ${AllProdPageProdFilterList2ndBreakdown}    10
#    capture element screenshot    ${AllProdPageProdFilterList2ndBreakdown}
#    click element    ${AllProdPageProdFilterList2ndBreakdown}
    sleep    2

User should be able to breakdown L3 product filter in Retail All Products Page
    ${RandomBreakdownList3}    get element count    ${AllProdPageProdFilterList3rdBreakdown}
    set global variable    ${RandomBreakdownList3}
    run keyword if    ${RandomBreakdownList3} > 0    Breakdown L3 product filter in Retail All Products Page
    run keyword if    ${RandomBreakdownList3} == 0    click element    (//dpp-product-facet-navigation//ul[@class='facets-container']//ul//li[@class='expanded']//ul//li//div[@class='d-flex justify-content-between']//div)[${RandomBreakdownListIndex2}]
    sleep    5

Breakdown L3 product filter in Retail All Products Page
    ${RandomBreakdownListIndex3}    evaluate    random.randint(1,${RandomBreakdownList3})
    wait until element is visible    (//dpp-product-facet-navigation//ul[@class='facets-container']//ul//li[@class='expanded']//ul//ul//li//div[@class='d-flex justify-content-start']//div)[${RandomBreakdownListIndex3}]    10
    scroll element into view    (//dpp-product-facet-navigation//ul[@class='facets-container']//ul//li[@class='expanded']//ul//ul//li//div[@class='d-flex justify-content-start']//div)[${RandomBreakdownListIndex3}]
    click element    (//dpp-product-facet-navigation//ul[@class='facets-container']//ul//li[@class='expanded']//ul//ul//li//div[@class='d-flex justify-content-start']//div)[${RandomBreakdownListIndex3}]
#    wait until element is visible    ${AllProdPageProdFilterList3rdBreakdown}    10
#    capture element screenshot    ${AllProdPageProdFilterList3rdBreakdown}
#    click element    ${AllProdPageProdFilterList3rdBreakdown}
    sleep    5

User should be albe to check/uncheck 1 product sub category in Retail All Products Page
    wait until element is visible    ${AllProdPageProdSelectedFilterSubFilterCheckBox}    10
    ${SubFilterCheckBoxIndex}    get element count    ${AllProdPageProdSelectedFilterSubFilterCheckBox}
    ${RandomSubFilterCheckBoxIndex}    evaluate    random.randint(1,${SubFilterCheckBoxIndex})
    wait until element is visible    (//dpp-product-facet-navigation//ul[@class='facets-container']//ul//li//div//input[not(@id='inStock')]/ancestor::div[@class='d-flex justify-content-between align-items-center'])[${RandomSubFilterCheckBoxIndex}]
    scroll element into view    (//dpp-product-facet-navigation//ul[@class='facets-container']//ul//li//div//input[not(@id='inStock')]/ancestor::div[@class='d-flex justify-content-between align-items-center'])[${RandomSubFilterCheckBoxIndex}]
    click element    (//dpp-product-facet-navigation//ul[@class='facets-container']//ul//li//div//input[not(@id='inStock')]/ancestor::div[@class='d-flex justify-content-between align-items-center'])[${RandomSubFilterCheckBoxIndex}]
    sleep    2


User should be able to toggle on/off your price in Retail Filtered Product Page
    wait until element is visible    ${AllProdPageYourPriceToggle}    10
    capture element screenshot    ${AllProdPageYourPriceToggle}
    click element    ${AllProdPageYourPriceToggle}
    sleep    2

User should be able to toggle on/off gts in Retail Filtered Product Page
    wait until element is visible    ${AllProdPageGSTToggle}    10
    capture element screenshot    ${AllProdPageGSTToggle}
    click element    ${AllProdPageGSTToggle}
    sleep    2

User should be able to click information button for in stock and dc stock in Retail Products Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${InStockDCStockStatus}    run keyword and return status    element should be visible    ${ProductSelectionInStockDCStockContainer}
    run keyword if    '${InStockDCStockStatus}' == 'False'    User should be able to click next page
    exit for loop if    '${InStockDCStockStatus}' == 'True'
    END
    wait until element is visible    ${ProductSelectionInStockDCStockInfoButton}    10
    scroll element into view    ${ProductSelectionInStockDCStockInfoButton}
    capture element screenshot    ${ProductSelectionInStockDCStockInfoButton}
    click element    ${ProductSelectionInStockDCStockInfoButton}
    wait until element is visible    ${ProductSelectionInStockDCStockInfoContainer}    10
    capture element screenshot    ${ProductSelectionInStockDCStockInfoContainer}
    sleep    2
    click element    ${ProductSelectionInStockDCStockInfoButton}
    sleep    2

User should be able to click information button for out of stock and dc stock in Retail Products Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${OutofStockDCStockStatus}    run keyword and return status    element should be visible    ${ProductSelectionOutofStockDCStockContainer}
    run keyword if    '${OutofStockDCStockStatus}' == 'False'    User should be able to click next page
    exit for loop if    '${OutofStockDCStockStatus}' == 'True'
    END
    wait until element is visible    ${ProductSelectionOutofStockDCStockInfoButton}    10
    scroll element into view    ${ProductSelectionOutofStockDCStockInfoButton}
    capture element screenshot    ${ProductSelectionOutofStockDCStockInfoButton}
    click element    ${ProductSelectionOutofStockDCStockInfoButton}
    wait until element is visible    ${ProductSelectionOutofStockDCStockInfoContainer}    10
    capture element screenshot    ${ProductSelectionOutofStockDCStockInfoContainer}
    sleep    2
    click element    ${ProductSelectionOutofStockDCStockInfoButton}
    sleep    2

User should be able to click sold by seller button for in stock and dc stock in Retail Products Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${InStockDCStockStatus}    run keyword and return status    element should be visible    ${ProductSelectionInStockDCStockContainer}
    run keyword if    '${InStockDCStockStatus}' == 'False'    User should be able to click next page
    exit for loop if    '${InStockDCStockStatus}' == 'True'
    END
    wait until element is visible    ${ProductSelectionInStockDCStockSoldBySellerButton}    10
    scroll element into view    ${ProductSelectionInStockDCStockSoldBySellerButton}
    capture element screenshot    ${ProductSelectionInStockDCStockSoldBySellerButton}
    click element    ${ProductSelectionInStockDCStockSoldBySellerButton}
    wait until element is visible    ${ProductSelectionInStockDCStockSoldBySellerContainer}    10
    capture element screenshot    ${ProductSelectionInStockDCStockSoldBySellerContainer}
    sleep    5
    mouse over    ${HomePageLogo}
    click element    ${HomePageLogo}
    sleep    2

User should be able to click sold by seller button for in stock only in Retail Products Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${InStockOnlyStatus}    run keyword and return status    element should be visible    ${ProductSelectionInStockOnlyContainer}
    run keyword if    '${InStockOnlyStatus}' == 'False'    User should be able to click next page
    exit for loop if    '${InStockOnlyStatus}' == 'True'
    END
    wait until element is visible    ${ProductSelectionInStockOnlyProductSoldBySellerButton}    10
    scroll element into view    ${ProductSelectionInStockOnlyProductSoldBySellerButton}
    capture element screenshot    ${ProductSelectionInStockOnlyProductSoldBySellerButton}
    click element    ${ProductSelectionInStockOnlyProductSoldBySellerButton}
    wait until element is visible    ${ProductSelectionInStockOnlyProductSoldBySellerContainer}    10
    capture element screenshot    ${ProductSelectionInStockOnlyProductSoldBySellerContainer}
    sleep    5
    mouse over    ${HomePageLogo}
    click element    ${HomePageLogo}
    sleep    2

User should be able to click sold by seller button for out of stock and dc stock in Retail Products Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${OutofStockDCStockStatus}    run keyword and return status    element should be visible    ${ProductSelectionOutofStockDCStockContainer}
    run keyword if    '${OutofStockDCStockStatus}' == 'False'    User should be able to click next page
    exit for loop if    '${OutofStockDCStockStatus}' == 'True'
    END
    wait until element is visible    ${ProductSelectionOutofStockDCStockSoldBySellerButton}    10
    scroll element into view    ${ProductSelectionOutofStockDCStockSoldBySellerButton}
    capture element screenshot    ${ProductSelectionOutofStockDCStockSoldBySellerButton}
    click element    ${ProductSelectionOutofStockDCStockSoldBySellerButton}
    wait until element is visible    ${ProductSelectionOutofStockDCStockSoldBySellerContainer}    10
    capture element screenshot    ${ProductSelectionOutofStockDCStockSoldBySellerContainer}
    sleep    5
    mouse over    ${HomePageLogo}
    click element    ${HomePageLogo}
    sleep    2

User should be able to click sold by seller button for out of stock in Retail Products Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${OutofStockStatus}    run keyword and return status    element should be visible    ${ProductSelectionOutofStockContainer}
    run keyword if    '${OutofStockStatus}' == 'False'    User should be able to click next page
    exit for loop if    '${OutofStockStatus}' == 'True'
    END
    wait until element is visible    ${ProductSelectionOutofStockSoldBySellerButton}    10
    scroll element into view    ${ProductSelectionOutofStockSoldBySellerButton}
    capture element screenshot    ${ProductSelectionOutofStockSoldBySellerButton}
    click element    ${ProductSelectionOutofStockSoldBySellerButton}
    wait until element is visible    ${ProductSelectionOutofStockSoldBySellerContainer}    10
    capture element screenshot    ${ProductSelectionOutofStockSoldBySellerContainer}
    sleep    5
    mouse over    ${HomePageLogo}
    click element    ${HomePageLogo}
    sleep    2

User should be able to click sold by seller button for price not available in Retail Products Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${NoPriceStatus}    run keyword and return status    element should be visible    ${ProductSelectionNoPriceContainer}
    run keyword if    '${NoPriceStatus}' == 'False'    User should be able to click next page
    exit for loop if    '${NoPriceStatus}' == 'True'
    END
    wait until element is visible    ${ProductSelectionNoPriceSoldBySellerButton}    10
    scroll element into view    ${ProductSelectionNoPriceSoldBySellerButton}
    capture element screenshot    ${ProductSelectionNoPriceSoldBySellerButton}
    click element    ${ProductSelectionNoPriceSoldBySellerButton}
    wait until element is visible    ${ProductSelectionNoPriceSoldBySellerContainer}    10
    capture element screenshot    ${ProductSelectionNoPriceSoldBySellerContainer}
    sleep    5
    mouse over    ${HomePageLogo}
    click element    ${HomePageLogo}
    sleep    2

User should be albe to click enquire now button for out of stock in Retail Product Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${OutofStockStatus}    run keyword and return status    element should be visible    ${ProductSelectionOutofStockContainer}
    run keyword if    '${OutofStockStatus}' == 'False'    User should be able to click next page
    exit for loop if    '${OutofStockStatus}' == 'True'
    END
    wait until element is visible    ${ProductSelectionOutofStockEnqButton}    10
    scroll element into view    ${ProductSelectionOutofStockEnqButton}
    click element    ${ProductSelectionOutofStockEnqButton}
    sleep    2

User should be albe to click enquire now button for out of stock in HK Retail Product Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${OutofStockStatus}    run keyword and return status    element should be visible    ${ProductSelectionOutofStockContainer}
    run keyword if    '${OutofStockStatus}' == 'False'    User should be able to click load more button in HK Retail Product Page
    exit for loop if    '${OutofStockStatus}' == 'True'
    END
    wait until element is visible    ${ProductSelectionOutofStockEnqButton}    10
    scroll element into view    ${ProductSelectionOutofStockEnqButton}
    click element    ${ProductSelectionOutofStockEnqButton}
    sleep    2


User should be able to message out of stock product in Retail Product Page
    ${OutofStockMessageStatus}    run keyword and return status    wait until element is visible    ${Retail_AllProdPagePopUpMessageContainer}    10
    run keyword if    '${OutofStockMessageStatus}' == 'True'    Out of Stock Message by Pop Up
    run keyword if    '${OutofStockMessageStatus}' == 'False'    Out of Stock Message by Account

Out of Stock Message by Pop Up
    run keyword and continue on failure    User should be able to view message pop up in Retail All Products Page
    run keyword and continue on failure    User should be able to input text on message pop up text field in Retail All Products Page
    run keyword and continue on failure    User should be able to upload photo on message pop in Retail All Products Page
    run keyword and continue on failure    User should be able to click send on message pop in Retail All Products Page
    run keyword and continue on failure    User should be able to click continue shopping in Retail All Products Page

Out of Stock Message by Account
    run keyword and continue on failure    User should be able to Input Text on Message in Retail Account Messages Details Page
    run keyword and continue on failure    User should be able to upload image in Retail Account Messages Details Page
    run keyword and continue on failure    User should be able to click cancel in Retail Account Messages Details Page
    run keyword and continue on failure    User should be able to click send in Retail Account Messages Details Page
    run keyword and continue on failure    Browse Back Button

User should be albe to click enquire now button for price not available in Retail Product Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${NoPriceStatus}    run keyword and return status    element should be visible    ${ProductSelectionNoPriceContainer}
    run keyword if    '${NoPriceStatus}' == 'False'    User should be able to click next page
    exit for loop if    '${NoPriceStatus}' == 'True'
    END
    wait until element is visible    ${ProductSelectionNoPriceEnqButton}    10
    scroll element into view    ${ProductSelectionNoPriceEnqButton}
    click element    ${ProductSelectionNoPriceEnqButton}
    sleep    2

User should be able to message price not available product in Retail Product Page
    ${PriceNotAvailableMessageStatus}    run keyword and return status    wait until element is visible    ${Retail_AllProdPagePopUpMessageContainer}    10
    run keyword if    '${PriceNotAvailableMessageStatus}' == 'True'    Price Not Available Message by Pop Up
    run keyword if    '${PriceNotAvailableMessageStatus}' == 'False'    Price Not Available Message by Account

Price Not Available Message by Pop Up
    run keyword and continue on failure    User should be able to view message pop up in Retail All Products Page
    run keyword and continue on failure    User should be able to input text on message pop up text field in Retail All Products Page
    run keyword and continue on failure    User should be able to upload photo on message pop in Retail All Products Page
    run keyword and continue on failure    User should be able to click send on message pop in Retail All Products Page
    run keyword and continue on failure    User should be able to click continue shopping in Retail All Products Page

Price Not Available Message by Account
    run keyword and continue on failure    User should be able to Input Text on Message in Retail Account Messages Details Page
    run keyword and continue on failure    User should be able to upload image in Retail Account Messages Details Page
    run keyword and continue on failure    User should be able to click cancel in Retail Account Messages Details Page
    run keyword and continue on failure    User should be able to click send in Retail Account Messages Details Page
    run keyword and continue on failure    Browse Back Button


User should be able to click add to cart button for in stock and dc stock in Retail Product Page
    FOR    ${Nextpage}    IN RANGE    1    5
    ${InStockDCStockStatus}    run keyword and return status    element should be visible    ${ProductSelectionInStockDCStockAddtoCartButton}
    run keyword if    '${InStockDCStockStatus}' == 'False'    User should be able to click next page
    exit for loop if    '${InStockDCStockStatus}' == 'True'
    END
    ${InStockDCStock}    get element count    ${ProductSelectionInStockDCStockAddtoCartButton}
    ${InStockDCStockRandomIndex}    evaluate    random.randint(1,${InStockDCStock})
    wait until element is visible    (//div[@class='custom-product-list'][.//p[@class='inStock mr-0']][.//p[@class='inStock pr-2']]//button[@type='submit'])[${InStockDCStockRandomIndex}]    10
    scroll element into view    (//div[@class='custom-product-list'][.//p[@class='inStock mr-0']][.//p[@class='inStock pr-2']]//button[@type='submit'])[${InStockDCStockRandomIndex}]
    capture element screenshot    (//div[@class='custom-product-list'][.//p[@class='inStock mr-0']][.//p[@class='inStock pr-2']]//button[@type='submit'])[${InStockDCStockRandomIndex}]
    click element    (//div[@class='custom-product-list'][.//p[@class='inStock mr-0']][.//p[@class='inStock pr-2']]//button[@type='submit'])[${InStockDCStockRandomIndex}]
    run keyword    Get Number of InStock DCStock
    sleep    2

User should be able to add 1 qty item for in stock and dc stock in Retail Product Page
    IF    ${TotalInStockDCStock} > 1
      wait until element is visible    ${ProductSelectionInStockDCStockAddOneButton}    10
      capture element screenshot    ${ProductSelectionInStockDCStockAddOneButton}
      click element    ${ProductSelectionInStockDCStockAddOneButton}
    END
    sleep    2

User should be able to remove 1 qty item for in stock and dc stock in Retail Product Page
    IF    ${TotalInStockDCStock} > 1
      wait until element is visible    ${ProductSelectionInStockDCStockRemoveOneButton}    10
      capture element screenshot    ${ProductSelectionInStockDCStockRemoveOneButton}
      click element    ${ProductSelectionInStockDCStockRemoveOneButton}
    END
    sleep    2

User should be able to input qty item for in stock and dc stock in Retail Product Page
    wait until element is visible    ${ProductSelectionInStockDCStockQtyTextBox}    10
    clear element text    ${ProductSelectionInStockDCStockQtyTextBox}
    input text    ${ProductSelectionInStockDCStockQtyTextBox}    ${ProductSelectionInStockDCStockQtyTextBoxValue}
    capture element screenshot    ${ProductSelectionInStockDCStockRemoveOneButton}
    sleep    2

User should be able to add to cart random item in Retail Product Page
    wait until element is visible    ${AllProdPageAddtoCartButton}    10
    ${AddToCartElements}    get element count    ${AllProdPageAddtoCartButton}
    ${RandomAddToCartIndex}    evaluate    random.randint(1,${AddToCartElements})
    scroll element into view    (//dpp-add-to-cart//button[@type='submit'])[${RandomAddToCartIndex}]
    click element    (//dpp-add-to-cart//button[@type='submit'])[${RandomAddToCartIndex}]
    set global variable    ${RandomAddToCartIndex}
    sleep    2

User should be able to add item Qty in Retail Product Page
    wait until element is visible    (//button[@aria-label='Add one more'])[${RandomAddToCartIndex}]
    capture element screenshot    (//button[@aria-label='Add one more'])[${RandomAddToCartIndex}]
    click element    (//button[@aria-label='Add one more'])[${RandomAddToCartIndex}]
    sleep    2

User should be able to remove item Qty in Retail Product Page
    wait until element is visible    (//button[@aria-label='Remove one'])[${RandomAddToCartIndex}]
    capture element screenshot    (//button[@aria-label='Remove one'])[${RandomAddToCartIndex}]
    click element    (//button[@aria-label='Remove one'])[${RandomAddToCartIndex}]
    sleep    2

User should be able to click add to cart button for in stock only in Retail Product Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${InStockOnlyStatus}    run keyword and return status    element should be visible    ${ProductSelectionInStockOnlyProductAddtoCartButton}
    run keyword if    '${InStockOnlyStatus}' == 'False'    User should be able to click next page
    exit for loop if    '${InStockOnlyStatus}' == 'True'
    END
    ${InStockOnly}    get element count    ${ProductSelectionInStockOnlyProductAddtoCartButton}
    ${InStockOnlyRandomIndex}    evaluate    random.randint(1,${InStockOnly})
    wait until element is visible    (//div[@class='custom-product-list' or @class='product-grid-list'][.//p[@class='inStock mr-0']][not(.//p[@class='inStock pr-2'])]//button[@type='submit'])[${InStockOnlyRandomIndex}]    10
    scroll element into view    (//div[@class='custom-product-list' or @class='product-grid-list'][.//p[@class='inStock mr-0']][not(.//p[@class='inStock pr-2'])]//button[@type='submit'])[${InStockOnlyRandomIndex}]
    capture element screenshot    (//div[@class='custom-product-list' or @class='product-grid-list'][.//p[@class='inStock mr-0']][not(.//p[@class='inStock pr-2'])]//button[@type='submit'])[${InStockOnlyRandomIndex}]
    click element    (//div[@class='custom-product-list' or @class='product-grid-list'][.//p[@class='inStock mr-0']][not(.//p[@class='inStock pr-2'])]//button[@type='submit'])[${InStockOnlyRandomIndex}]
    run keyword    Get Number of InStockOnly
    sleep    2

User should be able to click add to cart button for in stock only in HK Retail Product Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${InStockOnlyStatus}    run keyword and return status    element should be visible    ${ProductSelectionInStockOnlyProductAddtoCartButton}
    run keyword if    '${InStockOnlyStatus}' == 'False'    User should be able to click load more button in HK Retail Product Page
    exit for loop if    '${InStockOnlyStatus}' == 'True'
    END
    ${InStockOnly}    get element count    ${ProductSelectionInStockOnlyProductAddtoCartButton}
    ${InStockOnlyRandomIndex}    evaluate    random.randint(1,${InStockOnly})
    wait until element is visible    (//div[@class='custom-product-list' or @class='product-grid-list'][.//p[@class='inStock mr-0']][not(.//p[@class='inStock pr-2'])]//button[@type='submit'])[${InStockOnlyRandomIndex}]    10
    scroll element into view    (//div[@class='custom-product-list' or @class='product-grid-list'][.//p[@class='inStock mr-0']][not(.//p[@class='inStock pr-2'])]//button[@type='submit'])[${InStockOnlyRandomIndex}]
    capture element screenshot    (//div[@class='custom-product-list' or @class='product-grid-list'][.//p[@class='inStock mr-0']][not(.//p[@class='inStock pr-2'])]//button[@type='submit'])[${InStockOnlyRandomIndex}]
    click element    (//div[@class='custom-product-list' or @class='product-grid-list'][.//p[@class='inStock mr-0']][not(.//p[@class='inStock pr-2'])]//button[@type='submit'])[${InStockOnlyRandomIndex}]
    run keyword    Get Number of InStockOnly
    sleep    2

User should be able to add 1 qty item for in stock only in Retail Product Page
    IF    ${RemoveInStockString} > 1
    wait until element is visible    ${ProductSelectionInStockOnlyAddOneButton}    10
    capture element screenshot    ${ProductSelectionInStockOnlyAddOneButton}
    click element    ${ProductSelectionInStockOnlyAddOneButton}
    END
    sleep    2

User should be able to remove 1 qty item for in stock only in Retail Product Page
    IF    ${RemoveInStockString} > 1
    wait until element is visible    ${ProductSelectionInStockOnlyRemoveOneButton}    10
    capture element screenshot    ${ProductSelectionInStockOnlyRemoveOneButton}
    click element    ${ProductSelectionInStockOnlyRemoveOneButton}
    END
    sleep    2

User should be able to input qty item for in stock only in Retail Product Page
    wait until element is visible    ${ProductSelectionInStockOnlyQtyTextBox}    10
    clear element text    ${ProductSelectionInStockOnlyQtyTextBox}
    input text    ${ProductSelectionInStockOnlyQtyTextBox}    ${ProductSelectionInStockOnlyQtyTextBoxValue}
    capture element screenshot    ${ProductSelectionInStockOnlyQtyTextBox}
    sleep    2

User should be able to click add to cart button for out of stock and dc stock in Retail Product Page
    FOR    ${Nextpage}    IN RANGE    1    500
    ${OutofStockDCStockStatus}    run keyword and return status    element should be visible    ${ProductSelectionOutofStockDCStockAddtoCartButton}
    run keyword if    '${OutofStockDCStockStatus}' == 'False'    User should be able to click next page
    exit for loop if    '${OutofStockDCStockStatus}' == 'True'
    END
    ${OutofStockDCStock}    get element count    ${ProductSelectionOutofStockDCStockAddtoCartButton}
    ${OutofStockDCStockRandomIndex}    evaluate    random.randint(1,${OutofStockDCStock})
    wait until element is visible   (//div[@class='custom-product-list'][.//p[@class='outOfStock mr-0']][.//p[@class='inStock pr-2']]//button[@type='submit'])[${OutofStockDCStockRandomIndex}]    10
    scroll element into view    (//div[@class='custom-product-list'][.//p[@class='outOfStock mr-0']][.//p[@class='inStock pr-2']]//button[@type='submit'])[${OutofStockDCStockRandomIndex}]
    capture element screenshot    (//div[@class='custom-product-list'][.//p[@class='outOfStock mr-0']][.//p[@class='inStock pr-2']]//button[@type='submit'])[${OutofStockDCStockRandomIndex}]
    click element    (//div[@class='custom-product-list'][.//p[@class='outOfStock mr-0']][.//p[@class='inStock pr-2']]//button[@type='submit'])[${OutofStockDCStockRandomIndex}]
    run keyword    Get Number of DCStock
    sleep    2

User should be able to add 1 qty item for out of stock and dc stock in Retail Product Page
    IF    ${RemoveDCStockString} > 1
    wait until element is visible    ${ProductSelectionOutofStockDCStockAddOneButton}    10
    capture element screenshot    ${ProductSelectionOutofStockDCStockAddOneButton}
    click element    ${ProductSelectionOutofStockDCStockAddOneButton}
    END
    sleep    2

User should be able to remove 1 qty item for out of stock and dc stock in Retail Product Page
    IF    ${RemoveDCStockString} > 1
    wait until element is visible    ${ProductSelectionOutofStockDCStockRemoveOneButton}    10
    capture element screenshot    ${ProductSelectionOutofStockDCStockRemoveOneButton}
    click element    ${ProductSelectionOutofStockDCStockRemoveOneButton}
    END
    sleep    2

User should be able to input qty item for out of stock and dc stock in Retail Product Page
    wait until element is visible    ${ProductSelectionOutofStockDCStockQtyTextBox}    10
    clear element text    ${ProductSelectionOutofStockDCStockQtyTextBox}
    input text    ${ProductSelectionOutofStockDCStockQtyTextBox}    ${ProductSelectionOutofStockDCStockQtyTextBoxValue}
    capture element screenshot    ${ProductSelectionOutofStockDCStockQtyTextBox}
    sleep    2

User should be able to view message pop up in Retail All Products Page
    wait until element is visible    ${Retail_AllProdPagePopUpMessageContainer}    10
    wait until element is visible    ${Retail_AllProdPagePopUpMessageToSupplierlabel}    10
    wait until element is visible    ${Retail_AllProdPagePopUpMessageSubjectlabel}    10
    wait until element is visible    ${Retail_AllProdPagePopUpMessageMessagelabel}    10
    wait until element is visible    ${Retail_AllProdPagePopUpMessagePhotolabel}    10
    wait until element is visible    ${Retail_AllProdPagePopUpMessageToSupplierTextBox}    10
    wait until element is visible    ${Retail_AllProdPagePopUpMessageSubjectTextBox}    10
    wait until element is visible    ${Retail_AllProdPagePopUpMessageMessageTextBox}    10
    wait until element is visible    ${Retail_AllProdPagePopUpMessageUploadImageButton}    10
    wait until element is visible    ${Retail_AllProdPagePopUpMessageCancelButton}    10
    wait until element is visible    ${Retail_AllProdPagePopUpMessageSendButton}    10

    capture element screenshot    ${Retail_AllProdPagePopUpMessageContainer}
    capture element screenshot    ${Retail_AllProdPagePopUpMessageToSupplierlabel}
    capture element screenshot    ${Retail_AllProdPagePopUpMessageSubjectlabel}
    capture element screenshot    ${Retail_AllProdPagePopUpMessageMessagelabel}
    capture element screenshot    ${Retail_AllProdPagePopUpMessagePhotolabel}
    capture element screenshot    ${Retail_AllProdPagePopUpMessageToSupplierTextBox}
    capture element screenshot    ${Retail_AllProdPagePopUpMessageSubjectTextBox}
    capture element screenshot    ${Retail_AllProdPagePopUpMessageMessageTextBox}
    capture element screenshot    ${Retail_AllProdPagePopUpMessageUploadImageButton}
    capture element screenshot    ${Retail_AllProdPagePopUpMessageCancelButton}
    capture element screenshot    ${Retail_AllProdPagePopUpMessageSendButton}

    sleep    2

User should be able to input text on message pop up text field in Retail All Products Page
    wait until element is visible    ${Retail_AllProdPagePopUpMessageMessageTextBox}    10
    clear element text    ${Retail_AllProdPagePopUpMessageMessageTextBox}
    input text    ${Retail_AllProdPagePopUpMessageMessageTextBox}    ${Retail_AllProdPageMessagePopUpUpMessageValue}
    capture element screenshot    ${Retail_AllProdPagePopUpMessageMessageTextBox}
    sleep    2

User should be able to upload photo on message pop in Retail All Products Page
    wait until element is visible   ${Retail_AllProdPagePopUpMessageUploadImageButton}    10
    choose file    ${Retail_AllProdPagePopUpMessageUploadImage}   ${UploadPhoto_Path_Value}
    capture element screenshot    ${Retail_AllProdPagePopUpMessageUploadImageContainer}
    sleep    2

User should be able to click cancel on message pop in Retail All Products Page
    wait until element is visible    ${Retail_AllProdPagePopUpMessageCancelButton}    10
    capture element screenshot    ${Retail_AllProdPagePopUpMessageCancelButton}
    click element    ${Retail_AllProdPagePopUpMessageCancelButton}
    sleep    2

User should be able to click send on message pop in Retail All Products Page
    wait until element is visible    ${Retail_AllProdPagePopUpMessageSendButton}    10
    capture element screenshot    ${Retail_AllProdPagePopUpMessageSendButton}
    click element    ${Retail_AllProdPagePopUpMessageSendButton}
    sleep    5

User should be able to click continue shopping in Retail All Products Page
    wait until element is visible    ${Retail_AllProdPagePopUpMessageContainer}    10
    wait until element is visible    ${Retail_AllProdPagePopUpMessageContinueButton}    10
    capture element screenshot    ${Retail_AllProdPagePopUpMessageContinueButton}
    click element    ${Retail_AllProdPagePopUpMessageContinueButton}
    sleep    2





















User should be able to click next page
    sleep    3
    wait until element is visible    ${AllProdPageDetailsNextPageButton}    20
    scroll element into view    ${AllProdPageDetailsNextPageButton}
    click element    ${AllProdPageDetailsNextPageButton}
    sleep    5

User should be able to click first page
    wait until element is visible    ${AllProdPageDetailsFirstPageButton}    20
    scroll element into view    ${AllProdPageDetailsFirstPageButton}
    click element    ${AllProdPageDetailsFirstPageButton}
    sleep    3

User should be able to click page 1
    wait until element is visible    ${AllProdPageDetailsPage1Button}    20
    scroll element into view    ${AllProdPageDetailsPage1Button}
    click element    ${AllProdPageDetailsPage1Button}
    sleep    3

Return to first page
    ${firstpagestatus}    run keyword and return status    element should be visible  ${AllProdPageDetailsFirstPageButton}
    ${Page1status}    run keyword and return status    element should be visible    ${AllProdPageDetailsPage1Button}
    run keyword if    '${Page1status}' == 'True'    User should be able to click page 1
    run keyword if    '${firstpagestatus}' == 'True'    User should be able to click first page
    scroll element into view    ${AllProdPageLabelFilter}
    sleep    5


User should be able to click load more button in HK Retail Product Page
    wait until element is visible    ${Retail_HK_AllProdPageLoadmoreButton}    10
    scroll element into view    ${Retail_HK_AllProdPageLoadmoreButton}
    click element    ${Retail_HK_AllProdPageLoadmoreButton}
    sleep    2

User should be able to click scroll to top button in HK Retail Product Page
    wait until element is visible    ${Retail_HK_AllProdPageScrolltoTopButton}    10
    scroll element into view    ${Retail_HK_AllProdPageScrolltoTopButton}
    click element    ${Retail_HK_AllProdPageScrolltoTopButton}
    sleep    2

Loop Test
    FOR    ${Nextpage}    IN RANGE    1    500
#      ${status}    run keyword and return status    element should be visible    ${ProductSelectionInStockOnlyProductNameContainer}
      ${pagestatus}    run keyword and return status    element should be visible    ${AllProdPageDetailsNextPageButtonDisabled}
#      Log    ${status}
      run keyword if    '${pagestatus}' == 'False'    User should be able to click next page
#      exit for loop if    '${status}' == 'True'
      exit for loop if    '${pagestatus}' == 'True'
    END


Get Number of InStock DCStock
    ${InStockText}    get text    ${ProductSelectionInStockDCStockProductInStockNumber}
    ${RemoveInStockString}    remove string    ${InStockText}    (    )    +
    convert to integer    ${RemoveInStockString}
    ${DCStockText}    get text    ${ProductSelectionInStockDCStockProductDCStockNumber}
    ${RemoveDCStockString}    remove string    ${DCStockText}    (    )    +
    convert to integer    ${RemoveDCStockString}
    ${TotalInStockDCStock}    evaluate    ${RemoveInStockString}+${RemoveDCStockString}
    set global variable    ${TotalInStockDCStock}

Get Number of InStockOnly
    ${InStockText}    get text    ${ProductSelectionInStockOnlyProductStockNumber}
    ${RemoveInStockString}    remove string    ${InStockText}    (    )    +
    convert to integer    ${RemoveInStockString}
    set global variable    ${RemoveInStockString}

Get Number of DCStock
    ${DCStockText}    get text    ${ProductSelectionOutofStockDCStockProductStockNumber}
    ${RemoveDCStockString}    remove string    ${DCStockText}    (    )    +
    convert to integer    ${RemoveDCStockString}
    set global variable    ${RemoveDCStockString}


Product Price Check
    open excel document    ${ExcelFile_HK_Product_List_Path}    VHKProdPartsSOHPrice
    ${sheets}=    get list sheet names
#    Log    ${sheets}
#    @{row}=    read excel row    row_num=2    max_num=20    sheet_name=VHKProdPartsSOHPrice
#    @{Prod_Num_Column}=    read excel column    col_num=1    max_num=1500    sheet_name=VHKProdPartsSOHPrice
#    @{Bronze_Price_Column}=    read excel column    col_num=12    max_num=1500    sheet_name=VHKProdPartsSOHPrice
    ${ProdNum}=    read excel cell    row_num=3    col_num=2    sheet_name=VHKProdPartsSOHPrice
#    ${Prod_Num}=    convert to string    ${Prod_Num_Column}[2]
#    ${Prod_Price}=    convert to string    ${Bronze_Price_Column}[2]
#    Log     ${Prod_Num}
#    Log    ${Prod_Price}
#    sleep    10
#    Log    ${row_values}

    FOR    ${PriceCheck}    IN RANGE    1    500

      log    ${Prod_NumPrize_Index}

      @{Prod_Num_Column}=    read excel column    col_num=1    max_num=1500    sheet_name=VHKProdPartsSOHPrice
      @{Bronze_Price_Column}=    read excel column    col_num=12    max_num=1500    sheet_name=VHKProdPartsSOHPrice

      ${Prod_Num}=    convert to string    ${Prod_Num_Column}[${Prod_NumPrize_Index}]
      ${Prod_Price}=    convert to string    ${Bronze_Price_Column}[${Prod_NumPrize_Index}]


      ${Prod_Price_RemoveString}    remove string    ${Prod_Price}    $    ,

      wait until element is visible    ${HomePageSearhProduct}    10
      click element    ${HomePageSearhProduct}
      clear element text    ${HomePageSearhProduct}
      input text    ${HomePageSearhProduct}    ${Prod_Num}
      sleep    2

      wait until element is visible    ${HomePageSearchSuggestionList1}    10
      ${Prod_Price}  get text   ${SearchProdPrice}
      ${Prod_Search_RemoveString}    remove string    ${Prod_Price}    $    ,    .0
      click element    ${HomePageSearchSuggestionList1}
      mouse over    ${HomePageLogo}
      sleep    3

      wait until element is visible    ${ProductDeatilsPageProductPrice}    10
      ${Prod_Detail_Price}    get text    ${ProductDeatilsPageProductPrice}
      ${Prod_Detail_RemoveString}    remove string    ${Prod_Detail_Price}    $    ,    .0

      ${Price1}    set variable    ${Prod_Price_RemoveString}
      ${Price2}    set variable    ${Prod_Search_RemoveString}
      ${Price3}    set variable    ${Prod_Detail_RemoveString}

      Log    ${Price1}
      Log    ${Price2}
      Log    ${Price3}

      run keyword and continue on failure    should be equal    ${Price2}    ${Price3}
      run keyword and continue on failure    should be equal    ${Price1}    ${Price2}
      run keyword and continue on failure    should be equal    ${Price1}    ${Price3}


      ${Prod_NumPrize_Index}    evaluate    ${Prod_NumPrize_Index}+1

      sleep    5
    END

    close all excel documents

#New browser tab
#    Log to console    Adding new tab
#    execute javascript    window.open('', '_blank')
##    press keys    none    CTRL+TAB
##    sleep    5
##    press keys    none    CTRL+TAB
##    go to    ${YopMail}
#    sleep    10
#    Log to console    Getting window name
#    @{test}=    get window handles
#    Log    ${test}
#    ${Tab1}=    convert to string    ${test}[0]
#    ${Tab2}=    convert to string    ${test}[1]
#    Log    ${Tab1}
#    Log    ${Tab2}
#    Log to console    Switching window 2
#    switch window    ${Tab2}
#    go to    ${YopMail}
#    sleep    10
#    Log to console    Switching window 1
#    switch window    ${Tab1}
#    sleep    10


User should be able to Check Product Stock
    open excel document    ${ExcelFile_AU_Stock_List_Path}    Titan SUB Geerex
    ${sheets}=    get list sheet names
    ${PartNum}=    read excel cell    row_num=2    col_num=1    sheet_name=Test

    FOR    ${StockCheck}    IN RANGE    1    100

      log    ${Part_Num_Index}

      @{Part_Num_Column}=    read excel column    col_num=1    max_num=100    sheet_name=Test
      @{Stock_Column}=    read excel column    col_num=3    max_num=100    sheet_name=Test

      ${Part_Num}=    convert to string    ${Part_Num_Column}[${Part_Num_Index}]
      ${Stock_Num}=    convert to string    ${Stock_Column}[${Part_Num_Index}]

      run keyword and continue on failure    wait until element is visible    ${HomePageSearhProduct}    10
      run keyword and continue on failure    click element    ${HomePageSearhProduct}
      run keyword and continue on failure    clear element text    ${HomePageSearhProduct}
      run keyword and continue on failure    input text    ${HomePageSearhProduct}    ${Part_Num}
      sleep    7

      run keyword and continue on failure    wait until element is visible    ${HomePageSearchSuggestionList1}    10
    #  ${Prod_Price}  get text   ${SearchProdPrice}
    #  ${Prod_Search_RemoveString}    remove string    ${Prod_Price}    $    ,    .0
      run keyword and continue on failure    click element    ${HomePageSearchSuggestionList1}
      run keyword and continue on failure    mouse over    ${HomePageLogo}
      sleep    7

      run keyword and continue on failure    wait until element is visible    ${ProductDeatilsPageProductInStock}    10
      ${Part_Detail_Stock}    run keyword and continue on failure    get text    ${ProductDeatilsPageProductInStock}
      ${Part_Detail_RemoveString}    run keyword and continue on failure    remove string    ${Part_Detail_Stock}    In stock    (    )    In Stock    ${SPACE}

      ${ExelStockCount}    run keyword and continue on failure    set variable    ${Stock_Num}
      ${ProductDetailsStockCount}    run keyword and continue on failure    set variable    ${Part_Detail_RemoveString}

      Log    ${ExelStockCount}
      Log    ${ProductDetailsStockCount}

      run keyword and continue on failure    should be equal    ${ExelStockCount}    ${ProductDetailsStockCount}



      ${Part_Num_Index}    evaluate    ${Part_Num_Index}+1

      sleep    2
    END

    close all excel documents






