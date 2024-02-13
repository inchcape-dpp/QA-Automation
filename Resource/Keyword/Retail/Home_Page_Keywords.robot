*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary
Library    Collections

#Resource  ../../../Resource/testdata/config.robot
Resource  ../../../Resource/testdata/Retail/Retail_Variable.robot
Resource  ../../../Resource/testdata/credentials.robot


*** Keywords ***
#-----------------------------------------------------Retail Home Page-------------------------------------------------
Admin User should be able to Login
    wait until element is visible    ${HomePageLogo}    10
    wait until element is visible    ${HomePageSellerInfo}    10
    capture page screenshot
    sleep     2

User should be able to view home page
    wait until element is visible    ${HomePageLogo}    10
    wait until element is visible    ${HomePageSelectVehicleContainer}    10
    capture page screenshot
    scroll element into view    ${Retail_HomePageShopByCategoryHeader}
    capture page screenshot
    sleep    2

User should be able to view All products
    wait until element is visible    ${HomePageAllCategory}    10
    click element    ${HomePageAllCategory}
    wait until element is visible    ${AllProdPageLabelFilter}    10
    capture page screenshot
    sleep    2

User should be able to view All Products Page in HK Retail Home Page
    go to    ${s2HKRetailAllProducts}


User should be able to view shopping cart pop up modal
    run keyword and return status    wait until element is visible    ${HomePageCartCountIcon}    10
    wait until element is visible    ${HomePageCartIcon}    10
    click element    ${HomePageCartIcon}
    wait until element is visible    ${ShopCartPopHeader}    10
    capture element screenshot    ${ShopCartPopContainer}
    sleep    2

User should be able to close shopping cart pop up modal
    wait until element is visible    ${ShopCartPopCloseIcon}    10
    click element    ${ShopCartPopCloseIcon}
    sleep    2

User should be able to delete item from shopping cart pop up modal
    ${EmptyCartStatus}    run keyword and return status    wait until element is visible    ${ShopCartPopItemDeleteButton}    10
    run keyword if    '${EmptyCartStatus}' == 'True'    Delete Item From Pop Up
    run keyword if    '${EmptyCartStatus}' == 'False'    Log    No Cart Items
    set global variable    ${EmptyCartStatus}
    sleep    2

Delete Item From Pop Up
    wait until element is visible    ${ShopCartPopItemDeleteButton}    10
    capture element screenshot    ${ShopCartPopItemDeleteButton}
    click element    ${ShopCartPopItemDeleteButton}
    sleep    2

User should be albe to delete all items from shopping cart pop up modal
    FOR    ${DeleteAll}    IN RANGE    1    500
    ${DeleteStatus}    run keyword and return status    element should be visible    ${ShopCartPopEmptyLabel}
    run keyword if    '${DeleteStatus}' == 'False'    Delete Item From Pop Up
    exit for loop if    '${DeleteStatus}' == 'True'
    END
    wait until element is visible    ${ShopCartPopContinueShoppingButton}    10
    capture element screenshot    ${ShopCartPopContinueShoppingButton}
    click element    ${ShopCartPopContinueShoppingButton}
    sleep    2

User should be able to click view cart button from shopping cart pop up modal
    wait until element is visible    ${ShopCartPopCheckOutButton}    10
    capture element screenshot    ${ShopCartPopCheckOutButton}
    click element    ${ShopCartPopCheckOutButton}
    sleep    10

User should be able to view message page from top navigaton
    wait until element is visible    ${HomePageMessageIcon}    10
    click element    ${HomePageMessageIcon}
    sleep    2
    capture page screenshot
    sleep    2

User should be able to access account from top navigaton
    wait until element is visible    ${HomePageProfileIcon}    10
    mouse over    ${HomePageProfileIcon}
    wait until element is visible    ${HomePageProfileAccount}    10
    click element    ${HomePageProfileAccount}
    sleep    2
    capture page screenshot
    mouse over    ${HomePageLogo}
    sleep    2

User should be able to Go to Home page
    wait until element is visible    ${HomePageLogo}    10
    click element    ${HomePageLogo}
    scroll element into view    ${HomePageLogo}
    sleep    2

User should be able to view filters & oil menus in Retail Home Page
    wait until element is visible    ${Retail_HomePageFilter&OilCategoryButton}    10
    mouse over    ${Retail_HomePageFilter&OilCategoryButton}
    wait until element is visible    ${Retail_HomePageFilter&OilCategoryList}    10
    capture element screenshot    ${Retail_HomePageFilter&OilCategoryButton}
    capture element screenshot    ${Retail_HomePageFilter&OilCategoryList}
    sleep    2

