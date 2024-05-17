*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary
Library  String
Library    OperatingSystem
#
Resource    ../../../Resource/testdata/QEMiniSite/MiniSite_Variable.robot
Resource    ../../../Resource/testdata/credentials.robot
Resource    ../../../Resource/testdata/Retail/Retail_Variable.robot



*** Keywords ***
#-----------------------------------------------------Retail Login Page-------------------------------------------------
Verify Minisite Page
    sleep    10
    capture page screenshot

Verify Header elements
    wait until element is visible    ${PartslaneLogoHeader}    10
    wait until element is visible    ${RegisterHeader}    10
    wait until element is visible    ${SignIn}    10

    capture element screenshot    ${PartslaneLogoHeader}
    capture element screenshot    ${RegisterHeader}
    capture element screenshot    ${SignIn}

Verify Get on the fast track to Genuine Subaru Parts elements
    wait until element is visible    ${GetOn}    10
    wait until element is visible    ${GetOnImg}    10
    wait until element is visible    ${RegisterBody}    10
    wait until element is visible    ${Spending}    10
    wait until element is visible    ${SpendingContent}    10
    capture element screenshot    ${GetOn}
    capture element screenshot    ${GetOnImg}
    capture element screenshot    ${RegisterBody}

    scroll element into view    ${Spending}
    capture element screenshot   ${Spending}
    capture element screenshot    ${SpendingContent}



Verify What is Partslane elements
    wait until element is visible    ${WhatIsPartslane}    10
    wait until element is visible    ${WhatIsPartslaneImg}    10
    wait until element is visible    ${WhatIsPartslaneContent}    10

    scroll element into view    ${WhatIsPartslane}
    capture element screenshot    ${WhatIsPartslane}
    capture element screenshot    ${WhatIsPartslaneImg}
    capture element screenshot    ${WhatIsPartslaneContent}

Verify Why Choose Us elements
    wait until element is visible    ${$Why}    10
    wait until element is visible    ${WhyLogo}    10
    wait until element is visible    ${Fast}     10
    wait until element is visible    ${FastContent}    10
    wait until element is visible    ${Quick}    10
    wait until element is visible    ${QuickContent}    10
    wait until element is visible    ${Click}    10
    wait until element is visible    ${ClickContent}    10
    wait until element is visible    ${Guaranteed}    10
    wait until element is visible    ${GuaranteedContent}    10

    capture element screenshot     ${$Why}
    capture element screenshot     ${WhyLogo}
    capture element screenshot     ${Fast}
    capture element screenshot     ${FastContent}
    capture element screenshot     ${Quick}
    capture element screenshot     ${QuickContent}
    capture element screenshot     ${Click}
    capture element screenshot     ${ClickContent}
    capture element screenshot     ${Guaranteed}
    capture element screenshot     ${GuaranteedContent}

Verify How it Works elements
    wait until element is visible    ${HowItWorks}    10
    wait until element is visible    ${SelectVehicle1}    10
    wait until element is visible    ${SelectGenuine1}    10
    wait until element is visible    ${ToOrder1}    10
    wait until element is visible    ${Receive1}    10

    scroll element into view     ${HowItWorksSection}
    click element    ${SelectVehicle1}
    wait until element is visible    ${SelectVehicle2}  10
    wait until element is visible    ${SelectVehicleContent}    10
    wait until element is visible    ${SelectVehicleContent}    10

    capture element screenshot     ${SelectVehicle2}
    capture element screenshot    ${SelectVehicleContent}
    capture element screenshot    ${SelectVehicleImg}
    click element    ${SelectGenuine1}
    wait until element is visible    ${SelectGenuine2}    10
    wait until element is visible    ${SelectGenuineContent}    10
    wait until element is visible    ${SelectGenuineImg}    10
    capture element screenshot     ${SelectGenuine2}
    capture element screenshot    ${SelectGenuineContent}
    capture element screenshot    ${SelectGenuineImg}
    click element    ${ToOrder1}
    wait until element is visible    ${ToOrder2}    10
    wait until element is visible    ${ToOrderContent}    10
    wait until element is visible    ${ToOrderImg}    10
    capture element screenshot     ${ToOrder2}
    capture element screenshot    ${ToOrderContent}
    capture element screenshot     ${ToOrderImg}
    click element    ${Receive1}
    wait until element is visible    ${Receive2}    10
    wait until element is visible    ${ReceiveContent}    10
    wait until element is visible    ${ReceiveImg}    10
    wait until element is visible    ${RegisterButton}    10
    capture element screenshot    ${Receive2}
    capture element screenshot     ${ReceiveContent}
    capture element screenshot     ${ReceiveImg}

  capture element screenshot     ${HowItWorks}
  capture element screenshot     ${SelectVehicle1}
  capture element screenshot     ${SelectGenuine1}
  capture element screenshot     ${ToOrder1}
  capture element screenshot     ${Receive1}
  capture element screenshot     ${RegisterButton}

