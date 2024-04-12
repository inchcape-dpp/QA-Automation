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
#    ${AllProdPage_AllProd_Label}
#    ${AllProdPageSortProdDropdown}
#    ${AllProdPageInStockCheckBoxContainer}
#    ${AllProdPageInStockCheckBox}


    sleep    2

User should be able to view All Parts Page with VIN
    wait until element is visible    ${AllProdPage_CarSelected_Container}    10
    wait until element is visible    ${AllProdPage_CarSelectedCar_Icon}    10
    wait until element is visible    ${AllProdPage_CarSelectedCar_PartsforLabel}    10
    wait until element is visible    ${AllProdPage_CarSelectedCar_CarModel_Label}    10
    wait until element is visible    ${AllProdPage_CarSelectedCar_CarVIN_Label}    10
    wait until element is visible    ${AllProdPageAddCar/ChangeCarButton}    10

    capture element screenshot    ${AllProdPage_CarSelected_Container}
    capture element screenshot    ${AllProdPage_CarSelectedCar_Icon}
    capture element screenshot    ${AllProdPage_CarSelectedCar_PartsforLabel}
    capture element screenshot    ${AllProdPage_CarSelectedCar_CarModel_Label}
    capture element screenshot    ${AllProdPage_CarSelectedCar_CarVIN_Label}
    capture element screenshot    ${AllProdPageAddCar/ChangeCarButton}

    ${vintextvalue}    get text    ${AllProdPage_CarSelectedCar_CarVIN_Label}
    ${RemoveVINString}    remove string    ${vintextvalue}    Vin Number:    ${SPACE}
    run keyword and continue on failure    Should Be Equal As Strings    ${RemoveVINString}    ${Retail_HK_HomePage_SearchVIN_TextBox_Value1}

User should be able to view All Parts Page with Manual Car Search
    element should not be visible    ${AllProdPage_CarSelectedCar_CarVIN_Label}
    wait until element is visible    ${AllProdPage_CarSelected_Container}    10
    wait until element is visible    ${AllProdPage_CarSelectedCar_Icon}    10
    wait until element is visible    ${AllProdPage_CarSelectedCar_PartsforLabel}    10
    wait until element is visible    ${AllProdPage_CarSelectedCar_CarModel_Label}    10
    wait until element is visible    ${AllProdPageAddCar/ChangeCarButton}    10

    capture element screenshot    ${AllProdPage_CarSelected_Container}
    capture element screenshot    ${AllProdPage_CarSelectedCar_Icon}
    capture element screenshot    ${AllProdPage_CarSelectedCar_PartsforLabel}
    capture element screenshot    ${AllProdPage_CarSelectedCar_CarModel_Label}
    capture element screenshot    ${AllProdPageAddCar/ChangeCarButton}

    ${allpartscarmodeltextvalue}    get text    ${AllProdPage_CarSelectedCar_CarModel_Label}
    ${selectvehiclecarmodeltextvalue}    get text    ${HomePageSelectVehicle}
    run keyword and continue on failure    Should Be Equal As Strings    ${allpartscarmodeltextvalue}    ${selectvehiclecarmodeltextvalue}


User should be able to view All Parts Page with No Car Search
    element should not be visible    ${AllProdPage_CarSelectedCar_CarVIN_Label}
    wait until element is visible    ${AllProdPage_CarSelected_Container}    10
    wait until element is visible    ${AllProdPage_CarSelectedCar_Icon}    10
    wait until element is visible    ${AllProdPage_CarSelectedCar_PartsforLabel}    10
    wait until element is visible    ${AllProdPage_CarSelectedCar_NoCar_Label}    10
    wait until element is visible    ${AllProdPageAddCar/ChangeCarButton}    10

    capture element screenshot    ${AllProdPage_CarSelected_Container}
    capture element screenshot    ${AllProdPage_CarSelectedCar_Icon}
    capture element screenshot    ${AllProdPage_CarSelectedCar_PartsforLabel}
    capture element screenshot    ${AllProdPage_CarSelectedCar_NoCar_Label}
    capture element screenshot    ${AllProdPageAddCar/ChangeCarButton}

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
    sleep    2
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
    sleep    5

Show number of product list
    wait until element is visible    ${Retail_HK_ProductSelectionProductlist}    10
    get element count    ${Retail_HK_ProductSelectionProductlist}
    ${Productlisttext}    get text     ${Retail_HK_ProductSelectionProductResult}
    @{words}    split string    ${Productlisttext}     ,${SPACE}
    log    ${words}

    capture element screenshot    ${Retail_HK_ProductSelectionProductResult}


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