User should be able to view belts & timing parts menus in Retail Home Page
    wait until element is visible    ${Retail_HomePageBelts&TimingPartsCategoryButton}    10
    mouse over    ${Retail_HomePageBelts&TimingPartsCategoryButton}
    wait until element is visible    ${Retail_HomePageBelts&TimingPartsCategoryList}    10
    capture element screenshot    ${Retail_HomePageBelts&TimingPartsCategoryButton}
    capture element screenshot    ${Retail_HomePageBelts&TimingPartsCategoryList}
    sleep    2

User should be able to view cooling menus in Retail Home Page
    wait until element is visible    ${Retail_HomePageCoolingCategoryButton}    10
    mouse over    ${Retail_HomePageCoolingCategoryButton}
    wait until element is visible    ${Retail_HomePageCoolingCategoryList}    10
    capture element screenshot    ${Retail_HomePageCoolingCategoryButton}
    capture element screenshot    ${Retail_HomePageCoolingCategoryList}
    sleep    2

User should be able to view brakes menus in Retail Home Page
    wait until element is visible    ${Retail_HomePageBrakesCategoryButton}    10
    mouse over    ${Retail_HomePageBrakesCategoryButton}
    wait until element is visible    ${Retail_HomePageBrakesCategoryList}    10
    capture element screenshot    ${Retail_HomePageBrakesCategoryButton}
    capture element screenshot    ${Retail_HomePageBrakesCategoryList}
    sleep    2

User should be able to view suspension menus in Retail Home Page
    wait until element is visible    ${Retail_HomePageSuspensionCategoryButton}   10
    mouse over    ${Retail_HomePageSuspensionCategoryButton}
    wait until element is visible    ${Retail_HomePageSuspensionCategoryList}    10
    capture element screenshot    ${Retail_HomePageSuspensionCategoryButton}
    capture element screenshot    ${Retail_HomePageSuspensionCategoryList}
    sleep    2

User should be able to view electrical menus in Retail Home Page
    wait until element is visible    ${Retail_HomePageElectricalCategoryButton}   10
    mouse over    ${Retail_HomePageElectricalCategoryButton}
    wait until element is visible    ${Retail_HomePageElectricalCategoryList}    10
    capture element screenshot    ${Retail_HomePageElectricalCategoryButton}
    capture element screenshot    ${Retail_HomePageElectricalCategoryList}
    sleep    2

User should be able to view service parts menus in Retail Home Page
    wait until element is visible    ${Retail_HomePageServicePartsCategoryButton}   10
    mouse over    ${Retail_HomePageServicePartsCategoryButton}
    wait until element is visible    ${Retail_HomePageServicePartsCategoryList}    10
    capture element screenshot    ${Retail_HomePageServicePartsCategoryButton}
    capture element screenshot    ${Retail_HomePageServicePartsCategoryList}
    sleep    2

User should be able to view engine parts menus in Retail Home Page
    wait until element is visible    ${Retail_HomePageEnginePartsCategoryButton}   10
    mouse over    ${Retail_HomePageEnginePartsCategoryButton}
    wait until element is visible    ${Retail_HomePageEnginePartsCategoryList}    10
    capture element screenshot    ${Retail_HomePageEnginePartsCategoryButton}
    capture element screenshot    ${Retail_HomePageEnginePartsCategoryList}
    sleep    2

User should be able to view body parts menus in HK Retail Home Page
    wait until element is visible    ${Retail_HK_HomePage_BodyParts_Category_Button}   10
    mouse over    ${Retail_HK_HomePage_BodyParts_Category_Button}
    wait until element is visible    ${Retail_HK_HomePage_BodyParts_Category_List}    10
    capture element screenshot    ${Retail_HK_HomePage_BodyParts_Category_Button}
    capture element screenshot    ${Retail_HK_HomePage_BodyParts_Category_List}
    sleep    2

User should be able to view Chemicals menus in HK Retail Home Page
    wait until element is visible    ${Retail_HK_HomePage_Chemicals_Category_Button}   10
    mouse over    ${Retail_HK_HomePage_Chemicals_Category_Button}
    wait until element is visible    ${Retail_HK_HomePage_Chemicals_Category_List}    10
    capture element screenshot    ${Retail_HK_HomePage_Chemicals_Category_Button}
    capture element screenshot    ${Retail_HK_HomePage_Chemicals_Category_List}
    sleep    2

