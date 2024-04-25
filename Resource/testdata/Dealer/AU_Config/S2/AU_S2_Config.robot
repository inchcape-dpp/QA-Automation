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

${Dealer_screenshot_path}    ..\\..\\..\\..\\..\\Resource\\testsuites\\Dealer\\Screenshots\\AU\\S2
#${Retail_screenshot_path}    C:\\Users\\Danielouie.Estopace\\OneDrive - Inchcape\\06.Dev\\Dan\\Retail Screenshots

${UploadPhoto_Path_Value}    C:\\Users\\Danielouie.Estopace\\Pictures\\Sample Image\\Image.jpg

${ExcelFile_HK_Product_List_Path}    C:\\Users\\Danielouie.Estopace\\Documents\\Files\\HKProductReportView.
${ExcelFile_AU_Stock_List_Path}    C:\\Users\\Danielouie.Estopace\\Documents\\Files\\Titan SUB Geerex.xlsx
${YouLeftSomething_FilePath}    C:\\Users\\Danielouie.Estopace\\Documents\\Files\\You left something behind (ENG).txt

${Username}    ${AUSeller_S2_UID}
${Password}    ${AUSeller_S2_PWD}

${YopMailEmail}    ${admin1_s2_dealer_UID}

${ProfileChangePassCurrentPassValue}    ${Password}

${ProfileAccountsDetailsPhoneValue}    0412333444
${ProfileAccountsDetailsLandlineValue}    0421333444

*** Keywords ***
Open Chrome Browser
    SeleniumLibrary.Open Browser    ${s2Dealer}    Chrome  executable_path=${driver_path}
    maximize browser window

Dealer Screen Shot DIR
    ${currentdate}    get current date    result_format=%m-%d-%y %H-%M
    create directory    ${Dealer_screenshot_path}/AU_${currentdate}
    ${LogDIR}=    convert to string    ${Dealer_screenshot_path}/AU_${currentdate}
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