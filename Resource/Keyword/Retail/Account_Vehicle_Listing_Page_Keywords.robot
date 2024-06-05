*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary

#Resource  ../../../Resource/testdata/config.robot
Resource  ../../../Resource/testdata/Retail/Retail_Variable.robot
Resource  ../../../Resource/testdata/credentials.robot


*** Keywords ***

#-----------------------------------------------------Vehicle Listing Page-----------------------------------------------
User should be able to view account vehicle listing page
    wait until element is visible    ${Retail_AccountpageVehicleListingMenu}    10
    click element    ${Retail_AccountpageVehicleListingMenu}
    sleep    5
    capture page screenshot
    sleep    2

User should be able to view vehicle listing Panel
    wait until element is visible    ${Retail_AccountVehicleListingPagePanelContainer}    10
    capture element screenshot    ${Retail_AccountVehicleListingPagePanelContainer}
    sleep    2

User should be able to view HK vehicle listing Panel
    wait until element is visible    ${Retail_HK_AccountVehicleListingPage_Container}    10
    wait until element is visible    ${Retail_HK_AccountVehicleListingPage_Header}    10
    capture element screenshot    ${Retail_HK_AccountVehicleListingPage_Container}
    capture element screenshot    ${Retail_HK_AccountVehicleListingPage_Header}
    sleep    2


User should be able to click Select Your Vehicle
    wait until element is visible    ${HomePageSelectVehicle}    10
    capture element screenshot    ${HomePageSelectVehicle}
    click element    ${HomePageSelectVehicle}
    sleep    2

User should be able to click add new vehicle in Retail Account Vehicle Listing Page
    wait until element is visible    ${Retail_AccountVehicleListingPageAddVehicleButton}    10
    capture element screenshot    ${Retail_AccountVehicleListingPageAddVehicleButton}
    click element    ${Retail_AccountVehicleListingPageAddVehicleButton}
    sleep    2

User should be able to click shop this vehicle in Retail Account Vehicle Listing Page
    wait until element is visible    ${Retail_AccountVehicleListingPageVehicleCardListShopVehicleButton}    10
    capture element screenshot    ${Retail_AccountVehicleListingPageVehicleCardListShopVehicleButton}
    click element    ${Retail_AccountVehicleListingPageVehicleCardListShopVehicleButton}
    sleep    2

User should be able to click shop this vehicle in HK Retail Account Vehicle Listing Page
    wait until element is visible    ${Retail_HK_AccountVehicleListingPage_VehicleCardList_ShopVehicle_Button}    10
    capture element screenshot    ${Retail_HK_AccountVehicleListingPage_VehicleCardList_ShopVehicle_Button}
    click element    ${Retail_HK_AccountVehicleListingPage_VehicleCardList_ShopVehicle_Button}
    sleep    2

User should be able to click delete in Retail Account Vehicle Listing Page
    wait until element is visible    ${Retail_AccountVehicleListingPageVehicleCardListDeleteButton}    10
    capture element screenshot    ${Retail_AccountVehicleListingPageVehicleCardListDeleteButton}
    click element    ${Retail_AccountVehicleListingPageVehicleCardListDeleteButton}
    sleep    2

User should be able to click delete in HK Retail Account Vehicle Listing Page
    wait until element is visible    ${Retail_HK_AccountVehicleListingPage_VehicleCardList_Delete_Button}    10
    capture element screenshot    ${Retail_HK_AccountVehicleListingPage_VehicleCardList_Delete_Button}
    click element    ${Retail_HK_AccountVehicleListingPage_VehicleCardList_Delete_Button}
    sleep    2

User should be able to click no on confirm deletion in Retail Account Vehicle Listing Page
    wait until element is visible    ${Retail_AccountVehicleListingPageVehicleCardListDeletePopUpContainer}    10
    wait until element is visible    ${Retail_AccountVehicleListingPageVehicleCardListDeletePopUpNoButton}    10
    capture element screenshot    ${Retail_AccountVehicleListingPageVehicleCardListDeletePopUpNoButton}
    click element    ${Retail_AccountVehicleListingPageVehicleCardListDeletePopUpNoButton}
    sleep    2

