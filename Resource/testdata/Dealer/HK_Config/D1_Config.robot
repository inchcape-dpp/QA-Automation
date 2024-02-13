*** Settings ***
Documentation    Suite description
Library    SeleniumLibrary
Library    OperatingSystem
Library    DateTime
#Library    String


Resource  ../../../../Resource/testdata/env_variables.robot
Resource  ../../../../Resource/testdata/credentials.robot

*** Variables ***
${ChromeBrowser}    Chrome
${FirefoxBrowser}    Firefox
${EdgeBrowser}    Edge
${SafariBrowser}    Safari

${driver_path}    C:\\Users\\Tyron.Demate\\PycharmProjects\\pythonProject2\\Resource\\chromedriver.exe
#${driver_path}    C:\\Users\\Danielouie.Estopace\\PycharmProjects\\pythonProject2\\Resource\\geckodriver.exe

${Dealer_screenshot_path}    C:\\Users\\Tyron.Demate\\PycharmProjects\\pythonProject2\\Resource\\testsuites\\Dealer\\Screenshots\\D1

${UploadPhoto_Path_Value}    C:\\Users\\Tyron.Demate\\Pictures\\Sample Image\\Image.png

${ExcelFile_HK_Product_List_Path}    C:\\Users\\Danielouie.Estopace\\Documents\\Files\\HKProductReportView.
${ExcelFile_AU_Stock_List_Path}    C:\\\Users\\\Danielouie.Estopace\\\Documents\\\Files\\Titan SUB Geerex.xlsx
${YouLeftSomething_FilePath}    C:\\Users\\Danielouie.Estopace\\Documents\\Files\\You left something behind (ENG).txt

${Username}    ${admin1_s2_HKdealer_UID}
${Password}    ${admin1_s2_HKdealer_UID}

${YopMailEmail}    ${admin1_s2_HKdealer_UID}

*** Keywords ***
Open Chrome Browser
    SeleniumLibrary.Open Browser    ${d1HKDealer}    Chrome  executable_path=${driver_path}
    maximize browser window

Dealer Screent Shot DIR
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