User should be able to view Maintenance Item menus in HK Retail Home Page
    wait until element is visible    ${Retail_HK_HomePage_MaintenanceItem_Category_Button}   10
    mouse over    ${Retail_HK_HomePage_MaintenanceItem_Category_Button}
    wait until element is visible    ${Retail_HK_HomePage_MaintenanceItem_Category_List}    10
    capture element screenshot    ${Retail_HK_HomePage_MaintenanceItem_Category_Button}
    capture element screenshot    ${Retail_HK_HomePage_MaintenanceItem_Category_List}
    sleep    2

User should be able to view Repair Parts menus in HK Retail Home Page
    wait until element is visible    ${Retail_HK_HomePage_RepairParts_Category_Button}   10
    mouse over    ${Retail_HK_HomePage_RepairParts_Category_Button}
    wait until element is visible    ${Retail_HK_HomePage_RepairParts_Category_List}    10
    capture element screenshot    ${Retail_HK_HomePage_RepairParts_Category_Button}
    capture element screenshot    ${Retail_HK_HomePage_RepairParts_Category_List}
    sleep    2

User should be able to view Toyota Hybrid menus in HK Retail Home Page
    wait until element is visible    ${Retail_HK_HomePage_ToyotaHybrid_Category_Button}   10
    mouse over    ${Retail_HK_HomePage_ToyotaHybrid_Category_Button}
    wait until element is visible    ${Retail_HK_HomePage_ToyotaHybrid_Category_List}    10
    capture element screenshot    ${Retail_HK_HomePage_ToyotaHybrid_Category_Button}
    capture element screenshot    ${Retail_HK_HomePage_ToyotaHybrid_Category_List}
    sleep    2



User should be able to select 1 filter from selected category in Retail Home Page
    ${RandomFilterIndex}    evaluate    random.randint(0,7)
    mouse over    ${Retail_FilterListElements}[${RandomFilterIndex}]
    ${RandomFilterIndex}  evaluate    ${RandomFilterIndex}+1
    set global variable    ${RandomFilterIndex}
    sleep    2

User should be able to select 1 filter from selected category in HK Retail Home Page
    ${RandomFilterIndex}    evaluate    random.randint(0,4)
    mouse over    ${Retail_HK_FilterListElements_New}[${RandomFilterIndex}]
    ${RandomFilterIndex}  evaluate    ${RandomFilterIndex}+1
    set global variable    ${RandomFilterIndex}
    sleep    2