User should be able to click yes on confirm deletion in Retail Account Vehicle Listing Page
    wait until element is visible    ${Retail_AccountVehicleListingPageVehicleCardListDeletePopUpContainer}    10
    wait until element is visible    ${Retail_AccountVehicleListingPageVehicleCardListDeletePopUpYesButton}    10
    capture element screenshot    ${Retail_AccountVehicleListingPageVehicleCardListDeletePopUpYesButton}
    click element    ${Retail_AccountVehicleListingPageVehicleCardListDeletePopUpYesButton}
    sleep    2

User should be able to click add new vehicle in Retail Select Vehicle
    wait until element is visible    ${Retail_AccountVehicleListingPageSelectVehicleContainer}    10
    wait until element is visible    ${Retail_AccountVehicleListingPageSelectVehicleAddVehicleButton}    10
    capture element screenshot    ${Retail_AccountVehicleListingPageSelectVehicleAddVehicleButton}
    click element    ${Retail_AccountVehicleListingPageSelectVehicleAddVehicleButton}
    sleep    2

User should be able to click add new vehicle in HK Retail Select Vehicle
    wait until element is visible    ${Retail_HK_AccountVehicleListingPage_SelectVehicle_Container}    10
    wait until element is visible    ${Retail_HK_AccountVehicleListingPage_SelectVehicleAddVehicle_Button}    10
    capture element screenshot    ${Retail_HK_AccountVehicleListingPage_SelectVehicleAddVehicle_Button}
    click element    ${Retail_HK_AccountVehicleListingPage_SelectVehicleAddVehicle_Button}
    sleep    2

User should be able to view add vehicle in Retail Select Vehicle
    wait until element is visible    ${Retail_AccountVehicleListingPageSelectVehicleContainer}    10
#    wait until element is visible    ${Retail_AccountVehicleListingPageSelectVehicleStateComboBox}    10
#    wait until element is visible    ${Retail_AccountVehicleListingPageSelectVehicleRegoTextBox}    10
#    wait until element is visible    ${Retail_AccountVehicleListingPageSelectVehicleVINNumTextBox}    10
#    wait until element is visible    ${Retail_AccountVehicleListingPageSelectVehicleSubmitButton}    10
#    wait until element is visible    ${Retail_AccountVehicleListingPageSelectVehicleSearchModelButton}

    capture element screenshot    ${Retail_AccountVehicleListingPageSelectVehicleContainer}
#    capture element screenshot    ${Retail_AccountVehicleListingPageSelectVehicleStateComboBox}
#    capture element screenshot    ${Retail_AccountVehicleListingPageSelectVehicleRegoTextBox}
#    capture element screenshot    ${Retail_AccountVehicleListingPageSelectVehicleVINNumTextBox}
#    capture element screenshot    ${Retail_AccountVehicleListingPageSelectVehicleSubmitButton}
#    capture element screenshot    ${Retail_AccountVehicleListingPageSelectVehicleSearchModelButton}

    sleep    5

User should be able to view add vehicle in HK Retail Select Vehicle
    wait until element is visible    ${Retail_HK_AccountVehicleListingPage_SelectVehicle_Container}    10
#    wait until element is visible    ${Retail_AccountVehicleListingPageSelectVehicleStateComboBox}    10
#    wait until element is visible    ${Retail_AccountVehicleListingPageSelectVehicleRegoTextBox}    10
#    wait until element is visible    ${Retail_AccountVehicleListingPageSelectVehicleVINNumTextBox}    10
#    wait until element is visible    ${Retail_AccountVehicleListingPageSelectVehicleSubmitButton}    10
#    wait until element is visible    ${Retail_AccountVehicleListingPageSelectVehicleSearchModelButton}

    capture element screenshot    ${Retail_HK_AccountVehicleListingPage_SelectVehicle_Container}
#    capture element screenshot    ${Retail_AccountVehicleListingPageSelectVehicleStateComboBox}
#    capture element screenshot    ${Retail_AccountVehicleListingPageSelectVehicleRegoTextBox}
#    capture element screenshot    ${Retail_AccountVehicleListingPageSelectVehicleVINNumTextBox}
#    capture element screenshot    ${Retail_AccountVehicleListingPageSelectVehicleSubmitButton}
#    capture element screenshot    ${Retail_AccountVehicleListingPageSelectVehicleSearchModelButton}

    sleep    2

