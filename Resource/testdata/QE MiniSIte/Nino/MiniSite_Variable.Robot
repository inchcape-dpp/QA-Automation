*** Settings ***
Documentation       Suite description

Resource  ../../../Resource/testdata/config.robot

*** Variables ***
${ParstLane_Logo}    //header//div//img
${Register_Button}    //header//div//a[contains(text(),'Register')]
${SignIn_Button}    //header//div//a[contains(text(),'Sign In')]
${PreOpening_Text}    //div[@class='section-hero-desktop-cta']//p[text()='Get on the fast track to Genuine Subaru Parts']
${Register_Button2}    //div[@class='section-hero-desktop-cta--container']//a[text()='Register Now']
${Spending_Header_Text}    (//article//section//header[@class='section-default--header'])[1]
${Spending_Details_Tex}    (//article//section//p[@class='section-default--paragraph'])[1]