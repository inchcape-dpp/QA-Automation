*** Settings ***
Documentation    Suite description
Library    SeleniumLibrary
Library    OperatingSystem
Library    DateTime
#Library    String


Resource  ../../../../../Resource/testdata/env_variables.robot
Resource  ../../../../../Resource/testdata/credentials.robot

*** Variables ***
${ChromeBrowser}    Chrome
${FirefoxBrowser}    Firefox
${EdgeBrowser}    Edge
${SafariBrowser}    Safari

${driver_path}    C:\\Users\\Nino.Guerra\\PycharmProjects\\pythonProject2\\Resource\\chromedriver.exe
#${driver_path}    C:\\Users\\Nino.Guerra\\PycharmProjects\\pythonProject2\\Resource\\geckodriver.exe

${Dealer_screenshot_path}    C:\\Users\\Nino.Guerra\\PycharmProjects\\pythonProject2\\Resource\\testsuites\\Dealer\\Screenshots\\HK\\D1

${UploadPhoto_Path_Value}    C:\\Users\\Nino.Guerra\\Pictures\\Sample Image\\Image.jpg

${ExcelFile_HK_Product_List_Path}    C:\\Users\\Nino.Guerra\\Documents\\Files\\HKProductReportView.
${ExcelFile_AU_Stock_List_Path}    C:\\Users\\Nino.Guerra\\Documents\\Files\\Titan SUB Geerex.xlsx
${YouLeftSomething_FilePath}    C:\\Users\\Nino.Guerra\\Documents\\Files\\You left something behind (ENG).txt

${Username}    ${admin1_s2_HKdealer_UID}
${Password}    ${admin1_s2_HKdealer_PWD}

${YopMailEmail}    ${admin1_s2_HKdealer_UID}

*** Keywords ***
Open Chrome Browser HK
    SeleniumLibrary.Open Browser    ${d1HKDealer}    Chrome  executable_path=${driver_path}
    maximize browser window

Dealer Screent Shot DIR HK
    ${currentdate}    get current date    result_format=%m-%d-%y %H-%M
    create directory    ${Dealer_screenshot_path}/HK_${currentdate}
    ${LogDIR}=    convert to string    ${Dealer_screenshot_path}/HK_${currentdate}
    set screenshot directory    ${LogDIR}
    set global variable    ${LogDIR}

#-----------------------------------------------------Browser Commands--------------------------------------------------
Browse Back Button
    go back
    sleep    5
#    capture page screenshot

#-----------------------------------------------------Dealer Sleep------------------------------------------------------

TC Sleep
    sleep    10