User should be able to view EPC L1 Page in HK Retail
    wait until element is visible    ${Retail_HK_EPC_L1_Container}    10
    wait until element is visible    ${Retail_HK_EPC_L1_ElectronicParts_Container}    10
    wait until element is visible    ${Retail_HK_EPC_L1_ElectronicParts_Cards_Container}    10
    wait until element is visible    ${Retail_HK_EPC_L1_ElectronicParts_Cards_Header}    10

    capture element screenshot    ${Retail_HK_EPC_L1_Container}
    capture element screenshot    ${Retail_HK_EPC_L1_ElectronicParts_Container}
    capture element screenshot    ${Retail_HK_EPC_L1_ElectronicParts_Cards_Container}
    capture element screenshot    ${Retail_HK_EPC_L1_ElectronicParts_Cards_Header}

    wait until element is visible    ${Retail_HK_EPC_L1_ElectronicParts_Cards_EngineFuelSystem}    10
    wait until element is visible    ${Retail_HK_EPC_L1_ElectronicParts_Cards_TransmissionChasis}    10
    wait until element is visible    ${Retail_HK_EPC_L1_ElectronicParts_Cards_BodyInterior}    10
    wait until element is visible    ${Retail_HK_EPC_L1_ElectronicParts_Cards_Electrics}    10

    capture element screenshot    ${Retail_HK_EPC_L1_ElectronicParts_Cards_EngineFuelSystem}
    capture element screenshot    ${Retail_HK_EPC_L1_ElectronicParts_Cards_TransmissionChasis}
    capture element screenshot    ${Retail_HK_EPC_L1_ElectronicParts_Cards_BodyInterior}
    capture element screenshot    ${Retail_HK_EPC_L1_ElectronicParts_Cards_Electrics}

    wait until element is visible    ${Retail_HK_EPC_L1_MaintenanceParts_Container}    10
    wait until element is visible    ${Retail_HK_EPC_L1_MaintenanceParts_Card_Container}    10
    wait until element is visible    ${Retail_HK_EPC_L1_MaintenanceParts_Header}    10
    wait until element is visible    ${Retail_HK_EPC_L1_MaintenanceParts_Card_ShopNow_Button}    10

    capture element screenshot    ${Retail_HK_EPC_L1_MaintenanceParts_Container}
    capture element screenshot    ${Retail_HK_EPC_L1_MaintenanceParts_Card_Container}
    capture element screenshot    ${Retail_HK_EPC_L1_MaintenanceParts_Header}
    capture element screenshot    ${Retail_HK_EPC_L1_MaintenanceParts_Card_ShopNow_Button}

    sleep    2

User should be able to click Shop Now in HK Retail EPC L1 Page
    wait until element is visible    ${Retail_HK_EPC_L1_MaintenanceParts_Card_ShopNow_Button}    10
    capture element screenshot    ${Retail_HK_EPC_L1_MaintenanceParts_Card_ShopNow_Button}
    click element    ${Retail_HK_EPC_L1_MaintenanceParts_Card_ShopNow_Button}
    sleep    2

User should be able to Click Engine Fuel System in HK Retail EPC L1 Page
    wait until element is visible    ${Retail_HK_EPC_L1_ElectronicParts_Cards_EngineFuelSystem}    10
    capture element screenshot    ${Retail_HK_EPC_L1_ElectronicParts_Cards_EngineFuelSystem}
    click element    ${Retail_HK_EPC_L1_ElectronicParts_Cards_EngineFuelSystem}
    sleep    2

User should be able to Click Transmission and Chasis in HK Retail EPC L1 Page
    wait until element is visible    ${Retail_HK_EPC_L1_ElectronicParts_Cards_TransmissionChasis}    10
    capture element screenshot    ${Retail_HK_EPC_L1_ElectronicParts_Cards_TransmissionChasis}
    click element    ${Retail_HK_EPC_L1_ElectronicParts_Cards_TransmissionChasis}
    sleep    2

User should be able to Click Body and Interior in HK Retail EPC L1 Page
    wait until element is visible    ${Retail_HK_EPC_L1_ElectronicParts_Cards_BodyInterior}    10
    capture element screenshot    ${Retail_HK_EPC_L1_ElectronicParts_Cards_BodyInterior}
    click element    ${Retail_HK_EPC_L1_ElectronicParts_Cards_BodyInterior}
    sleep    2

User should be able to Click Electrics in HK Retail EPC L1 Page
    wait until element is visible    ${Retail_HK_EPC_L1_ElectronicParts_Cards_Electrics}    10
    capture element screenshot    ${Retail_HK_EPC_L1_ElectronicParts_Cards_Electrics}
    click element    ${Retail_HK_EPC_L1_ElectronicParts_Cards_Electrics}
    sleep    2

