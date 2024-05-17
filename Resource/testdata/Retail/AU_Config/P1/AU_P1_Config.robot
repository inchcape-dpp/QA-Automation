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

${Retail_screenshot_path}    ..\\..\\..\\..\\..\\Resource\\testsuites\\Retail\\Screenshots\\AU\\P1
#${Retail_screenshot_path}    C:\\Users\\Danielouie.Estopace\\OneDrive - Inchcape\\06.Dev\\Dan\\Retail Screenshots

${UploadPhoto_Path_Value}    C:\\Users\\Ericson.Tinana\\Pictures\\Sample\\Image.jpg

${ExcelFile_HK_Product_List_Path}    C:\\Users\\Danielouie.Estopace\\Documents\\Files\\HKProductReportView.
${ExcelFile_AU_Stock_List_Path}    C:\\Users\\Danielouie.Estopace\\Documents\\\Files\\Titan SUB Geerex.xlsx
${YouLeftSomething_FilePath}    C:\\Users\\Danielouie.Estopace\\Documents\\Files\\You left something behind (ENG).txt

#${Username}    retailtitanp1@yopmail.com
#${Password}    Welcom3@NT

${Username}    ${DanProdRetailUID}
${Password}    ${DanProdRetailPWD}

${YopMailEmail}    ${AU_S2_Automation_UID}

${Retail_AccountProfileChangePassCurrentPassValue}    ${Password}

#Testing Values
${ProdductSearchValue}    037018200

*** Keywords ***
Open Chrome Browser
    SeleniumLibrary.Open Browser    ${p1Retail}    Chrome  executable_path=${driver_path}
    maximize browser window

Retail Screen Shot DIR
    ${currentdate}    get current date    result_format=%m-%d-%y %H-%M
    create directory    ${Retail_screenshot_path}/AU_${currentdate}
    ${LogDIR}=    convert to string    ${Retail_screenshot_path}/AU_${currentdate}
    set screenshot directory    ${LogDIR}
    set global variable    ${LogDIR}

Save Log DIR
    copy file    log.html    ${LogDIR}
 ### Test

#-----------------------------------------------------Browser Commands--------------------------------------------------
Browse Back Button
    go back
    sleep    5
#    capture page screenshot

#-----------------------------------------------------Dealer Sleep------------------------------------------------------

TC Sleep
    sleep    10