User should be able to select state in Retail Select Vehicle
    wait until element is visible    ${Retail_AccountVehicleListingPageSelectVehicleStateComboBox}    10
    click element    ${Retail_AccountVehicleListingPageSelectVehicleStateComboBox}
    wait until element is visible    ${Retail_AccountVehicleListingPageSelectVehicleStateComboBoxList}    10
    capture element screenshot    ${Retail_AccountVehicleListingPageSelectVehicleStateComboBoxList}
    capture element screenshot    ${Retail_AccountVehicleListingPageSelectVehicleStateComboBoxListSouthWales}
    click element    ${Retail_AccountVehicleListingPageSelectVehicleStateComboBoxListSouthWales}
    sleep    2

User should be able to input rego in Retail Select Vehicle
    wait until element is visible    ${Retail_AccountVehicleListingPageSelectVehicleRegoTextBox}    10
    clear element text    ${Retail_AccountVehicleListingPageSelectVehicleRegoTextBox}
    input text    ${Retail_AccountVehicleListingPageSelectVehicleRegoTextBox}    ${Retail_AccountVehicleListingPageSelectVehicleRegoValue}
    capture element screenshot    ${Retail_AccountVehicleListingPageSelectVehicleRegoTextBox}
    sleep    2

User should be albe to inout vin in Retail Select Vehicle
    wait until element is visible    ${Retail_AccountVehicleListingPageSelectVehicleVINNumTextBox}    10
    clear element text    ${Retail_AccountVehicleListingPageSelectVehicleVINNumTextBox}
    input text    ${Retail_AccountVehicleListingPageSelectVehicleVINNumTextBox}    ${Retail_AccountVehicleListingPageSelectVehicleVINNumValue}
    capture element screenshot    ${Retail_AccountVehicleListingPageSelectVehicleVINNumTextBox}
    sleep    2

User should be albe to click search button in Retail Select Vehicle
    wait until element is visible    ${Retail_AccountVehicleListingPageSelectVehicleSubmitButton}    10
    capture element screenshot    ${Retail_AccountVehicleListingPageSelectVehicleSubmitButton}
    click element    ${Retail_AccountVehicleListingPageSelectVehicleSubmitButton}
    sleep    5

User should be able to click search by make and model button in Retail Select Vehicle
    wait until element is visible    ${Retail_AccountVehicleListingPageSelectVehicleSearchModelButton}    10
    capture element screenshot    ${Retail_AccountVehicleListingPageSelectVehicleSearchModelButton}
    click element    ${Retail_AccountVehicleListingPageSelectVehicleSearchModelButton}
    sleep    2

User should be albe to search invalid rego vehicle in Retail Select Vehicle
    wait until element is visible    ${Retail_AccountVehicleListingPageSelectVehicleStateComboBox}    10
    click element    ${Retail_AccountVehicleListingPageSelectVehicleStateComboBox}
    wait until element is visible    ${Retail_AccountVehicleListingPageSelectVehicleStateComboBoxList}    10
    click element    ${Retail_AccountVehicleListingPageSelectVehicleStateComboBoxListOpt1}
    wait until element is visible    ${Retail_AccountVehicleListingPageSelectVehicleRegoTextBox}    10
    clear element text    ${Retail_AccountVehicleListingPageSelectVehicleRegoTextBox}
    input text    ${Retail_AccountVehicleListingPageSelectVehicleRegoTextBox}    ${Retail_AccountVehicleListingPageSelectVehicleRegoInvalidValue}
    capture element screenshot    ${Retail_AccountVehicleListingPageSelectVehicleRegoTextBox}
    click element    ${Retail_AccountVehicleListingPageSelectVehicleSubmitButton}
    sleep    2