User should be able to view EPC L2 Page in HK Retail
    wait until element is visible    ${Retail_HK_EPC_L2_SelectedCar_Container}    10
    wait until element is visible    ${Retail_HK_EPC_L2_SelectedCar_Header_Label}    10
    wait until element is visible    ${Retail_HK_EPC_L2_SelectedCar_CarModel_Label}    10
    wait until element is visible    ${Retail_HK_EPC_L2_SelectedCar_CarModelCode_Value}    10
    wait until element is visible    ${Retail_HK_EPC_L2_SelectedCar_CarModelCode_Label}    10
    wait until element is visible    ${Retail_HK_EPC_L2_SelectedCar_CarEngine_Value}    10
    wait until element is visible    ${Retail_HK_EPC_L2_SelectedCar_CarEngine_Label}    10
    wait until element is visible    ${Retail_HK_EPC_L2_SelectedCar_CarYear_Value}    10
    wait until element is visible    ${Retail_HK_EPC_L2_SelectedCar_CarYear_Label}    10
    wait until element is visible    ${Retail_HK_EPC_L2_SelectedCar_CarTransmission_Value}    10
    wait until element is visible    ${Retail_HK_EPC_L2_SelectedCar_CarTransmission_Label}    10
    wait until element is visible    ${Retail_HK_EPC_L2_SelectedCar_MoreInfo_Button}    10
    wait until element is visible    ${Retail_HK_EPC_L2_SelectedCar_ChangeCar_Button}    10

    capture element screenshot    ${Retail_HK_EPC_L2_SelectedCar_Container}
    capture element screenshot    ${Retail_HK_EPC_L2_SelectedCar_Header_Label}
    capture element screenshot    ${Retail_HK_EPC_L2_SelectedCar_CarModel_Label}
    capture element screenshot    ${Retail_HK_EPC_L2_SelectedCar_CarModelCode_Value}
    capture element screenshot    ${Retail_HK_EPC_L2_SelectedCar_CarModelCode_Label}
    capture element screenshot    ${Retail_HK_EPC_L2_SelectedCar_CarEngine_Value}
    capture element screenshot    ${Retail_HK_EPC_L2_SelectedCar_CarEngine_Label}
    capture element screenshot    ${Retail_HK_EPC_L2_SelectedCar_CarYear_Value}
    capture element screenshot    ${Retail_HK_EPC_L2_SelectedCar_CarYear_Label}
    capture element screenshot    ${Retail_HK_EPC_L2_SelectedCar_CarTransmission_Value}
    capture element screenshot    ${Retail_HK_EPC_L2_SelectedCar_CarTransmission_Label}
    capture element screenshot    ${Retail_HK_EPC_L2_SelectedCar_MoreInfo_Button}
    capture element screenshot    ${Retail_HK_EPC_L2_SelectedCar_ChangeCar_Button}

    wait until element is visible    ${Retail_HK_EPC_L2_PartsGroup_Header}    10
    wait until element is visible    ${Retail_HK_EPC_L2_PartsGroup_EngingFuelSystem_Button}    10
    wait until element is visible    ${Retail_HK_EPC_L2_PartsGroup_TransmissionChasis_Button}    10
    wait until element is visible    ${Retail_HK_EPC_L2_PartsGroup_BodyInterior_Button}    10
    wait until element is visible    ${Retail_HK_EPC_L2_PartsGroup_Electrics_Button}    10
    wait until element is visible    ${Retail_HK_EPC_L2_PartsGroup_All_Button}    10

    capture element screenshot    ${Retail_HK_EPC_L2_PartsGroup_Header}
    capture element screenshot    ${Retail_HK_EPC_L2_PartsGroup_EngingFuelSystem_Button}
    capture element screenshot    ${Retail_HK_EPC_L2_PartsGroup_TransmissionChasis_Button}
    capture element screenshot    ${Retail_HK_EPC_L2_PartsGroup_BodyInterior_Button}
    capture element screenshot    ${Retail_HK_EPC_L2_PartsGroup_Electrics_Button}
    capture element screenshot    ${Retail_HK_EPC_L2_PartsGroup_All_Button}

    wait until element is visible    ${Retail_HK_EPC_L2_SearchBar_TextBox}    10
    capture element screenshot    ${Retail_HK_EPC_L2_SearchBar_TextBox}

    sleep    2

User should be able to Click Engine Fuel System in HK Retail EPC L2 Page
    wait until element is visible    ${Retail_HK_EPC_L2_PartsGroup_EngingFuelSystem_Button}    10
    capture element screenshot    ${Retail_HK_EPC_L2_PartsGroup_EngingFuelSystem_Button}
    click element    ${Retail_HK_EPC_L2_PartsGroup_EngingFuelSystem_Button}
    sleep    2

User should be able to Click Transmission and Chasis in HK Retail EPC L2 Page
    wait until element is visible    ${Retail_HK_EPC_L2_PartsGroup_TransmissionChasis_Button}    10
    capture element screenshot    ${Retail_HK_EPC_L2_PartsGroup_TransmissionChasis_Button}
    click element    ${Retail_HK_EPC_L2_PartsGroup_TransmissionChasis_Button}
    sleep    2

User should be able to Click Body and Interior in HK Retail EPC L2 Page
    wait until element is visible    ${Retail_HK_EPC_L2_PartsGroup_BodyInterior_Button}    10
    capture element screenshot    ${Retail_HK_EPC_L2_PartsGroup_BodyInterior_Button}
    click element    ${Retail_HK_EPC_L2_PartsGroup_BodyInterior_Button}
    sleep    2

User should be able to Click Electrics in HK Retail EPC L2 Page
    wait until element is visible    ${Retail_HK_EPC_L2_PartsGroup_Electrics_Button}    10
    capture element screenshot    ${Retail_HK_EPC_L2_PartsGroup_Electrics_Button}
    click element    ${Retail_HK_EPC_L2_PartsGroup_Electrics_Button}
    sleep    2

User should be able to Click All in HK Retail EPC L2 Page
    wait until element is visible    ${Retail_HK_EPC_L2_PartsGroup_All_Button}    10
    capture element screenshot    ${Retail_HK_EPC_L2_PartsGroup_All_Button}
    click element    ${Retail_HK_EPC_L2_PartsGroup_All_Button}
    sleep    2