User should be able to click 1 sub filter from selected category in Retail Home Page
    ${Retail_FilterListSubElements}    set variable    ((//dpp-category-navigation//button[@tabindex='0'])[${RandomFilterIndex}]/following-sibling::div[@class='wrapper']//li)
    ${SubFilterIndex}    get element count    ${Retail_FilterListSubElements}
    ${RandomSubFilterIndex}    evaluate    random.randint(1,${SubFilterIndex})
    scroll element into view    ((//dpp-category-navigation//button[@tabindex='0'])[${RandomFilterIndex}]/following-sibling::div[@class='wrapper']//li)[${RandomSubFilterIndex}]
    click element    ((//dpp-category-navigation//button[@tabindex='0'])[${RandomFilterIndex}]/following-sibling::div[@class='wrapper']//li)[${RandomSubFilterIndex}]
    sleep    10

User should be able to click vehicle listing quick link in Retail Home Page
    wait until element is visible    ${HomePageVehicleQuickLink}    10
    scroll element into view    ${HomePageVehicleQuickLink}
    capture element screenshot    ${HomePageVehicleQuickLink}
    click element    ${HomePageVehicleQuickLink}
    wait until element is visible    ${Retail_AccountVehicleListingPagePanelContainer}    10
    capture element screenshot    ${Retail_AccountVehicleListingPagePanelContainer}
    sleep    2

User should be able to click orders quick link in Retail Home Page
    wait until element is visible    ${HomePageOrdersQuickLink}    10
    scroll element into view    ${HomePageOrdersQuickLink}
    capture element screenshot    ${HomePageOrdersQuickLink}
    click element    ${HomePageOrdersQuickLink}
    wait until element is visible    ${Retail_AccountOrderPagePanelContainer}    10
    capture element screenshot    ${Retail_AccountOrderPagePanelContainer}
    sleep    2

User should be able to click saved carts quick link in Retail Home Page
    wait until element is visible    ${HomePageSavedCartsQuickLink}    10
    scroll element into view    ${HomePageSavedCartsQuickLink}
    capture element screenshot    ${HomePageSavedCartsQuickLink}
    click element    ${HomePageSavedCartsQuickLink}
    wait until element is visible    ${Retail_AccountSavedCartsPagePanelContainer}    10
    capture element screenshot    ${Retail_AccountSavedCartsPagePanelContainer}
    sleep    2

User should be able to click account details quick link in Retail Home Page
    wait until element is visible    ${HomePageAccountQuickLink}    10
    scroll element into view    ${HomePageAccountQuickLink}
    capture element screenshot    ${HomePageAccountQuickLink}
    click element    ${HomePageAccountQuickLink}
    wait until element is visible    ${Retail_AccountProfileAccountsDetailsPanelContainer}    10
    capture element screenshot    ${Retail_AccountProfileAccountsDetailsPanelContainer}
    sleep    2

User should be able to click shop by category accessories & audio in Retail Home Page
    wait until element is visible    ${Retail_HomePageShopByCategoryAccessoriesButton}    10
    scroll element into view    ${Retail_HomePageShopByCategoryAccessoriesButton}
    capture element screenshot    ${Retail_HomePageShopByCategoryAccessoriesButton}
    click element    ${Retail_HomePageShopByCategoryAccessoriesButton}
    sleep    2
    capture page screenshot
    sleep    2

User should be able to click shop by category aircon & heating in Retail Home Page
    wait until element is visible    ${Retail_HomePageShopByCategoryAirconButton}    10
    scroll element into view    ${Retail_HomePageShopByCategoryAirconButton}
    capture element screenshot    ${Retail_HomePageShopByCategoryAirconButton}
    click element    ${Retail_HomePageShopByCategoryAirconButton}
    sleep    2
    capture page screenshot
    sleep    2

User should be able to click shop by category belts & timing parts in Retail Home Page
    wait until element is visible    ${Retail_HomePageShopByCategoryBealtsButton}    10
    scroll element into view    ${Retail_HomePageShopByCategoryBealtsButton}
    capture element screenshot    ${Retail_HomePageShopByCategoryBealtsButton}
    click element    ${Retail_HomePageShopByCategoryBealtsButton}
    sleep    2
    capture page screenshot
    sleep    2

User should be able to click shop by category body parts in Retail Home Page
    wait until element is visible    ${Retail_HomePageShopByCategoryBodyPartsButton}    10
    scroll element into view    ${Retail_HomePageShopByCategoryBodyPartsButton}
    capture element screenshot    ${Retail_HomePageShopByCategoryBodyPartsButton}
    click element    ${Retail_HomePageShopByCategoryBodyPartsButton}
    sleep    2
    capture page screenshot
    sleep    2

User should be able to click shop by category brakes in Retail Home Page
    wait until element is visible    ${Retail_HomePageShopByCategoryBrakesButton}    10
    scroll element into view    ${Retail_HomePageShopByCategoryBrakesButton}
    capture element screenshot    ${Retail_HomePageShopByCategoryBrakesButton}
    click element    ${Retail_HomePageShopByCategoryBrakesButton}
    sleep    2
    capture page screenshot
    sleep    2

User should be able to click shop by category clutch & transmissions in Retail Home Page
    wait until element is visible    ${Retail_HomePageShopByCategoryClutchButton}    10
    scroll element into view    ${Retail_HomePageShopByCategoryClutchButton}
    capture element screenshot    ${Retail_HomePageShopByCategoryClutchButton}
    click element    ${Retail_HomePageShopByCategoryClutchButton}
    sleep    2
    capture page screenshot
    sleep    2

User should be able to click shop by category cooling in Retail Home Page
    wait until element is visible    ${Retail_HomePageShopByCategoryCoolingButton}    10
    scroll element into view    ${Retail_HomePageShopByCategoryCoolingButton}
    capture element screenshot    ${Retail_HomePageShopByCategoryCoolingButton}
    click element    ${Retail_HomePageShopByCategoryCoolingButton}
    sleep    2
    capture page screenshot
    sleep    2

User should be able to click shop by category electrical in Retail Home Page
    wait until element is visible    ${Retail_HomePageShopByCategoryElectricalButton}    10
    scroll element into view    ${Retail_HomePageShopByCategoryElectricalButton}
    capture element screenshot    ${Retail_HomePageShopByCategoryElectricalButton}
    click element    ${Retail_HomePageShopByCategoryElectricalButton}
    sleep    2
    capture page screenshot
    sleep    2

User should be able to click shop by category engine parts in Retail Home Page
    wait until element is visible    ${Retail_HomePageShopByCategoryEnginePartsButton}    10
    scroll element into view    ${Retail_HomePageShopByCategoryEnginePartsButton}
    capture element screenshot    ${Retail_HomePageShopByCategoryEnginePartsButton}
    click element    ${Retail_HomePageShopByCategoryEnginePartsButton}
    sleep    2
    capture page screenshot
    sleep    2

User should be able to click shop by category exhaust & emission in Retail Home Page
    wait until element is visible    ${Retail_HomePageShopByCategoryExhaustButton}    10
    scroll element into view    ${Retail_HomePageShopByCategoryExhaustButton}
    capture element screenshot    ${Retail_HomePageShopByCategoryExhaustButton}
    click element    ${Retail_HomePageShopByCategoryExhaustButton}
    sleep    2
    capture page screenshot
    sleep    2

User should be able to click shop by category filters & oil in Retail Home Page
    wait until element is visible    ${Retail_HomePageShopByCategoryFiltersButton}    10
    scroll element into view    ${Retail_HomePageShopByCategoryFiltersButton}
    capture element screenshot    ${Retail_HomePageShopByCategoryFiltersButton}
    click element    ${Retail_HomePageShopByCategoryFiltersButton}
    sleep    2
    capture page screenshot
    sleep    2

User should be able to click shop by category fuel system in Retail Home Page
    wait until element is visible    ${Retail_HomePageShopByCategoryFuelSystemButton}    10
    scroll element into view    ${Retail_HomePageShopByCategoryFuelSystemButton}
    capture element screenshot    ${Retail_HomePageShopByCategoryFuelSystemButton}
    click element    ${Retail_HomePageShopByCategoryFuelSystemButton}
    sleep    2
    capture page screenshot
    sleep    2

User should be able to click shop by category gasket in Retail Home Page
    wait until element is visible    ${Retail_HomePageShopByCategoryGasketButton}    10
    scroll element into view    ${Retail_HomePageShopByCategoryGasketButton}
    capture element screenshot    ${Retail_HomePageShopByCategoryGasketButton}
    click element    ${Retail_HomePageShopByCategoryGasketButton}
    sleep    2
    capture page screenshot
    sleep    2

User should be able to click shop by category ignition, start & charge in Retail Home Page
    wait until element is visible    ${Retail_HomePageShopByCategoryIngnitionButton}    10
    scroll element into view    ${Retail_HomePageShopByCategoryIngnitionButton}
    capture element screenshot    ${Retail_HomePageShopByCategoryIngnitionButton}
    click element    ${Retail_HomePageShopByCategoryIngnitionButton}
    sleep    2
    capture page screenshot
    sleep    2

User should be able to click shop by category service parts in Retail Home Page
    wait until element is visible    ${Retail_HomePageShopByCategoryServicepartsButton}    10
    scroll element into view    ${Retail_HomePageShopByCategoryServicepartsButton}
    capture element screenshot    ${Retail_HomePageShopByCategoryServicepartsButton}
    click element    ${Retail_HomePageShopByCategoryServicepartsButton}
    sleep    2
    capture page screenshot
    sleep    2

User should be able to click shop by category shafts axles & wheels in Retail Home Page
    wait until element is visible    ${Retail_HomePageShopByCategoryShaftsButton}    10
    scroll element into view    ${Retail_HomePageShopByCategoryShaftsButton}
    capture element screenshot    ${Retail_HomePageShopByCategoryShaftsButton}
    click element    ${Retail_HomePageShopByCategoryShaftsButton}
    sleep    2
    capture page screenshot
    sleep    2

User should be able to click shop by category steering in Retail Home Page
    wait until element is visible    ${HomePageShopByCategorySteeringButton}    10
    scroll element into view    ${HomePageShopByCategorySteeringButton}
    capture element screenshot    ${HomePageShopByCategorySteeringButton}
    click element    ${HomePageShopByCategorySteeringButton}
    sleep    2
    capture page screenshot
    sleep    2

User should be able to click shop by category suspension in Retail Home Page
    wait until element is visible    ${Retail_HomePageShopByCategorySuspensionButton}    10
    scroll element into view    ${Retail_HomePageShopByCategorySuspensionButton}
    capture element screenshot    ${Retail_HomePageShopByCategorySuspensionButton}
    click element    ${Retail_HomePageShopByCategorySuspensionButton}
    sleep    2
    capture page screenshot
    sleep    2

User should be able to click shop by category all in Retail Home Page
    wait until element is visible    ${Retail_HomePageShopByCategoryAllButton}    10
    scroll element into view    ${Retail_HomePageShopByCategoryAllButton}
    capture element screenshot    ${Retail_HomePageShopByCategoryAllButton}
    click element    ${Retail_HomePageShopByCategoryAllButton}
    sleep    2
    capture page screenshot
    sleep    2

User should be able to click show all categories in Retail Home Page
    wait until element is visible    ${Retail_HomePageShopByCategoryShowAllCategoriesButton}    10
    scroll element into view    ${Retail_HomePageShopByCategoryShowAllCategoriesButton}
    capture element screenshot    ${Retail_HomePageShopByCategoryShowAllCategoriesButton}
    click element    ${Retail_HomePageShopByCategoryShowAllCategoriesButton}
    sleep    2
    capture page screenshot
    sleep    2


User should be able to click shop by category parts & service in HK Retail Home Page
    wait until element is visible    ${Retail_HK_HomePageShopByCategoryParts&ServiceButton}    10
    scroll element into view    ${Retail_HK_HomePageShopByCategoryParts&ServiceButton}
    capture element screenshot    ${Retail_HK_HomePageShopByCategoryParts&ServiceButton}
    click element    ${Retail_HK_HomePageShopByCategoryParts&ServiceButton}
    sleep    2
    capture page screenshot
    sleep    2

User should be able to click shop by category paint & panel in HK Retail Home Page
    wait until element is visible    ${Retail_HK_HomePageShopByCategoryPaint&PanelButton}    10
    scroll element into view    ${Retail_HK_HomePageShopByCategoryPaint&PanelButton}
    capture element screenshot    ${Retail_HK_HomePageShopByCategoryPaint&PanelButton}
    click element    ${Retail_HK_HomePageShopByCategoryPaint&PanelButton}
    sleep    2
    capture page screenshot
    sleep    2

User should be able to click shop by category batteries & electrical in HK Retail Home Page
    wait until element is visible    ${Retail_HK_HomePageShopByCategoryBatteries&ElectricalButton}    10
    scroll element into view    ${Retail_HK_HomePageShopByCategoryBatteries&ElectricalButton}
    capture element screenshot    ${Retail_HK_HomePageShopByCategoryBatteries&ElectricalButton}
    click element    ${Retail_HK_HomePageShopByCategoryBatteries&ElectricalButton}
    sleep    2
    capture page screenshot
    sleep    2

User should be able to click shop by category car care & accessories in HK Retail Home Page
    wait until element is visible    ${Retail_HK_HomePageShopByCategoryCarCare&AccessoriesButton}    10
    scroll element into view    ${Retail_HK_HomePageShopByCategoryCarCare&AccessoriesButton}
    capture element screenshot    ${Retail_HK_HomePageShopByCategoryCarCare&AccessoriesButton}
    click element    ${Retail_HK_HomePageShopByCategoryCarCare&AccessoriesButton}
    sleep    2
    capture page screenshot
    sleep    2

User should be able to click shop by category performance in HK Retail Home Page
    wait until element is visible    ${Retail_HK_HomePageShopByCategoryPerformanceButton}    10
    scroll element into view    ${Retail_HK_HomePageShopByCategoryPerformanceButton}
    capture element screenshot    ${Retail_HK_HomePageShopByCategoryPerformanceButton}
    click element    ${Retail_HK_HomePageShopByCategoryPerformanceButton}
    sleep    2
    capture page screenshot
    sleep    2

User should be able to click shop by category oils & fluids in HK Retail Home Page
    wait until element is visible    ${Retail_HK_HomePageShopByCategoryOils&FluidsButton}    10
    scroll element into view    ${Retail_HK_HomePageShopByCategoryOils&FluidsButton}
    capture element screenshot    ${Retail_HK_HomePageShopByCategoryOils&FluidsButton}
    click element    ${Retail_HK_HomePageShopByCategoryOils&FluidsButton}
    sleep    2
    capture page screenshot
    sleep    2

User should be able to click shop by category in car tech in HK Retail Home Page
    wait until element is visible    ${Retail_HK_HomePageShopByCategoryInCarTechButton}    10
    scroll element into view    ${Retail_HK_HomePageShopByCategoryInCarTechButton}
    capture element screenshot    ${Retail_HK_HomePageShopByCategoryInCarTechButton}
    click element    ${Retail_HK_HomePageShopByCategoryInCarTechButton}
    sleep    2
    capture page screenshot
    sleep    2

User should be able to click shop by category other in HK Retail Home Page
    wait until element is visible    ${Retail_HK_HomePageShopByCategoryOtherButton}    10
    scroll element into view    ${Retail_HK_HomePageShopByCategoryOtherButton}
    capture element screenshot    ${Retail_HK_HomePageShopByCategoryOtherButton}
    click element    ${Retail_HK_HomePageShopByCategoryOtherButton}
    sleep    2
    capture page screenshot
    sleep    2

User should be able to click shop by category Body Parts in HK Retail Home Page
    wait until element is visible    ${Retail_HK_HomePage_ShopByCategory_BodyParts_Button}    10
    scroll element into view    ${Retail_HK_HomePage_ShopByCategory_BodyParts_Button}
    capture element screenshot    ${Retail_HK_HomePage_ShopByCategory_BodyParts_Button}
    click element    ${Retail_HK_HomePage_ShopByCategory_BodyParts_Button}
    sleep    2
    capture page screenshot
    sleep    2

User should be able to click shop by category Chemicals in HK Retail Home Page
    wait until element is visible    ${Retail_HK_HomePage_ShopByCategory_Chemicals_Button}    10
    scroll element into view    ${Retail_HK_HomePage_ShopByCategory_Chemicals_Button}
    capture element screenshot    ${Retail_HK_HomePage_ShopByCategory_Chemicals_Button}
    click element    ${Retail_HK_HomePage_ShopByCategory_Chemicals_Button}
    sleep    2
    capture page screenshot
    sleep    2

User should be able to click shop by category Maintenance in HK Retail Home Page
    wait until element is visible    ${Retail_HK_HomePage_ShopByCategory_Maintenance_Button}    10
    scroll element into view    ${Retail_HK_HomePage_ShopByCategory_Maintenance_Button}
    capture element screenshot    ${Retail_HK_HomePage_ShopByCategory_Maintenance_Button}
    click element    ${Retail_HK_HomePage_ShopByCategory_Maintenance_Button}
    sleep    2
    capture page screenshot
    sleep    2

User should be able to click shop by category Repair Parts in HK Retail Home Page
    wait until element is visible    ${Retail_HK_HomePage_ShopByCategory_RepairParts_Button}    10
    scroll element into view    ${Retail_HK_HomePage_ShopByCategory_RepairParts_Button}
    capture element screenshot    ${Retail_HK_HomePage_ShopByCategory_RepairParts_Button}
    click element    ${Retail_HK_HomePage_ShopByCategory_RepairParts_Button}
    sleep    2
    capture page screenshot
    sleep    2

User should be able to click shop by category Toyota Hybrid in HK Retail Home Page
    wait until element is visible    ${Retail_HK_HomePage_ShopByCategory_ToyotaHybrid_Button}    10
    scroll element into view    ${Retail_HK_HomePage_ShopByCategory_ToyotaHybrid_Button}
    capture element screenshot    ${Retail_HK_HomePage_ShopByCategory_ToyotaHybrid_Button}
    click element    ${Retail_HK_HomePage_ShopByCategory_ToyotaHybrid_Button}
    sleep    2
    capture page screenshot
    sleep    2




User should be albe to View Search Vehicle in HK Retail Home Page
    wait until element is visible    ${Retail_HK_HomePage_SearchVehicle_Container}    10
    capture element screenshot    ${Retail_HK_HomePage_SearchVehicle_Container}
    sleep    2

User should be albe to View Search VIN in HK Retail Home Page
    wait until element is visible    ${Retail_HK_HomePage_SearchVIN_Container}    10
    capture element screenshot    ${Retail_HK_HomePage_SearchVIN_Container}
    sleep    2

User should be albe to Input Search VIN1 in HK Retail Home Page
    wait until element is visible    ${Retail_HK_HomePage_SearchVIN_TextBox}    10
    clear element text    ${Retail_HK_HomePage_SearchVIN_TextBox}
    input text    ${Retail_HK_HomePage_SearchVIN_TextBox}    ${Retail_HK_HomePage_SearchVIN_TextBox_Value1}
    capture element screenshot    ${Retail_HK_HomePage_SearchVIN_TextBox}
    sleep    2

User should be albe to Input Search VIN2 in HK Retail Home Page
    wait until element is visible    ${Retail_HK_HomePage_SearchVIN_TextBox}    10
    clear element text    ${Retail_HK_HomePage_SearchVIN_TextBox}
    input text    ${Retail_HK_HomePage_SearchVIN_TextBox}    ${Retail_HK_HomePage_SearchVIN_TextBox_Value2}
    capture element screenshot    ${Retail_HK_HomePage_SearchVIN_TextBox}
    sleep    2

User should be albe to Input Search VIN3 in HK Retail Home Page
    wait until element is visible    ${Retail_HK_HomePage_SearchVIN_TextBox}    10
    clear element text    ${Retail_HK_HomePage_SearchVIN_TextBox}
    input text    ${Retail_HK_HomePage_SearchVIN_TextBox}    ${Retail_HK_HomePage_SearchVIN_TextBox_Value3}
    capture element screenshot    ${Retail_HK_HomePage_SearchVIN_TextBox}
    sleep    2

User should be albe to Input Search VIN4 in HK Retail Home Page
    wait until element is visible    ${Retail_HK_HomePage_SearchVIN_TextBox}    10
    clear element text    ${Retail_HK_HomePage_SearchVIN_TextBox}
    input text    ${Retail_HK_HomePage_SearchVIN_TextBox}    ${Retail_HK_HomePage_SearchVIN_TextBox_Value4}
    capture element screenshot    ${Retail_HK_HomePage_SearchVIN_TextBox}
    sleep    2

User should be albe to Input Search VIN5 in HK Retail Home Page
    wait until element is visible    ${Retail_HK_HomePage_SearchVIN_TextBox}    10
    clear element text    ${Retail_HK_HomePage_SearchVIN_TextBox}
    input text    ${Retail_HK_HomePage_SearchVIN_TextBox}    ${Retail_HK_HomePage_SearchVIN_TextBox_Value5}
    capture element screenshot    ${Retail_HK_HomePage_SearchVIN_TextBox}
    sleep    2

User should be albe to Click Search VIN in HK Retail Home Page
    wait until element is visible    ${Retail_HK_HomePage_SearchVIN_Button}    10
    capture element screenshot    ${Retail_HK_HomePage_SearchVIN_Button}
    click element    ${Retail_HK_HomePage_SearchVIN_Button}
    sleep    10

User should be able to click shop this vehicle in Pop up Vehicle Search in HK Retail Home Page
    wait until element is visible    ${Retail_HK_HomePage_SearchVIN_PopUp_Container}    10
    wait until element is visible    ${Retail_HK_HomePage_SearchVIN_PopUp_ShopVehicle_Button}    10
    capture element screenshot    ${Retail_HK_HomePage_SearchVIN_PopUp_ShopVehicle_Button}
    click element    ${Retail_HK_HomePage_SearchVIN_PopUp_ShopVehicle_Button}
    sleep    2

User should be able to click save this vehicle in Pop up Vehicle Search in HK Retail Home Page
    wait until element is visible    ${Retail_HK_HomePage_SearchVIN_PopUp_Container}    10
    wait until element is visible    ${Retail_HK_HomePage_SearchVIN_PopUp_SaveVehicle_Button}    10
    capture element screenshot    ${Retail_HK_HomePage_SearchVIN_PopUp_SaveVehicle_Button}
    click element    ${Retail_HK_HomePage_SearchVIN_PopUp_SaveVehicle_Button}
    sleep    2

User should be able to click search again in Pop up Vehicle Search in HK Retail Home Page
    wait until element is visible    ${Retail_HK_HomePage_SearchVIN_PopUp_Container}    10
    wait until element is visible    ${Retail_HK_HomePage_SearchVIN_PopUp_Search_Button}    10
    capture element screenshot    ${Retail_HK_HomePage_SearchVIN_PopUp_Search_Button}
    click element    ${Retail_HK_HomePage_SearchVIN_PopUp_Search_Button}
    sleep    2






























