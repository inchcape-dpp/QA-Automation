*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary

#Resource  ../../../Resource/testdata/config.robot
Resource  ../../../Resource/testdata/Retail/Retail_Variable.robot
Resource  ../../../Resource/testdata/credentials.robot


*** Keywords ***
User should be able to input text on search bar
    wait until element is visible    ${HomePageSearhProduct}    10
    click element    ${HomePageSearhProduct}
    input text    ${HomePageSearhProduct}    ${ProductSearchValue}
    sleep    2

User should be able to click searched text
    wait until element is visible    ${HomePageSearchSuggestion}    10
    click element    ${HomePageSearchSuggestion}
    mouse over    ${HomePageLogo}
    sleep    3




#Loop Test
#    FOR    ${Nextpage}    IN RANGE    1    500
#      ${status}    run keyword and return status    element should be visible    ${ProductSelectionInStockOnlyProductNameContainer}
#      ${pagestatus}    run keyword and return status    element should be visible    ${AllProdPageDetailsNextPageButtonDisabled}
#      Log    ${status}
#      run keyword if    '${pagestatus}' == 'False'    User should be able to click next page
#      exit for loop if    '${status}' == 'True'
#      exit for loop if    '${pagestatus}' == 'True'
#    END