User should be able to click Load More Button
    wait until element is visible    ${Retail_HK_EPC_L2_Schema_LoadMore_Button}    10
    scroll element into view    ${Retail_HK_EPC_L2_Schema_LoadMore_Button}
    click element    ${Retail_HK_EPC_L2_Schema_LoadMore_Button}
    sleep    2

User should be able to view Engine Fuel System Schema in HK Retail EPC L2 Page
    wait until element is visible    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_Header}    10
    wait until element is visible    ${Retail_HK_EPC_L2_Schema_CardList}    10

    run keyword and continue on failure    Engine Fuel System Schema

    capture element screenshot    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_Header}
    capture element screenshot    ${Retail_HK_EPC_L2_Schema_CardList}

    sleep    2

User should be able to view Transmission and Chasis Schema in HK Retail EPC L2 Page
    wait until element is visible    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_Header}    10
    wait until element is visible    ${Retail_HK_EPC_L2_Schema_CardList}    10

    run keyword and continue on failure    Transmission and Chassis Schema

    capture element screenshot    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_Header}
    capture element screenshot    ${Retail_HK_EPC_L2_Schema_CardList}

    sleep    2

User should be able to view Body and Innterior Schema in HK Retail EPC L2 Page
    wait until element is visible    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_Header}    10
    wait until element is visible    ${Retail_HK_EPC_L2_Schema_CardList}    10

    run keyword and continue on failure    Body and Innterior Schema

    capture element screenshot    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_Header}
    capture element screenshot    ${Retail_HK_EPC_L2_Schema_CardList}

    sleep    2

User should be able to view Electrics Schema in HK Retail EPC L2 Page
    wait until element is visible    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_Header}    10
    wait until element is visible    ${Retail_HK_EPC_L2_Schema_CardList}    10

    run keyword and continue on failure    Electrics Schema

    capture element screenshot    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_Header}
    capture element screenshot    ${Retail_HK_EPC_L2_Schema_CardList}

    sleep    2

User should be able to view All Schema in HK Retail EPC L2 Page
    FOR    ${Loadmore}    IN RANGE    1    10
    ${ClickLoadMore}    run keyword and return status    element should be visible    ${Retail_HK_EPC_L2_Schema_LoadMore_Button}
    run keyword if    '${ClickLoadMore}' == 'True'    User should be able to click Load More Button
    exit for loop if    '${ClickLoadMore}' == 'False'
    END

    scroll element into view    ${Retail_HK_EPC_L2_Schema_All_Header}

    capture page screenshot

    sleep    2


User should be able to select random Schema in HK Retail EPC L2 Page
    ${SchemaCount}    get element count    ${Retail_HK_EPC_L2_Schema_CardList}
    ${SchemaRandomIndex}    evaluate    random.randint(1,${SchemaCount})
    wait until element is visible    (//dpp-epc-parts-schema-list//div[@class='epc-schema-card col-12 col-md-3 my-2 mx-0 px-2'])[${SchemaRandomIndex}]    10
    scroll element into view    (//dpp-epc-parts-schema-list//div[@class='epc-schema-card col-12 col-md-3 my-2 mx-0 px-2'])[${SchemaRandomIndex}]
    capture element screenshot    (//dpp-epc-parts-schema-list//div[@class='epc-schema-card col-12 col-md-3 my-2 mx-0 px-2'])[${SchemaRandomIndex}]
    click element    (//dpp-epc-parts-schema-list//div[@class='epc-schema-card col-12 col-md-3 my-2 mx-0 px-2'])[${SchemaRandomIndex}]

    sleep    2

Engine Fuel System Schema
    FOR    ${Loadmore}    IN RANGE    1    5
    ${ClickLoadMore}    run keyword and return status    element should be visible    ${Retail_HK_EPC_L2_Schema_LoadMore_Button}
    run keyword if    '${ClickLoadMore}' == 'True'    User should be able to click Load More Button
    exit for loop if    '${ClickLoadMore}' == 'False'
    END

    scroll element into view    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_Header}

#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_Header}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_StandardTool}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_PartialEngineAssembly}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_ShortBlockAssembly}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_EngineOverhaulGasketKit}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_CylinderHead}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_CylinderBlock}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_TimingGearCoverReadEndPlate}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_Mounting}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_VentilationHose}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_CrankshaftPiston}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_CamshaftValve}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_EngineOilPump}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_OilFilter}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_EngineOilCooler}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_WaterPump}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_RadiatorWterOutlet}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_VBelt}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_Manifold}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_ExhaustPipe}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_AirCleaner}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_VaccumPiping}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_CautionPlateNamePlate}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_IgnitionCoilSparkPlug}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_Distributor}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_Alternator}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_Starter}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_FuelInjectionSystem}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_ExhaustGasReciructionSystem}    10
#
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_Header}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_StandardTool}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_PartialEngineAssembly}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_ShortBlockAssembly}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_EngineOverhaulGasketKit}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_CylinderHead}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_CylinderBlock}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_TimingGearCoverReadEndPlate}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_Mounting}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_VentilationHose}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_CrankshaftPiston}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_CamshaftValve}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_EngineOilPump}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_OilFilter}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_EngineOilCooler}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_WaterPump}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_RadiatorWterOutlet}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_VBelt}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_Manifold}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_ExhaustPipe}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_AirCleaner}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_VaccumPiping}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_CautionPlateNamePlate}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_IgnitionCoilSparkPlug}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_Distributor}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_Alternator}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_Starter}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_FuelInjectionSystem}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_EngingFuelSystem_CardList_ExhaustGasReciructionSystem}

    sleep    2