User should be able to view no search result modal in Retail Select Vehicle
    wait until element is visible    ${Retail_AccountVehicleListingPageSelectVehicleSearchNoResultContainer}    10
    wait until element is visible    ${Retail_AccountVehicleListingPageSelectVehicleSearchNoResultSearchModelButton}    10
    wait until element is visible    ${Retail_AccountVehicleListingPageSelectVehicleSearchNoResultSearchManuallyButton}    10
    wait until element is visible    ${Retail_AccountVehicleListingPageSelectVehicleSearchNoResultSearchAgainButton}    10

    capture element screenshot    ${Retail_AccountVehicleListingPageSelectVehicleSearchNoResultContainer}
    capture element screenshot    ${Retail_AccountVehicleListingPageSelectVehicleSearchNoResultSearchModelButton}
    capture element screenshot    ${Retail_AccountVehicleListingPageSelectVehicleSearchNoResultSearchManuallyButton}
    capture element screenshot    ${Retail_AccountVehicleListingPageSelectVehicleSearchNoResultSearchAgainButton}

    sleep    2

User should be albe to click seach by make and model on no search result modal in Retail Select Vehicle
    wait until element is visible    ${Retail_AccountVehicleListingPageSelectVehicleSearchNoResultSearchModelButton}    10
    capture element screenshot    ${Retail_AccountVehicleListingPageSelectVehicleSearchNoResultSearchModelButton}
    click element    ${Retail_AccountVehicleListingPageSelectVehicleSearchNoResultSearchModelButton}
    sleep    2

User should be albe to click seach manually on no search result modal in Retail Select Vehicle
    wait until element is visible    ${Retail_AccountVehicleListingPageSelectVehicleSearchNoResultSearchManuallyButton}    10
    capture element screenshot    ${Retail_AccountVehicleListingPageSelectVehicleSearchNoResultSearchManuallyButton}
    click element    ${Retail_AccountVehicleListingPageSelectVehicleSearchNoResultSearchManuallyButton}
    sleep    2

User should be albe to click search again on no search result modal in Retail Select Vehicle
    wait until element is visible    ${Retail_AccountVehicleListingPageSelectVehicleSearchNoResultSearchAgainButton}    10
    capture element screenshot    ${Retail_AccountVehicleListingPageSelectVehicleSearchNoResultSearchAgainButton}
    click element    ${Retail_AccountVehicleListingPageSelectVehicleSearchNoResultSearchAgainButton}
    sleep    2

User should be able to view manual search modal in Retail Select Vehicle
    wait until element is visible    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualContainer}    10
    wait until element is visible    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualMakerComboBox}     10
    wait until element is visible    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualModelComboBox}    10
    wait until element is visible    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualYearComboBox}    10
    wait until element is visible    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualSeriesComboBox}    10
    wait until element is visible    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualEngineComboBox}    10
    wait until element is visible    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualDetailsComboBox}    10
    wait until element is visible    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualSearchButton}    10
    wait until element is visible    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualSearchRegoButton}    10

    capture element screenshot    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualContainer}
    capture element screenshot    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualMakerComboBox}
    capture element screenshot    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualModelComboBox}
    capture element screenshot    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualYearComboBox}
    capture element screenshot    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualSeriesComboBox}
    capture element screenshot    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualEngineComboBox}
    capture element screenshot    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualDetailsComboBox}
    capture element screenshot    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualSearchButton}
    capture element screenshot    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualSearchRegoButton}

    sleep    2

User should be able to click model on manual search in Retail Select Vehicle
    wait until element is enabled    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualModelComboBox}    10
    wait until element is visible    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualModelComboBox}    10
    capture element screenshot    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualModelComboBox}
    click element    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualModelComboBox}
    sleep    2

User should be able to select model on manual search in Retail Select Vehicle
    ${RandomModelIndexCount}    get element count    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualModelListOpt}
    ${RandomModelIndex}    evaluate    random.randint(1,${RandomModelIndexCount})
    mouse over    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualModelListOpt1}
    wait until element is visible    (//div[@class='ng-dropdown-panel-items scroll-host']//span[@title!='---Popular Models---' and @title!='----All Models----' ])|(//div[@class='ng-dropdown-panel-items scroll-host']//span[@class!='---Popular Models---' and @class!='----All Models----' ])[${RandomModelIndex}]    10
    scroll element into view    (//div[@class='ng-dropdown-panel-items scroll-host']//span[@title!='---Popular Models---' and @title!='----All Models----' ])|(//div[@class='ng-dropdown-panel-items scroll-host']//span[@class!='---Popular Models---' and @class!='----All Models----' ])[${RandomModelIndex}]
    capture element screenshot    (//div[@class='ng-dropdown-panel-items scroll-host']//span[@title!='---Popular Models---' and @title!='----All Models----' ])|(//div[@class='ng-dropdown-panel-items scroll-host']//span[@class!='---Popular Models---' and @class!='----All Models----' ])[${RandomModelIndex}]
    click element    (//div[@class='ng-dropdown-panel-items scroll-host']//span[@title!='---Popular Models---' and @title!='----All Models----' ])|(//div[@class='ng-dropdown-panel-items scroll-host']//span[@class!='---Popular Models---' and @class!='----All Models----' ])[${RandomModelIndex}]
    sleep    5

User should be able to click year on manual search in Retail Select Vehicle
    wait until element is enabled    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualYearComboBox}    10
    wait until element is visible    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualYearComboBox}    10
    capture element screenshot    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualYearComboBox}
    click element    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualYearComboBox}
    sleep    2