Click register button
  click element     ${RegisterButton}

User should be able to view Our Suppliers elements

    wait until element is visible    ${Our_Supplier}    2
    wait until element is visible    ${Suttons}    2
    wait until element is visible    ${Eagers_Automotive}    2
    wait until element is visible    ${Jarvis_Subaru}    2
    wait until element is visible    ${Jefferson_Automotive}    2
    wait until element is visible    ${Eagers_Automotive}    2
    wait until element is visible    ${Cricks}    2
    wait until element is visible    ${McGrath}    2
    wait until element is visible    ${Rex_Gorell}    2
    wait until element is visible    ${WA_Subaru}    2
    wait until element is visible    ${KeyMotors_Subaru}    2
    wait until element is visible    ${vonBibra_AutoGroup}    2


    capture element screenshot    ${Our_Supplier}
    capture element screenshot    ${Suttons}
    capture element screenshot    ${Eagers_Automotive}
    capture element screenshot    ${Jarvis_Subaru}
    capture element screenshot    ${Jefferson_Automotive}
    capture element screenshot    ${Eagers_Automotive}
    capture element screenshot    ${Cricks}
    capture element screenshot    ${McGrath}
    capture element screenshot    ${Rex_Gorell}
    capture element screenshot    ${WA_Subaru}
    capture element screenshot    ${KeyMotors_Subaru}
    capture element screenshot    ${vonBibra_AutoGroup}


User should be able to view Let Us Talk elements
    wait until element is visible    ${ContactUs_Image}    2
    wait until element is visible    ${LetUsTalk}    2
    wait until element is visible    ${LetUsTalk_Subtext}    2
    wait until element is visible    ${form_firstname}    2
    wait until element is visible    ${form_lastname}    2
    wait until element is visible    ${form_emailaddress}    2
    wait until element is visible    ${form_message}    2
    wait until element is visible    ${form_p}    2
    wait until element is visible    ${form_termsofuse}    2
    wait until element is visible    ${form_privacypolicy}    2
    wait until element is visible    ${form_submit}    2

    capture element screenshot     ${ContactUs_Image}    2
    capture element screenshot     ${LetUsTalk}    2
    capture element screenshot     ${LetUsTalk_Subtext}    2
    capture element screenshot     ${form_firstname}    2
    capture element screenshot     ${form_lastname}    2
    capture element screenshot     ${form_emailaddress}    2
    capture element screenshot     ${form_message}    2
    capture element screenshot     ${form_p}    2
    capture element screenshot     ${form_termsofuse}    2
    capture element screenshot     ${form_privacypolicy}    2
    capture element screenshot     ${form_submit}    2




User should be able to input on fields in Contact Us form and submit it
    scroll element into view    ${Form_FirstName}
    input text    ${Input_FirstName}    ${First_Name}
    input text    ${Input_LastName}    ${Last_Name}
    input text    ${Input_EmailAddress}     ${Email_Address}
    input text    ${Input_Message}   ${Message}
    click element    ${form_submit}