Transmission and Chassis Schema
    FOR    ${Loadmore}    IN RANGE    1    5
    ${ClickLoadMore}    run keyword and return status    element should be visible    ${Retail_HK_EPC_L2_Schema_LoadMore_Button}
    run keyword if    '${ClickLoadMore}' == 'True'    User should be able to click Load More Button
    exit for loop if    '${ClickLoadMore}' == 'False'
    END

    scroll element into view    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_Header}

#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_Header}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_ClutchReleaseFork}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_ClutchPedalFlexibleHose}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_ClutchMasterCylinder}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_ClutchReleaseCylinder}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_TransaxleTransmissionAssyGasketKitMTM}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_ClutchHousingTransmissionCaseMTM}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_SpeedmeterDrivenGearMTM}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_TransmissionGearMTM}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_GearShiftForkLeverShaftMTM}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_ShiftLeverRetainer}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_TransaxleTransmissionAssyGasketKitATM}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_TorqueConverterFrontOilPumpChainATM}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_TransmissionCaseOilPanATM}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_SpeedometerDrivenGearATM}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_OverdriveGearATM}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_BreakBandMultipleDiscClutch}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_CenterSupportPlanetarySunGearATM}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_BrakeReverseBrakeATM}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_PlanetaryGearReversePistonCounterGearATM}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_RearOilStrainer}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_ValveBodyOilStrainerATM}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_ThrottleLinkValveLever}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_OilCoolerTubeATM}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_RearAxleHousingDifferential}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_RearAxleShaftHub}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_DiscWheelWheelCap}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_FrontAxleHub}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_SteeringColumnShaft}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_VanePumpReservoirPowerSteering}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_PowerSteeringTube}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_SteeringWheel}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_FrontSteeringGearLink}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_ParkingBrakeCable}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_BrakePedalBracket}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_BreakMasterCylinder}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_BrakeBoosterVacuumTube}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_FrontDiscBrakeCaliperDustCover}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_RearDiscBrakeCaliperDustCover}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_BrakeTubeClamp}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_FrontAxleArmSteeringKnuckle}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_FrontSpringShockAbsorber}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_RearSpringShockAbsorber}    10
#
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_Header}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_ClutchReleaseFork}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_ClutchPedalFlexibleHose}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_ClutchMasterCylinder}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_ClutchReleaseCylinder}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_TransaxleTransmissionAssyGasketKitMTM}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_ClutchHousingTransmissionCaseMTM}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_SpeedmeterDrivenGearMTM}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_TransmissionGearMTM}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_GearShiftForkLeverShaftMTM}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_ShiftLeverRetainer}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_TransaxleTransmissionAssyGasketKitATM}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_TorqueConverterFrontOilPumpChainATM}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_TransmissionCaseOilPanATM}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_SpeedometerDrivenGearATM}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_OverdriveGearATM}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_BreakBandMultipleDiscClutch}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_CenterSupportPlanetarySunGearATM}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_BrakeReverseBrakeATM}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_PlanetaryGearReversePistonCounterGearATM}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_RearOilStrainer}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_ValveBodyOilStrainerATM}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_ThrottleLinkValveLever}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_OilCoolerTubeATM}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_RearAxleHousingDifferential}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_RearAxleShaftHub}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_DiscWheelWheelCap}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_FrontAxleHub}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_SteeringColumnShaft}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_VanePumpReservoirPowerSteering}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_PowerSteeringTube}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_SteeringWheel}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_FrontSteeringGearLink}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_ParkingBrakeCable}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_BrakePedalBracket}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_BreakMasterCylinder}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_BrakeBoosterVacuumTube}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_FrontDiscBrakeCaliperDustCover}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_RearDiscBrakeCaliperDustCover}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_BrakeTubeClamp}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_FrontAxleArmSteeringKnuckle}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_FrontSpringShockAbsorber}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_TransmissionChassis_CardList_RearSpringShockAbsorber}

    sleep    2

Body and Innterior Schema

    FOR    ${Loadmore}    IN RANGE    1    5
    ${ClickLoadMore}    run keyword and return status    element should be visible    ${Retail_HK_EPC_L2_Schema_LoadMore_Button}
    run keyword if    '${ClickLoadMore}' == 'True'    User should be able to click Load More Button
    exit for loop if    '${ClickLoadMore}' == 'False'
    END

    scroll element into view    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_Header}

