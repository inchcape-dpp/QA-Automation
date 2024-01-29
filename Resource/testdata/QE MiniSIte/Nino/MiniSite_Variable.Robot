*** Settings ***
Documentation       Suite description

Resource  ../../../Resource/testdata/config.robot

*** Variables ***
${ParstLane_Logo}    //header//div//img
${Register_Button}    //header//div//a[contains(text(),'Register')]
${SignIn_Butoon}    //header//div//a[contains(text(),'Sign In')]
${Spending_Header_Text}    (//article//section//header[@class='section-default--header'])[1]
${Spending_Details_Tex}    (//article//section//p[@class='section-default--paragraph'])[1]