*** Settings ***
Documentation    Suite description

Library    SeleniumLibrary
Library    String
Library    ExcelLibrary

Resource  ../../../Resource/testdata/config.robot
Resource  ../../../Resource/testdata/Retail/Retail_Variable.robot
Resource  ../../../Resource/testdata/Retail/Retail_Resource.robot
Resource  ../../../Resource/testdata/credentials.robot


*** Keywords ***
New browser tab
    execute javascript    window.open('', '_blank')
    sleep    10
    @{test}=    get window handles
    Log to console    ${test}
    ${Tab1}=    convert to string    ${test}[0]
    ${Tab2}=    convert to string    ${test}[1]
    Log to console    ${Tab1}
    Log to console    ${Tab2}
    switch window    ${Tab2}
    go to    ${YopMail}
    sleep    10
#    Log to console    Switching window 1
#    switch window    ${Tab1}
#    sleep    10

Enter Yop Mail
    wait until element is visible    ${Yopmail_Banner}    10
    wait until element is visible    ${Yopmail_Email_TextBox}    10
    capture element screenshot    ${Yopmail_Banner}
    capture element screenshot    ${Yopmail_Email_TextBox}
    input text    ${Yopmail_Email_TextBox}    ${HK_D1_Automation_Bronze_UID}
    click element    ${Yopmail_Email_Next_Button}
    sleep    5

Switch to Inbox List Frame
    select frame    ${Yopmail_Inbox_List_Frame}
    sleep    2

Click Inbox Messages
    wait until element is visible    ${Yopmail_InboxMessage_Option2}    10
    click element    ${Yopmail_InboxMessage_Option2}
    sleep    5
    wait until element is visible    ${Yopmail_InboxMessage_Option1}    10
    click element    ${Yopmail_InboxMessage_Option1}
    sleep    5