#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_Header}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_SuspensionCrossmemberUnderCover}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_SpareWheelCarrier}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_FrontBumperBumperStay}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_RearBumperBumperStay}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_RadiatorGrille}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_HoodFrontFender}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_HoodLockHinge}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_FrontFenderApronDashPanel}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_FloorSideMember}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_InstrumentPanelGloveCompartment}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_CowlPanelWindshieldGlass}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_FloorPanLowerBackPanel}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_FloorInsulator}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_MatCarpet}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_ConsoleBoxBracket}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_SideMember}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_RoofSideVentilator}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_QuarterWindow}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_RoofPanelBackWindowGlass}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_LuggageCompartmentDoorLock}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_EngineHoodLock}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_InsideTrimBoardDoorOpeningTrimMoulding}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_RoofHeadliningSilencerPad}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_PackageTrayPanelLaggageCompartmentMat}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_FrontDoorPanelGlass}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_FrontDoorLockHandle}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_FrondDoorWindowRegulatorHinge}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_LockCylinderSet}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_FrontSeatSearTrack}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_SeatBeltChildRestrainSeat}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_ArmrestVisor}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_BatteryCarrier}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_CautionPlate}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_AshReceptacle}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_EmplemNamePlate}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_FrontMoulding}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_SideMoulding}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_RearMoulding}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_MudguardSpoiler}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_FuelTankTube}    10
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_AcceleratorLink}    10
#
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_Header}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_SuspensionCrossmemberUnderCover}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_SpareWheelCarrier}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_FrontBumperBumperStay}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_RearBumperBumperStay}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_RadiatorGrille}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_HoodFrontFender}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_HoodLockHinge}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_FrontFenderApronDashPanel}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_FloorSideMember}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_InstrumentPanelGloveCompartment}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_CowlPanelWindshieldGlass}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_FloorPanLowerBackPanel}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_FloorInsulator}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_MatCarpet}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_ConsoleBoxBracket}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_SideMember}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_RoofSideVentilator}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_QuarterWindow}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_RoofPanelBackWindowGlass}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_LuggageCompartmentDoorLock}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_EngineHoodLock}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_InsideTrimBoardDoorOpeningTrimMoulding}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_RoofHeadliningSilencerPad}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_PackageTrayPanelLaggageCompartmentMat}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_FrontDoorPanelGlass}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_FrontDoorLockHandle}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_FrondDoorWindowRegulatorHinge}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_LockCylinderSet}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_FrontSeatSearTrack}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_SeatBeltChildRestrainSeat}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_ArmrestVisor}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_BatteryCarrier}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_CautionPlate}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_AshReceptacle}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_EmplemNamePlate}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_FrontMoulding}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_SideMoulding}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_RearMoulding}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_MudguardSpoiler}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_FuelTankTube}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_BodyInterior_CardList_AcceleratorLink}

    sleep    2

Electrics Schema
    FOR    ${Loadmore}    IN RANGE    1    5
    ${ClickLoadMore}    run keyword and return status    element should be visible    ${Retail_HK_EPC_L2_Schema_LoadMore_Button}
    run keyword if    '${ClickLoadMore}' == 'True'    User should be able to click Load More Button
    exit for loop if    '${ClickLoadMore}' == 'False'
    END

    scroll element into view    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_Header}

#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_Header}
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_Headlamp}
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_FogLamp}
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_FrontTurnSignalLamp}
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_SideTurnSignalLampOuterMirrorLamp}
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_RearCombinationLamp}
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_BackUpLamp}
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_RearLicensePlateLamp}
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_RearSideMarkerLamp}
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_CenterStopLamp}
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_InteriorLamp}
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_BatteryBatteryCable}
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_WiringClamp}
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_Meter}
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_Indicator}
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_SwitchRelayComputer}
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_ElectronicFuelInjectionSystem}
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_CruisControl}
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_OverdriveElectronicControlledTransmission}
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_ABSVSC}
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_AntiTheftDevice}
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_WindshieldWiper}
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_WindshieldWasher}
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_DoorMotorDoorSolenoid}
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_RadioReiverAmplifierCondenser}
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_Speaker}
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_Antena}
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_Horn}
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_Mirror}
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_HeatingAirConditioningSet}
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_HeatingAirConditioningHeaterUnitBlower}
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_HeatingAirConditioningCoolerUnit}
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_HeatingAirConditioningControlAirDuct}
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_HeatingAirConditioningWaterPiping}
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_HeatingAirConditioningVacuumPiping}
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_HeatingAirConditioningCoolerPiping}
#    wait until element is visible    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_HeatingAirConditioningCompressor}
#
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_Header}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_Headlamp}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_FogLamp}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_FrontTurnSignalLamp}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_SideTurnSignalLampOuterMirrorLamp}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_RearCombinationLamp}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_BackUpLamp}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_RearLicensePlateLamp}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_RearSideMarkerLamp}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_CenterStopLamp}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_InteriorLamp}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_BatteryBatteryCable}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_WiringClamp}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_Meter}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_Indicator}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_SwitchRelayComputer}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_ElectronicFuelInjectionSystem}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_CruisControl}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_OverdriveElectronicControlledTransmission}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_ABSVSC}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_AntiTheftDevice}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_WindshieldWiper}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_WindshieldWasher}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_DoorMotorDoorSolenoid}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_RadioReiverAmplifierCondenser}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_Speaker}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_Antena}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_Horn}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_Mirror}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_HeatingAirConditioningSet}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_HeatingAirConditioningHeaterUnitBlower}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_HeatingAirConditioningCoolerUnit}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_HeatingAirConditioningControlAirDuct}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_HeatingAirConditioningWaterPiping}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_HeatingAirConditioningVacuumPiping}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_HeatingAirConditioningCoolerPiping}
#    capture element screenshot    ${Retail_HK_EPC_L2_Schema_Electrics_CardList_HeatingAirConditioningCompressor}

    sleep    2