User should be able to view Footer
    wait until element is visible    ${footer_logo}    2
    wait until element is visible    ${Footer_PP}    2
    wait until element is visible    ${Footer_TNC}    2
    wait until element is visible    ${Footer_Copyright}    2

    capture element screenshot     ${footer_logo}    2
    capture element screenshot     ${Footer_PP}    2
    capture element screenshot     ${Footer_TNC}    2
    capture element screenshot     ${Footer_Copyright}    2

User should verify clickable register button
    click element    ${RegisterHeader}
    @{test}=    get window handles
    Log to console    ${test}
    ${Tab1}=    convert to string    ${test}[0]
    ${Tab2}=    convert to string    ${test}[1]
    switch window    ${Tab2}
    wait until element is visible    ${Retail_RegistrationJoinPartsLaneHeader}    10
    capture page screenshot
    close window
    switch window    ${Tab1}
    sleep    10

User should verify clickable sigin button
    click element    ${SignIn}
    @{test}=    get window handles
    Log to console    ${test}
    ${Tab1}=    convert to string    ${test}[0]
    ${Tab2}=    convert to string    ${test}[1]
    switch window    ${Tab2}
    wait until element is visible    ${Logo}    10
    capture page screenshot
    close window
    switch window    ${Tab1}
    sleep    10

User should verify clickable register button body
    click element    ${RegisterBody}
    @{test}=    get window handles
    Log to console    ${test}
    ${Tab1}=    convert to string    ${test}[0]
    ${Tab2}=    convert to string    ${test}[1]}
    switch window    ${Tab2}
    wait until element is visible    ${Retail_RegistrationJoinPartsLaneHeader}     10
    capture page screenshot
    close window
    switch window    ${Tab1}
    sleep    10

User should verify clickable register button how it works
    click element    ${RegisterButton}
    @{test}=    get window handles
    Log to console    ${test}
    ${Tab1}=    convert to string    ${test}[0]
    ${Tab2}=    convert to string    ${test}[1]
    switch window    ${Tab2}
    wait until element is visible    ${Retail_RegistrationJoinPartsLaneHeader}     10
    capture page screenshot
    close window
    switch window    ${Tab1}
    sleep    10

User should verify clickable Terms of Use
    scroll element into view    ${form_termsofuse}
    click element    ${form_termsofuse}
    @{test}=    get window handles
    Log to console    ${test}
    ${Tab1}=    convert to string    ${test}[0]
    ${Tab2}=    convert to string    ${test}[1]
    switch window    ${Tab2}
    wait until element is visible    ${TC&PrivacynHeader}    10
    capture page screenshot
    close window
    switch window    ${Tab1}
    sleep    5

User should verify clickable Privacy Policy
    scroll element into view    ${form_privacypolicy}
    click element    ${form_privacypolicy}
    @{test}=    get window handles
    Log to console    ${test}
    ${Tab1}=    convert to string    ${test}[0]
    ${Tab2}=    convert to string    ${test}[1]
    switch window    ${Tab2}
    wait until element is visible    ${TC&PrivacynHeader}     10
    capture page screenshot
    close window
    switch window    ${Tab1}
    sleep    10

User should verify clickable Terms of Use footer
    scroll element into view    ${Footer_TNC}
    click element    ${Footer_TNC}
    @{test}=    get window handles
    Log to console    ${test}
    ${Tab1}=    convert to string    ${test}[0]
    ${Tab2}=    convert to string    ${test}[1]
    switch window    ${Tab2}
    wait until element is visible    ${TC&PrivacynHeader}     10
    capture page screenshot
    close window
    switch window    ${Tab1}
    sleep    10

User should verify clickable Privacy Policy footer
    scroll element into view    ${Footer_PP}
    click element    ${Footer_PP}
    @{test}=    get window handles
    Log to console    ${test}
    ${Tab1}=    convert to string    ${test}[0]
    ${Tab2}=    convert to string    ${test}[1]
    switch window    ${Tab2}
    wait until element is visible     ${TC&PrivacynHeader}    10
    capture page screenshot
    close window
    switch window    ${Tab1}
    sleep    10




