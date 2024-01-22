*** Settings ***
Documentation    Suite description
Library    SeleniumLibrary
Library    OperatingSystem
Library    DateTime
#Library    String


Resource  ../../Resource/testdata/env_variables.robot
Resource  ../../Resource/testdata/credentials.robot

*** Variables ***
${ChromeBrowser}    Chrome
${FirefoxBrowser}    Firefox
${EdgeBrowser}    Edge
${SafariBrowser}    Safari

${driver_path}    C:\\Users\\Ericson.Tinana\\PycharmProjects\\pythonProject2\\Resource\\chromedriver.exe
#${driver_path}    C:\\Users\\Ericson.Tinana\\PycharmProjects\\pythonProject2\\Resource\\geckodriver.exe

${BE_screenshot_path}    C:\\Users\\Ericson.Tinana\\PycharmProjects\\pythonProject2\\Resource\\testsuites\\BE\\Screenshots
${Dealer_screenshot_path}    C:\\Users\\Ericson.Tinana\\PycharmProjects\\pythonProject2\\Resource\\testsuites\\Dealer\\Screenshots
#${Dealer_screenshot_path}    C:\\Users\\Ericson.Tinana\\OneDrive - Inchcape\\06.Dev\\Dan\\Dealer Screenshots
${Retail_screenshot_path}    C:\\Users\\Ericson.Tinana\\PycharmProjects\\pythonProject2\\Resource\\testsuites\\Retail\\Screenshots
#${Retail_screenshot_path}    C:\\Users\\Ericson.Tinana\\OneDrive - Inchcape\\06.Dev\\Dan\\Retail Screenshots

${UploadPhoto_Path_Value}    C:\\Users\\Ericson.Tinana\\Pictures\\Sample Image\\Image.jpg

${ExcelFile_HK_Product_List_Path}    C:\\Users\\Ericson.Tinana\Pictures\\Files\\HKProductReportView.xlsx

#${LogDIR}

#${Username}    hktestric3@yopmail.com
#${Password}    Pass@12345

${Username}    ${admin1_s2_HKretail_UID}
${Password}    ${admin1_s2_HKretail_PWD}

*** Keywords ***
Open Chrome Browser
    SeleniumLibrary.Open Browser    ${s2HKRetail}    Chrome  executable_path=${driver_path}
    maximize browser window
#    press keys    none    ctrl + t
##    ${test1}    get window titles
##    open browser    ${YopMail}  Chrome  executable_path=${driver_path}
##    ${tes2}    get window titles
##    Log    ${test1}
##    Log    ${tes2}
#    sleep    10
BE Screent Shot DIR
    ${currentdate}    get current date    result_format=%m-%d-%y %H-%M
    create directory    ${BE_screenshot_path}/${currentdate}
    set screenshot directory    ${BE_screenshot_path}/${currentdate}

Dealer Screent Shot DIR
    ${currentdate}    get current date    result_format=%m-%d-%y %H-%M
    create directory    ${Dealer_screenshot_path}/${currentdate}
    set screenshot directory    ${Dealer_screenshot_path}/${currentdate}
    ${LogDIR}    convert to string    ${Dealer_screenshot_path}/${currentdate}


Retail Screent Shot DIR
    ${currentdate}    get current date    result_format=%m-%d-%y %H-%M
    create directory    ${Retail_screenshot_path}/${currentdate}
    set screenshot directory    ${Retail_screenshot_path}/${currentdate}
    ${NewDIR}    convert to string    ${Retail_screenshot_path}\\${currentdate}

#Save Log DIR
#    copy file    log.html    ${LogDIR}


#-----------------------------------------------------Browser Commands--------------------------------------------------
Browse Back Button
    go back
    sleep    5
#    capture page screenshot

#-----------------------------------------------------Dealer Sleep------------------------------------------------------

TC Sleep
    sleep    10