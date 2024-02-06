*** Settings ***
Documentation    Suite description

Library    SeleniumLibrary
Library    String
Library    ExcelLibrary
Library    OperatingSystem

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
    input text    ${Yopmail_Email_TextBox}    ${YopMailEmail}
    click element    ${Yopmail_Email_Next_Button}
    sleep    5

Switch to Inbox List Frame
    select frame    ${Yopmail_Inbox_List_Frame}
    sleep    2

Unselect Mail Frame
    unselect frame
    sleep    2

Switch to Inbox Message Frame
    select frame    ${YopMail_Message_Frame}
    sleep    2

Click Inbox Messages
    wait until element is visible    ${Yopmail_InboxMessage_Option1}    10
    click element    ${Yopmail_InboxMessage_Option1}
    sleep    5
    wait until element is visible    ${Yopmail_InboxMessage_Option2}    10
    click element    ${Yopmail_InboxMessage_Option2}
    sleep    5

Read Message
    wait until element is visible    ${Yopmail_Inbox_Title_Message}    10
    click element    ${Yopmail_Inbox_ShowPicture_Button}
    sleep    2
    capture element screenshot    ${Yopmail_Inbox_Title_Message}
    capture element screenshot    ${Yopmail_InboxBody}
    capture element screenshot    ${Yopmail_Inbox_Sender_Email}
#    capture element screenshot    ${Yopmail_Inbox_ShowPicture_Button}
    capture element screenshot    ${Yopmail_InboxBody_Header}
    capture element screenshot    ${Yopmail_InboxBody_Content}
    capture element screenshot    ${Yopmail_InboxBody_Footer}
    sleep    2

Get Sender Email
    ${SenderEmail}    get text    ${Yopmail_Inbox_Sender_Email}
    ${StringEmail}    remove string    ${SenderEmail}   PartsLane HK - Admin    <    >    ${SPACE}    ${EMPTY}
    run keyword and continue on failure    should be equal    ${StringEmail}    ${PartsLaneEmail}
    sleep    2

Get Email Message
    ${EmailMessage}    get text    ${Yopmail_InboxBody_Content}
    Log to console    ${EmailMessage}
    Get line count    ${EmailMessage}
    sleep    2

#Get text between
##    ${full_text}    Set Variable    ${stringemail}
##    ${start_string}    Set Variable    <
##    ${end_string}    Set Variable    >
#    ${Removestringemail}    remove string    ${stringemail}    PartsLane HK - Admin    <    >
#    Log    ${Removestringemail}
#
##    ${start_index}    evaluate    ${Removestringemail}.find(' ')+len(' ')
##    ${end_index}    evaluate    ${Removestringemail}.find('${end_string}', ${start_index})
##    ${result}    evaluate    '${Removestringemail}'[${start_index}:${end_index}]
##    Log    ${result}
#
##    ${result}    Get Text Between Strings    ${full_text}    ${start_string}    ${end_string}
##    Log    Result: ${result}
#
#Get Text Between Strings
#    [Arguments]    ${full_text}    ${start_string}    ${end_string}
#    ${start_index}    evaluate    ${full_text}.find('${start_string}')+len('${start_string}')
#    ${end_index}    evaluate    ${full_text}.find('${end_string}', ${start_index})
#    ${result}    evaluate    '${full_text}'[${start_index}:${end_index}]
#    [Return]    ${result}


Read Text File
    ${File Content}    get file    ${YouLeftSomething_FilePath}
    Log    ${File Content}