User should be able to select year on manual search in Retail Select Vehicle
    ${RandomYearIndexCount}    get element count    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualYearListOpt}
    ${RandomYearIndex}    evaluate    random.randint(1,${RandomYearIndexCount})
    mouse over    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualYearListOpt1}
    wait until element is visible    (//ng-dropdown-panel//div[@role='option'])[${RandomYearIndex}]    10
    scroll element into view    (//ng-dropdown-panel//div[@role='option'])[${RandomYearIndex}]
    capture element screenshot    (//ng-dropdown-panel//div[@role='option'])[${RandomYearIndex}]
    click element    (//ng-dropdown-panel//div[@role='option'])[${RandomYearIndex}]
    sleep    5

User should be able to click series on manual search in Retail Select Vehicle
    wait until element is enabled    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualSeriesComboBox}    10
    wait until element is visible    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualSeriesComboBox}    10
    capture element screenshot    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualSeriesComboBox}
    click element    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualSeriesComboBox}
    sleep    2

User should be able to select series on manual search in Retail Select Vehicle
    ${RandomSeriesIndexCount}    get element count    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualSeriesListOpt}
    ${RandomSeriesIndex}    evaluate    random.randint(1,${RandomSeriesIndexCount})
    mouse over    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualSeriesListOpt1}
    wait until element is visible    (//ng-dropdown-panel//div[@role='option'])[${RandomSeriesIndex}]    10
    scroll element into view    (//ng-dropdown-panel//div[@role='option'])[${RandomSeriesIndex}]
    capture element screenshot    (//ng-dropdown-panel//div[@role='option'])[${RandomSeriesIndex}]
    click element    (//ng-dropdown-panel//div[@role='option'])[${RandomSeriesIndex}]
    sleep    5

User should be able to click engine on manual search in Retail Select Vehicle
    wait until element is enabled    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualEngineComboBox}    10
    wait until element is enabled    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualEngineComboBox}    10
    wait until element is visible    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualEngineComboBox}    10
    capture element screenshot    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualEngineComboBox}
    click element    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualEngineComboBox}
    sleep    2

User should be able to select engine on manual search in Retail Select Vehicle
    ${RandomEngineIndexCount}    get element count    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualEngineListOpt}
    ${RandomEngineIndex}    evaluate    random.randint(1,${RandomEngineIndexCount})
    mouse over    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualEngineListOpt1}
    wait until element is visible    (//ng-dropdown-panel//div[@role='option'])[${RandomEngineIndex}]    10
    scroll element into view    (//ng-dropdown-panel//div[@role='option'])[${RandomEngineIndex}]
    capture element screenshot    (//ng-dropdown-panel//div[@role='option'])[${RandomEngineIndex}]
    click element    (//ng-dropdown-panel//div[@role='option'])[${RandomEngineIndex}]
    sleep    5

User should be able to click details on manual search in Retail Select Vehicle
    wait until element is enabled    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualDetailsComboBox}    10
    wait until element is visible    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualDetailsComboBox}    10
    capture element screenshot    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualDetailsComboBox}
    click element    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualDetailsComboBox}
    sleep    2

