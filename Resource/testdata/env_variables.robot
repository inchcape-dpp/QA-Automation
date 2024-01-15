*** Settings ***
Documentation       Suite description

*** Variables ***
#-----------------------------------------------------URLS--------------------------------------------------------------
#------------------------D1------------------------
${d1BE}             https://backoffice.coyzchwfjr-inchcaped2-d1-public.model-t.cc.commerce.ondemand.com/backoffice/
${d1Retail}         https://retail.coyzchwfjr-inchcaped2-d1-public.model-t.cc.commerce.ondemand.com/
${d1Dealer}         https://dealer.coyzchwfjr-inchcaped2-d1-public.model-t.cc.commerce.ondemand.com/dppdealer/login/register

#------------------------D2------------------------
${d2BE}             https://backoffice.coyzchwfjr-inchcaped3-d1-public.model-t.cc.commerce.ondemand.com/backoffice/
${d2Retail}         https://retail.coyzchwfjr-inchcaped3-d1-public.model-t.cc.commerce.ondemand.com/dppretail/
${d2Dealer}         https://dealer.coyzchwfjr-inchcaped3-d1-public.model-t.cc.commerce.ondemand.com/dppdealer

#------------------------S1------------------------
${s1BE}             https://backoffice.coyzchwfjr-inchcaped2-s1-public.model-t.cc.commerce.ondemand.com/backoffice
${s1Retail}         https://retail.coyzchwfjr-inchcaped2-s1-public.model-t.cc.commerce.ondemand.com/
${s1Dealer}         https://dealer.coyzchwfjr-inchcaped2-s1-public.model-t.cc.commerce.ondemand.com/dppdealer/login

${s1HKRetail}    https://hkretail.coyzchwfjr-inchcaped2-s1-public.model-t.cc.commerce.ondemand.com/hkretail
${s1HKDealer}    https://hkdealer.coyzchwfjr-inchcaped2-s1-public.model-t.cc.commerce.ondemand.com/hkdealer

#------------------------S2------------------------
${s2BE}             https://backoffice.coyzchwfjr-inchcaped2-s2-public.model-t.cc.commerce.ondemand.com/backoffice
${s2Retail}         https://retail.coyzchwfjr-inchcaped2-s2-public.model-t.cc.commerce.ondemand.com/dppretail/
${s2Dealer}         https://dealer.coyzchwfjr-inchcaped2-s2-public.model-t.cc.commerce.ondemand.com/

${s2HKRetail}    	https://hkretail.coyzchwfjr-inchcaped2-s2-public.model-t.cc.commerce.ondemand.com/hkretail/
${s2HKDealer}       https://hkdealer.coyzchwfjr-inchcaped2-s2-public.model-t.cc.commerce.ondemand.com/hkdealer

${s2HKRetailAllProducts}    https://hkretail.coyzchwfjr-inchcaped2-s2-public.model-t.cc.commerce.ondemand.com/hkretail/c/0

#------------------------P1------------------------
${p1BE}             https://backoffice.coyzchwfjr-inchcaped2-p1-public.model-t.cc.commerce.ondemand.com/backoffice
${p1Retail}         https://www.partslane.com.au/dppretail/login
${p1Dealer}         https://dealer.partslane.com.au/dppdealer

${p1HKRetail}    	https://www.partslane.com.hk/hkretail
${p1HKDealer}    	https://www.partslane.com.hk/hkdealer

#------------------------Waf------------------------
${wafRetail}    https://wafretail.partslane.com.au



#------------------------YopMail------------------------
${YopMail}    https://yopmail.com/en/

${Yopmail_Banner}    //header//img[@id='logoacc']
${Yopmail_Email_TextBox}    //div[@class='ycolleft']//div[@class='ycptctn']//input
${Yopmail_Email_Next_Button}    //div[@class='ycolleft']//div[@class='ycptctn']//button
${Yopmail_Refresh_Button}    //div[@class='wmmain']//button[@id='refresh']
${Yopmail_Menu_Button}    (//div[@class='wmmain']//div[@class='wminboxheader']//button//i[@class='material-icons-outlined'])[1]
${Yopmail_ClearInbox_Button}    //div[@class='wmmain']//div[@class='wminboxheader']//div[@class='menu']//button[@id='delall']
${Yopmail_InboxMessage_Option1}    (//body[@class='bodyinbox yscrollbar']//div[@class='m'])[1]
${Yopmail_InboxBody}    //body[@class='bodymail yscrollbar']
${Yopmail_Inbox_Title_Message}    (//div[@class='fl']//div)[1]
${Yopmail_Inbox_Sender_Email}    //div[@class='fl']//div//span
${Yopmail_Inbox_ShowPicture_Button}    //div[@class='fl']//div[@class='noprint']//button

${Yopmail_InboxBody_Header}    (//div[@id='mail']//tbody//tr)[1]
${Yopmail_InboxBody_Content}    //div[@id='mail']//tbody//tr[2]//tbody
${Yopmail_InboxBody_Footer}    (//div[@id='mail']//tbody//tr)[3]

#------------------------Inboxes------------------------
${Inboxes}    https://inboxes.com/
${GetFirstInbox}    //div[@class='flex-row justify-center items-center text-center mt-16 mb-4 lg:mr-8 lg:ml-8']//button[@type='button']
${Add_Inbox_Button}    //div[@class='flex relative max-w-md w-full max-h-full']//button[contains(text(),'Add Inbox')]
${Cancel_Inbox_Button}    //div[@class='flex relative max-w-md w-full max-h-full']//button[contains(text(),'Cancel')]
${Close_Inbox_Button}    //div[@class='flex relative max-w-md w-full max-h-full']//button[@aria-label='Close modal']
${Email_Inbox_TextBox}    //div[@class='flex flex-wrap -mx-3 mb-6']//input
${Email_Inbox_Dropdown}    //div[@class='flex flex-wrap -mx-3 mb-6']//Select
${Email_Inbox_Dropdown_Value}    //div[@class='flex flex-wrap -mx-3 mb-6']//Select//option[@value='robot-mail.com']

${Email_Inbox_Email_Text}    (//h1//span)[2]
${Email_Inbox_Copy_Button}    (//h1//span)[3]
${Email_Inbox_Add_Button}    //button[contains(text(),'Add Inbox')]
${Email_Inbox_DeleteInbox_Button}    //button[contains(text(),'Delete Inbox')]
${Email_Inbox_YourInbox_Button}    //button[contains(text(),'Your inboxes')]

${Email_Inbox_Reload_Button}    //div//button[@title='Reload']
${Email_Inbox_Delete_Button}     //div//button[@title='Delete']

${Email_Inbox_MarkAll_CheckBox}    //div[@class='flex items-center']//input[@type='checkbox']
${Email_Inbox_Message_Selection_1}    (//div//table//tbody//tr[1])

${Email_Inbox_BackToInbox_Button}    //div//a[contains(text(),'Back to Inbox')]

${Email_Inbox_Body_Header}    //tbody//tbody//tr//div
${Email_Inbox_Body_Text}    //tbody//tbody//td//p
${Email_Inbox_Body_Footer}    (//tr//td)[9]

//tbody//tbody//tr//td//a//font[contains(text(),'Contact Us')]