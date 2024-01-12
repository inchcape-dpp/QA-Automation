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