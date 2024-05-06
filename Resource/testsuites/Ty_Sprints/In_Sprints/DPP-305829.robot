*** Settings ***
Documentation    Suite description

Library    SeleniumLibrary
Library    Process
Library    String


Resource  ../../../../Resource/testdata/Retail/AU_Config/S2/AU_S2_Config.robot
Resource  ../../../../Resource/testdata/Retail/Retail_Variable.robot
Resource  ../../../../Resource/testdata/Retail/Retail_Resource.robot


*** Test Cases ***
Test Setup  Run Keywords   Open Chrome Browser
Screen Shot DIR  Run Keywords    Retail Screent Shot DIR

TC-001 - Verify Login Page
    [Tags]    Login Page
    run keyword and continue on failure    Verify Login Page
    run keyword and continue on failure    Verify Login Page Elements

TC-002 - Input Valid Username
    [Tags]    Login Page
    run keyword and continue on failure    Input Valid Username

TC-003 - Input Valid Password
    [Tags]    Login Page
    run keyword and continue on failure    Input Valid Password

TC-004 - User should be able to click Login Button
    [Tags]    Login Page
    run keyword and continue on failure    User should be able to click Login Button
    run keyword and continue on failure    TC Sleep

TC-005 - User should be able to view All Parts Page
    [Tags]    All Products Page
    run keyword and continue on failure    User should be able to view All Parts Page

TC-006 - User should be able to click information button for in stock and dc stock in Retail Products Page
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

TC-007 - User should be able to click information button for out of stock and dc stock in Retail Products Page
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