User should be able to select details on manual search in Retail Select Vehicle
    ${RandomDetailsIndexCount}    get element count    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualDetailsListOpt}
    ${RandomDetailsIndex}    evaluate    random.randint(1,${RandomDetailsIndexCount})
    mouse over   ${Retail_AccountVehicleListingPageSelectVehicleSearchManualDetailsListOpt1}
    wait until element is visible    (//ng-dropdown-panel//div[@role='option'])[${RandomDetailsIndex}]    10
    scroll element into view    (//ng-dropdown-panel//div[@role='option'])[${RandomDetailsIndex}]
    capture element screenshot    (//ng-dropdown-panel//div[@role='option'])[${RandomDetailsIndex}]
    click element    (//ng-dropdown-panel//div[@role='option'])[${RandomDetailsIndex}]
    sleep    5

User should be able to click Model ID on manual search in HK Retail Select Vehicle
    wait until element is enabled    ${Retail_HK_AccountVehicleListingPage_SelectVehicle_SearchManual_ModelID_ComboBox}
    wait until element is visible    ${Retail_HK_AccountVehicleListingPage_SelectVehicle_SearchManual_ModelID_ComboBox}
    capture element screenshot    ${Retail_HK_AccountVehicleListingPage_SelectVehicle_SearchManual_ModelID_ComboBox}
    click element    ${Retail_HK_AccountVehicleListingPage_SelectVehicle_SearchManual_ModelID_ComboBox}
    sleep    2

User should be able to select Model ID on manual search in HK Retail Select Vehicle
    ${RandomModelIDIndexCount}    get element count    ${Retail_HK_AccountVehicleListingPage_SelectVehicle_SearchManual_ModelID_Opt}
    ${RandomModelIDIndex}    evaluate    random.randint(1,${RandomModelIDIndexCount})
    mouse over   ${Retail_HK_AccountVehicleListingPage_SelectVehicle_SearchManual_ModelID_Opt1}
    wait until element is visible    (//ng-dropdown-panel//div[@role='option'])[${RandomModelIDIndex}]    10
    scroll element into view    (//ng-dropdown-panel//div[@role='option'])[${RandomModelIDIndex}]
    capture element screenshot    (//ng-dropdown-panel//div[@role='option'])[${RandomModelIDIndex}]
    click element    (//ng-dropdown-panel//div[@role='option'])[${RandomModelIDIndex}]
    sleep    5


User shoud be albe to click search this vehicle on manual seearh in Retail Select Vehicle
    wait until element is visible    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualSearchButton}    10
    capture element screenshot    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualSearchButton}
    click element    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualSearchButton}
    sleep    5

User shoud be albe to click search this vehicle on manual seearh in HK Retail Select Vehicle
    wait until element is visible    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualSearchButton}    10
    capture element screenshot    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualSearchButton}
    click element    ${Retail_AccountVehicleListingPageSelectVehicleSearchManualSearchButton}
    sleep    5

User should be able to view valid search result in Retail Select Vehicle
    wait until element is visible    ${Retail_AccountVehicleListingPageSelectVehicleSearchResultContainer}    10
    wait until element is visible    ${Retail_AccountVehicleListingPageSelectVehicleSearchResultVehicleLabel}    10
    wait until element is visible    ${Retail_AccountVehicleListingPageSelectVehicleSearchResultSelectVehicleButton}    10
    wait until element is visible    ${Retail_AccountVehicleListingPageSelectVehicleSearchResultSelect&SaveVehicleButton}    10
    wait until element is visible    ${Retail_AccountVehicleListingPageSelectVehicleSearchResultSearchAgainButton}    10


    capture element screenshot    ${Retail_AccountVehicleListingPageSelectVehicleSearchResultContainer}
    capture element screenshot    ${Retail_AccountVehicleListingPageSelectVehicleSearchResultVehicleLabel}
    capture element screenshot    ${Retail_AccountVehicleListingPageSelectVehicleSearchResultSelectVehicleButton}
    capture element screenshot    ${Retail_AccountVehicleListingPageSelectVehicleSearchResultSelect&SaveVehicleButton}
    capture element screenshot    ${Retail_AccountVehicleListingPageSelectVehicleSearchResultSearchAgainButton}

    sleep    2

User should be able to click select this vehicle in Retail Select Vehicle
    wait until element is visible    ${Retail_AccountVehicleListingPageSelectVehicleSearchResultSelectVehicleButton}    10
    capture element screenshot    ${Retail_AccountVehicleListingPageSelectVehicleSearchResultSelectVehicleButton}
    click element    ${Retail_AccountVehicleListingPageSelectVehicleSearchResultSelectVehicleButton}
    sleep    15

User should be able to click select & save vehicle in Retail Select Vehicle
    wait until element is visible    ${Retail_AccountVehicleListingPageSelectVehicleSearchResultSelect&SaveVehicleButton}    10
    capture element screenshot    ${Retail_AccountVehicleListingPageSelectVehicleSearchResultSelect&SaveVehicleButton}
    click element    ${Retail_AccountVehicleListingPageSelectVehicleSearchResultSelect&SaveVehicleButton}
    sleep    2

User should be able to click search again in Retail Select Vehicle
    wait until element is visible    ${Retail_AccountVehicleListingPageSelectVehicleSearchResultSelect&SaveVehicleButton}    10
    capture element screenshot    ${Retail_AccountVehicleListingPageSelectVehicleSearchResultSelect&SaveVehicleButton}
    click element    ${Retail_AccountVehicleListingPageSelectVehicleSearchResultSelect&SaveVehicleButton}
    sleep    2

User should be able to click shop this vehicle on vehicle list in Retail Select Vehicle
    wait until element is visible    ${Retail_AccountVehicleListingPageShopThisVehicleButton}    10
    capture element screenshot    ${Retail_AccountVehicleListingPageShopThisVehicleButton}
    click element    ${Retail_AccountVehicleListingPageShopThisVehicleButton}
    sleep    2

User should be able to click shop this vehicle on selected vehicle in Retail Select Vehicle
    wait until element is visible    ${Retail_AccountVehicleListingPageSelectedVehicleShopThisVehicleButton}    10
    capture element screenshot    ${Retail_AccountVehicleListingPageSelectedVehicleShopThisVehicleButton}
    click element    ${Retail_AccountVehicleListingPageSelectedVehicleShopThisVehicleButton}
    sleep    2

User should be able to click clear vehicle on selected vehicle in Retail Select Vehicle
    wait until element is visible    ${Retail_AccountVehicleListingPageSelectedVehicleClearVehicleButton}    10
    capture element screenshot    ${Retail_AccountVehicleListingPageSelectedVehicleClearVehicleButton}
    click element    ${Retail_AccountVehicleListingPageSelectedVehicleClearVehicleButton}
    sleep    2

User should be able to view EPC Search Result Drop Down in HK Retail Vehicle Listing Page
    wait until element is visible    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Container}    10
    capture element screenshot    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Container}
    sleep    2

User should be able to view EPC Search Result Drop Down Elements in HK Retail Vehicle Listing Page
    wait until element is visible    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_VIN_Value}    10
    wait until element is visible    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_Model}    10
    wait until element is visible    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_ModelCode_Label}    10
    wait until element is visible    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_ModelCode_Value}    10
    wait until element is visible    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_Transmission_Label}    10
    wait until element is visible    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_Transmission_Value}    10
    wait until element is visible    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_Period_Label}    10
    wait until element is visible    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_Period_Value}    10
    wait until element is visible    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_Engine_Label}    10
    wait until element is visible    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_Engine_Value}    10
    wait until element is visible    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_ProductionDate_Label}    10
    wait until element is visible    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_ProductionDate_Value}    10

    wait until element is visible    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_Body_Label}    10
    wait until element is visible    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_Body_Value}    10
    wait until element is visible    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_Doors_Label}    10
    wait until element is visible    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_Doors_Value}    10
    wait until element is visible    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_SeatingCapacity_Label}    10
    wait until element is visible    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_SeatingCapacity_Value}    10
    wait until element is visible    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_Grade_Label}    10
    wait until element is visible    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_Grade_Value}    10
    wait until element is visible    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_Driverosition_Label}    10
    wait until element is visible    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_Driverosition_Value}    10

    capture element screenshot    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_VIN_Value}
    capture element screenshot    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_Model}
    capture element screenshot    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_ModelCode_Label}
    capture element screenshot    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_ModelCode_Value}
    capture element screenshot    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_Transmission_Label}
    capture element screenshot    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_Transmission_Value}
    capture element screenshot    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_Period_Label}
    capture element screenshot    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_Period_Value}
    capture element screenshot    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_Engine_Label}
    capture element screenshot    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_Engine_Value}
    capture element screenshot    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_ProductionDate_Label}
    capture element screenshot    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_ProductionDate_Value}

    capture element screenshot    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_Body_Label}
    capture element screenshot    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_Body_Value}
    capture element screenshot    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_Doors_Label}
    capture element screenshot    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_Doors_Value}
    capture element screenshot    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_SeatingCapacity_Label}
    capture element screenshot    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_SeatingCapacity_Value}
    capture element screenshot    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_Grade_Label}
    capture element screenshot    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_Grade_Value}
    capture element screenshot    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_Driverosition_Label}
    capture element screenshot    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_Car_Driverosition_Value}

    wait until element is visible    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_SaveShop_button}    10
    wait until element is visible    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_ShopThisVehicle_button}    10
    wait until element is visible    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_SearchAgain_button}    10

    capture element screenshot    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_SaveShop_button}
    capture element screenshot    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_ShopThisVehicle_button}
    capture element screenshot    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_SearchAgain_button}

