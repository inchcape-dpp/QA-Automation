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

${driver_path}    ..\\..\\..\\..\\..\\Resource\\chromedriver.exe
#${driver_path}    C:\\Users\\Danielouie.Estopace\\PycharmProjects\\pythonProject2\\Resource\\geckodriver.exe

${Dealer_screenshot_path}    ..\\..\\..\\..\\..\\Resource\\testsuites\\Dealer\\Screenshots\\HK\\P1
#${Retail_screenshot_path}    C:\\Users\\Danielouie.Estopace\\OneDrive - Inchcape\\06.Dev\\Dan\\Retail Screenshots

${UploadPhoto_Path_Value}    C:\\Users\\Ericson.Tinana\\Pictures\\SampleImage\\Image.jpg

${ExcelFile_HK_Product_List_Path}    C:\\Users\\Danielouie.Estopace\\Documents\\Files\\HKProductReportView.
${ExcelFile_AU_Stock_List_Path}    C:\\Users\\Danielouie.Estopace\\Documents\\Files\\Titan SUB Geerex.xlsx
${YouLeftSomething_FilePath}    C:\\Users\\Danielouie.Estopace\\Documents\\Files\\You left something behind (ENG).txt

${Username}    ${HKSeller_P1_UID}
${Password}    ${HKSeller_P1_PWD}
${ProfileChangePassCurrentPassValue}    ${Password}
${YopMailEmail}    ${admin2_p1_HKdealer_UID}

${ProfileAccountsDetailsPhoneValue}    85296374
${ProfileAccountsDetailsLandlineValue}    14725836

*** Keywords ***
Open Chrome Browser
    SeleniumLibrary.Open Browser    ${p1HKDealer}    Chrome  executable_path=${driver_path}
    maximize browser window

Dealer Screen Shot DIR
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

TC Sleep P1
    sleep    10