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

${Dealer_screenshot_path}    ..\\..\\..\\..\\..\\Resource\\testsuites\\Dealer\\Screenshots\\HK\\S2
#${Retail_screenshot_path}    C:\\Users\\Danielouie.Estopace\\OneDrive - Inchcape\\06.Dev\\Dan\\Retail Screenshots

${UploadPhoto_Path_Value}    C:\\Users\\Danielouie.Estopace\\Pictures\\Sample Image\\Image.jpg

${ExcelFile_HK_Product_List_Path}    C:\\Users\\Danielouie.Estopace\\Documents\\Files\\HKProductReportView.
${ExcelFile_AU_Stock_List_Path}    C:\\Users\\Danielouie.Estopace\\Documents\\Files\\Titan SUB Geerex.xlsx
${YouLeftSomething_FilePath}    C:\\Users\\Danielouie.Estopace\\Documents\\Files\\You left something behind (ENG).txt

${Username}    ${admin1_s2_HKdealer_UID}
${Password}    ${admin1_s2_HKdealer_PWD}

${YopMailEmail}    ${admin1_s2_HKdealer_UID}

${ProfileChangePassCurrentPassValue}    ${Password}

${Dealer-HK_BuyerRelPage_Entry_PartsClub_Value}    TestQA
${Dealer-HK_BuyerRelPage_Entry_ADP_Value}    QATest

${ProfileAccountsDetailsPhoneValue}    65457898
${ProfileAccountsDetailsLandlineValue}    12324565
${test}    123

*** Keywords ***
Open Chrome Browser
    SeleniumLibrary.Open Browser    ${s2HKDealer}    Chrome  executable_path=${driver_path}
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

TC Sleep
    sleep    10