User should be able to click Show More button in EPC Search Result Drop Down in HK Retail Vehicle Listing Page
    wait until element is visible    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_ShowMore_button}    10
    capture element screenshot    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_ShowMore_button}
    click element    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_ShowMore_button}
    sleep    2

User should be able to click Save and Shop in EPC Search Result Drop Down in HK Retail Vehicle Listing Page
    wait until element is visible    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_SaveShop_button}    10
    capture element screenshot    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_SaveShop_button}
    click element    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_SaveShop_button}
    sleep    5

User should be able to click Shop this vehicle in EPC Search Result Drop Down in HK Retail Vehicle Listing Page
    wait until element is visible    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_ShopThisVehicle_button}    10
    capture element screenshot    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_ShopThisVehicle_button}
    click element    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_ShopThisVehicle_button}
    sleep    5

User should be able to click Search Again in EPC Search Result Drop Down in HK Retail Vehicle Listing Page
    wait until element is visible   ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_SearchAgain_button}    10
    capture element screenshot    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_SearchAgain_button}
    click element    ${Retail_VehicleListing_HK_EPC_VehicleSearch_Dropdown_SearchAgain_button}
    sleep    5


User should be able to toggle radio button Select from Last 5 Searched Vehicle to Vehicle Listing
    wait until element is visible    ${HomePageSelectVehicle}    10
    click element    ${HomePageSelectVehicle}
    wait until element is visible    ${Retail_Selectyourvehicle_5searchedvehicles_Radiobutton}   10
    capture element screenshot    ${Retail_Selectyourvehicle_5searchedvehicles_Radiobutton}
    scroll element into view    ${Retail_Selectyourvehicle_Selectfromvehiclelisting_Addavehicle}
    click element    ${Retail_Selectyourvehicle_Selectfromvehiclelisting_Addavehicle}
    wait until element is visible    ${Retail_Selectyourvehicle_Selectfromvehiclelisting_AddavehicleRegoVIN}    5
    capture element screenshot    ${Retail_Selectyourvehicle_Selectfromvehiclelisting_AddavehicleRegoVIN}

User should be able to toggle radio button Select from your vehicle listing
    wait until element is visible    ${HomePageSelectVehicle}    10
    click element    ${HomePageSelectVehicle}
    wait until element is visible    ${Retail_Selectyourvehicle_Selectfromvehiclelisting_Radiobutton}    10
    click element    ${Retail_Selectyourvehicle_Selectfromvehiclelisting_Radiobutton}
    capture element screenshot    ${Retail_Selectyourvehicle_5searchedvehicles_Radiobutton}
    scroll element into view    ${Retail_Selectyourvehicle_Selectfromvehiclelisting_Addavehicle}
    click element    ${Retail_Selectyourvehicle_Selectfromvehiclelisting_Addavehicle}
    wait until element is visible    ${Retail_Selectyourvehicle_Selectfromvehiclelisting_AddavehicleRegoVIN}    5
    capture element screenshot    ${Retail_Selectyourvehicle_Selectfromvehiclelisting_AddavehicleRegoVIN}