User should be able to view EPC L3 Page in HK Retail EPC L3 Page
    wait until element is visible    ${Retail_HK_EPC_L2_SelectedCar_Container}    10
    wait until element is visible    ${Retail_HK_EPC_L2_SelectedCar_Header_Label}    10
    wait until element is visible    ${Retail_HK_EPC_L2_SelectedCar_CarModel_Label}    10
    wait until element is visible    ${Retail_HK_EPC_L2_SelectedCar_CarModelCode_Value}    10
    wait until element is visible    ${Retail_HK_EPC_L2_SelectedCar_CarModelCode_Label}    10
    wait until element is visible    ${Retail_HK_EPC_L2_SelectedCar_CarEngine_Value}    10
    wait until element is visible    ${Retail_HK_EPC_L2_SelectedCar_CarEngine_Label}    10
    wait until element is visible    ${Retail_HK_EPC_L2_SelectedCar_CarYear_Value}    10
    wait until element is visible    ${Retail_HK_EPC_L2_SelectedCar_CarYear_Label}    10
    wait until element is visible    ${Retail_HK_EPC_L2_SelectedCar_CarTransmission_Value}    10
    wait until element is visible    ${Retail_HK_EPC_L2_SelectedCar_CarTransmission_Label}    10
    wait until element is visible    ${Retail_HK_EPC_L2_SelectedCar_MoreInfo_Button}    10
    wait until element is visible    ${Retail_HK_EPC_L2_SelectedCar_ChangeCar_Button}    10

    capture element screenshot    ${Retail_HK_EPC_L2_SelectedCar_Container}
    capture element screenshot    ${Retail_HK_EPC_L2_SelectedCar_Header_Label}
    capture element screenshot    ${Retail_HK_EPC_L2_SelectedCar_CarModel_Label}
    capture element screenshot    ${Retail_HK_EPC_L2_SelectedCar_CarModelCode_Value}
    capture element screenshot    ${Retail_HK_EPC_L2_SelectedCar_CarModelCode_Label}
    capture element screenshot    ${Retail_HK_EPC_L2_SelectedCar_CarEngine_Value}
    capture element screenshot    ${Retail_HK_EPC_L2_SelectedCar_CarEngine_Label}
    capture element screenshot    ${Retail_HK_EPC_L2_SelectedCar_CarYear_Value}
    capture element screenshot    ${Retail_HK_EPC_L2_SelectedCar_CarYear_Label}
    capture element screenshot    ${Retail_HK_EPC_L2_SelectedCar_CarTransmission_Value}
    capture element screenshot    ${Retail_HK_EPC_L2_SelectedCar_CarTransmission_Label}
    capture element screenshot    ${Retail_HK_EPC_L2_SelectedCar_MoreInfo_Button}
    capture element screenshot    ${Retail_HK_EPC_L2_SelectedCar_ChangeCar_Button}

    wait until element is visible    ${Retail_HK_EPC_L3_SchemaCar_Header_Label}    10

    capture element screenshot    ${Retail_HK_EPC_L3_SchemaCar_Header_Label}

    wait until element is visible    ${Retail_HK_EPC_L3_SchemaCar_Diagram}    10

    capture element screenshot    ${Retail_HK_EPC_L3_SchemaCar_Diagram}

    wait until element is visible    ${Retail_HK_EPC_L3_PartsListCards_Container}    10

    capture element screenshot    ${Retail_HK_EPC_L3_PartsListCards_Container}

    sleep    2

User should be able to view Parts List Card and Diagram in HK Retail EPC L3 Page
    wait until element is visible    ${Retail_HK_EPC_L3_PartsListCards_Container}    10
    capture element screenshot    ${Retail_HK_EPC_L3_PartsListCards_Container}

    wait until element is visible    ${Retail_HK_EPC_L3_SchemaCar_Diagram}    10
    capture element screenshot    ${Retail_HK_EPC_L3_SchemaCar_Diagram}

    sleep    2

