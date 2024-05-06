*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary
Library  String

Resource  ../../../../Resource/testdata/config.robot
Resource  ../../../../Resource/testdata/QEMiniSIte/Ric/MiniSite_Variable.robot
Resource  ../../../../Resource/testdata/credentials.robot


*** Keywords ***
#-----------------------------------------------------Retail Login Page-------------------------------------------------
Verify Minisite Page
    sleep    10
    capture page screenshot

Verify Header elements
    wait until element is visible    ${PartslaneLogoHeader}    10
    wait until element is visible    ${RegisterHeader}    10
    wait until element is visible    ${RegisterSignIn}    10

    capture element screenshot    ${PartslaneLogoHeader}
    capture element screenshot    ${RegisterHeader}
    capture element screenshot    ${RegisterSignIn}

Verify Get on the fast track to Genuine Subaru Parts elements
    wait until element is visible    ${GetOn}    10
    wait until element is visible    ${GetOnImg}    10
    wait until element is visible    ${Spending}    10
    wait until element is visible    ${SpendingContent}    10
    capture element screenshot    ${GetOn}
    capture element screenshot    ${GetOnImg}

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