User should be able to view one Card on the Parts Card List in HK Retail EPC L3 Page
    wait until element is visible    ${Retail_HK_EPC_L3_PartsListCards_Options}    10
    ${AddToCartElements}    get element count    ${Retail_HK_EPC_L3_PartsListCards_Options}
    ${RandomPartsCardIndex}    evaluate    random.randint(1,${AddToCartElements})
    scroll element into view    (//dpp-epc-part-list//div[@class='part-list-card d-flex flex-column' or @class='part-list-card d-flex flex-column m-0'])[${RandomPartsCardIndex}]
    wait until element is visible    (//dpp-epc-part-list//div[@class='part-list-card d-flex flex-column' or @class='part-list-card d-flex flex-column m-0']//div[@class='pnc-id'])[${RandomPartsCardIndex}]    10
    wait until element is visible    (//dpp-epc-part-list//div[@class='part-list-card d-flex flex-column' or @class='part-list-card d-flex flex-column m-0']//div[@class='pnc-name'])[${RandomPartsCardIndex}]    10
    wait until element is visible    (//dpp-epc-part-list//div[@class='part-list-card d-flex flex-column' or @class='part-list-card d-flex flex-column m-0']//button//span[contains(text(),'EXPAND')])[${RandomPartsCardIndex}]    10

    capture element screenshot    (//dpp-epc-part-list//div[@class='part-list-card d-flex flex-column' or @class='part-list-card d-flex flex-column m-0']//div[@class='pnc-id'])[${RandomPartsCardIndex}]
    capture element screenshot    (//dpp-epc-part-list//div[@class='part-list-card d-flex flex-column' or @class='part-list-card d-flex flex-column m-0']//div[@class='pnc-name'])[${RandomPartsCardIndex}]
    capture element screenshot    (//dpp-epc-part-list//div[@class='part-list-card d-flex flex-column' or @class='part-list-card d-flex flex-column m-0']//button//span[contains(text(),'EXPAND')])[${RandomPartsCardIndex}]

    set global variable    ${RandomPartsCardIndex}
    sleep    2

User should be able to expand one Card on the Parts Card List in HK Retail EPC L3 Page
    wait until element is visible    (//dpp-epc-part-list//div[@class='part-list-card d-flex flex-column' or @class='part-list-card d-flex flex-column m-0']//button//span[contains(text(),'EXPAND')])[${RandomPartsCardIndex}]    10
    click element    (//dpp-epc-part-list//div[@class='part-list-card d-flex flex-column' or @class='part-list-card d-flex flex-column m-0']//button//span[contains(text(),'EXPAND')])[${RandomPartsCardIndex}]
    sleep    2

User should be able to view Option Card Details on the Parts Card List in HK Retail EPC L3 Page
    wait until element is visible    ${Retail_HK_EPC_L3_PartsListCards_Option_Details_Container}    10
    capture element screenshot    ${Retail_HK_EPC_L3_PartsListCards_Option_Details_Container}

    wait until element is visible    ${Retail_HK_EPC_L3_PartsListCards_Option_Details_PartNo_Label}    10
    wait until element is visible    ${Retail_HK_EPC_L3_PartsListCards_Option_Details_DetailsSpec_Label}    10
    wait until element is visible    ${Retail_HK_EPC_L3_PartsListCards_Option_Details_Stock_Label}    10
    wait until element is visible    ${Retail_HK_EPC_L3_PartsListCards_Option_Details_Price_Label}    10
    wait until element is visible    ${Retail_HK_EPC_L3_PartsListCards_Option_Details_Note_Label}    10

    capture element screenshot    ${Retail_HK_EPC_L3_PartsListCards_Option_Details_PartNo_Label}
    capture element screenshot    ${Retail_HK_EPC_L3_PartsListCards_Option_Details_DetailsSpec_Label}
    capture element screenshot    ${Retail_HK_EPC_L3_PartsListCards_Option_Details_Stock_Label}
    capture element screenshot    ${Retail_HK_EPC_L3_PartsListCards_Option_Details_Price_Label}
    capture element screenshot    ${Retail_HK_EPC_L3_PartsListCards_Option_Details_Note_Label}

    wait until element is visible    ${Retail_HK_EPC_L3_PartsListCards_Option_Details_PartNo_Value}
    wait until element is visible    ${Retail_HK_EPC_L3_PartsListCards_Option_Details_DetailsSpec_Value}
    wait until element is visible    ${Retail_HK_EPC_L3_PartsListCards_Option_Details_Stock_Value}
    wait until element is visible    ${Retail_HK_EPC_L3_PartsListCards_Option_Details_Price_Value}
    wait until element is visible    ${Retail_HK_EPC_L3_PartsListCards_Option_Details_MoreInfo_Button}

    capture element screenshot    ${Retail_HK_EPC_L3_PartsListCards_Option_Details_PartNo_Value}
    capture element screenshot    ${Retail_HK_EPC_L3_PartsListCards_Option_Details_DetailsSpec_Value}
    capture element screenshot    ${Retail_HK_EPC_L3_PartsListCards_Option_Details_Stock_Value}
    capture element screenshot    ${Retail_HK_EPC_L3_PartsListCards_Option_Details_Price_Value}
    capture element screenshot    ${Retail_HK_EPC_L3_PartsListCards_Option_Details_MoreInfo_Button}

    click element    ${Retail_HK_EPC_L3_PartsListCards_Option_Details_MoreInfo_Button}

    wait until element is visible    ${Retail_HK_EPC_L3_PartsListCards_Option_MoreDetails_Container}    10
    capture element screenshot    ${Retail_HK_EPC_L3_PartsListCards_Option_MoreDetails_Container}

    sleep    2

    click element    ${Retail_HK_EPC_L3_PartsListCards_Option_Details_HideInfo_Button}

    element should not be visible    ${Retail_HK_EPC_L3_PartsListCards_Option_MoreDetails_Container}    10

    sleep    2













