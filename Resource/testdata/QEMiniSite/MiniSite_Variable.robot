*** Settings ***
Documentation       Suite description

Resource  ../../../Resource/testdata/QEMiniSite/MiniSite_resource.robot



*** Variables ***
#-----------------------------------------------------Header------------------------------------------------
${PartslaneLogoHeader}    (//img[@src='https://cdn.partslane.com.au/sys-master-images/h49/h6b/8830725652510/PartsLane_Registered_logo.svg'])[1]
${RegisterHeader}    (//a[@href='https://www.partslane.com.au/dppretail/login/register'])[1]
${RegisterSignIn}    (//a[@href='https://www.partslane.com.au/dppretail/login'])[1]


#-----------------------------------------------------GetOn------------------------------------------------
${GetOn}    //p[@class='section-hero-desktop-cta--p']
${GetOnImg}    //img[@src='https://cdn.partslane.com.au/sys-master-images/minisite/blue-car.png']
${Spending}    //header[@class='section-default--header'and (contains(text(),'Spending time searching for parts and waiting on hold?'))]
${SpendingContent}    //p[@class='section-default--paragraph']

#-----------------------------------------------------WhatIsPartslane------------------------------------------------
${WhatIsPartslane}    //header[@class='section-wide--item-header head--left']
${WhatIsPartslaneImg}    //div//img[@src='https://cdn.partslane.com.au/sys-master-images/minisite/what-is.svg']
${WhatIsPartslaneContent}    //div[@class='section-wide--item whatis-item--margin']


#-----------------------------------------------------Header------------------------------------------------
${PartslaneLogoHeader}    (//img[@src='https://cdn.partslane.com.au/sys-master-images/h49/h6b/8830725652510/PartsLane_Registered_logo.svg'])[1]
${RegisterHeader}    (//a[@href='https://www.partslane.com.au/dppretail/login/register'])[1]
${SignIn}    (//a[@href='https://www.partslane.com.au/dppretail/login'])[1]



#-----------------------------------------------------Why Choose Us------------------------------------------------
${$Why}    //main//header[@class='section-default--header' and (contains(text(),'Why Choose Us?'))]
${WhyLogo}    //div/img[@src='https://cdn.partslane.com.au/sys-master-images/minisite/why-choose-us.png']
${Fast}    //header[@class='section-default--pboxed-item-head' and (contains(text(),'Fast and easy part searching'))]
${FastContent}    (//p[@class='section-default--pboxed-item-p'])[1]
${Quick}    //header[@class='section-default--pboxed-item-head' and (contains(text(),'Quick ordering is just a click away'))]
${QuickContent}    (//p[@class='section-default--pboxed-item-p'])[2]
${Click}    //header[@class='section-default--pboxed-item-head' and (contains(text(),'Click to connect with your local car parts dealer'))]
${ClickContent}    (//p[@class='section-default--pboxed-item-p'])[3]
${Guaranteed}    //header[@class='section-default--pboxed-item-head' and (contains(text(),'Guaranteed genuine parts only'))]
${GuaranteedContent}    (//p[@class='section-default--pboxed-item-p'])[4]
#-----------------------------------------------------How it Works------------------------------------------------
${HowItWorks}    //header[@class='section-default--header how-it-works']
${SelectVehicle1}    //div//header[@class='section-default--list-content_head item-controller--font' and (contains(text(),'Select your vehicle'))]
${SelectGenuine1}    //div//header[@class='section-default--list-content_head item-controller--font' and (contains(text(),'Select the genuine part once you’ve located it in step 1'))]
${ToOrder1}    //div//header[@class='section-default--list-content_head item-controller--font' and (contains(text(),'To order, add the car part to your cart and…'))]
${Receive1}    //div//header[@class='section-default--list-content_head item-controller--font' and (contains(text(),'Receive delivery of your car part from your preferred Subaru Wholesale Parts Dealer'))]
${SelectVehicle2}    //div//header[@class='section-default--list-content_head' and (contains(text(),'Select your vehicle'))]
${SelectVehicleContent}    //div//p[@class='section-default--list-content_p']
${SelectVehicleImg}    //div/img[@src='https://cdn.partslane.com.au/sys-master-images/minisite/how-1.jpg']
${SelectGenuine2}    //div//header[@class='section-default--list-content_head' and (contains(text(),'Select the genuine part once you have located it on step 1'))]
${SelectGenuineContent}    (//div//p[@class='section-default--list-content_p'])[2]
${SelectGenuineImg}    //div/img[@src='https://cdn.partslane.com.au/sys-master-images/minisite/how-2.jpg']
${ToOrder2}    //div//header[@class='section-default--list-content_head' and (contains(text(),'To order, add the car part to your cart and...'))]
${ToOrderContent}    (//div//p[@class='section-default--list-content_p'])[3]
${ToOrderImg}    //div/img[@src='https://cdn.partslane.com.au/sys-master-images/minisite/how-3.jpg']
${Receive2}    //div//header[@class='section-default--list-content_head' and (contains(text(),'Receive delivery of your car part from your preferred Subaru Wholesale Parts Dealer'))]
${ReceiveContent}    (//div//p[@class='section-default--list-content_p'])[4]
${ReceiveImg}    //div/img[@src='https://cdn.partslane.com.au/sys-master-images/minisite/how-4.jpg']
${RegisterButton}    //div//a[@class='btn-cta btn-hiw btn-ripple']
${HowItWorksSection}    //section[@class='section-default bg-linear--dark']

#-----------------------------------------------------Our Suppliers Section------------------------------------------------

${Our_Supplier}    //section//header[contains(text(), 'Our Suppliers')]
${Suttons}    //div/img[@src='https://cdn.partslane.com.au/sys-master-images/minisite/Suttons-1.svg']
${Eagers_Automotive}    //div/img[@src='https://cdn.partslane.com.au/sys-master-images/minisite/EagersAutomotive-parts.svg']
${Jarvis_Subaru}    //div/img[@src='https://cdn.partslane.com.au/sys-master-images/minisite/Jarvis-subaru.svg']
${Jefferson_Automotive}    //div/img[@src='https://cdn.partslane.com.au/sys-master-images/minisite/Jefferson-1.svg']
${Eblens_Subaru}    //div/img[@src='https://cdn.partslane.com.au/sys-master-images/minisite/Eblens.svg']
${Cricks}    //div/img[@src='https://cdn.partslane.com.au/sys-master-images/minisite/Cricks.svg']
${McGrath}    //div/img[@src='https://cdn.partslane.com.au/sys-master-images/minisite/Mcgrath-parts.svg']
${Rex_Gorell}    //div/img[@src='https://cdn.partslane.com.au/sys-master-images/he8/h0e/8830726275102/Rex%20Gorell%20-%20Genuine%20Parts.png']
${WA_Subaru}    //div/img[@src='https://cdn.partslane.com.au/sys-master-images/h5e/h01/8830726701086/SubaruPartsWA_CMYK_PNG.png']
${KeyMotors_Subaru}    //div/img[@src='https://cdn.partslane.com.au/sys-master-images/h7b/h61/8830725914654/144060_KeyMotors-Right_150dpi.png']
${vonBibra_AutoGroup}    //div/img[@src='https://cdn.partslane.com.au/sys-master-images/h86/h53/8830727028766/VBAutoGroup_revBlack_logo2021.jpg']

#-----------------------------------------------------Contact Us Section------------------------------------------------

${LetUsTalk}    //section//p[contains(text(), 'PartsLane is the way to go. So, let’s talk!')]
${ContactUs_Image}    //section//img[@src='https://cdn.partslane.com.au/sys-master-images/minisite/contactus-car.jpg']
${LetUsTalk_Subtext}    //div//sub
${Form_FirstName}    //form//label[@for='firstName']
${Input_FirstName}   //input[@id='firstName']
${First_Name}    Tyron
${Form_LastName}    //form//label[@for='lastName']
${Input_LastName}    //input[@id='lastName']
${Last_Name}    Demate
${Form_EmailAddress}    //form//label[@for='emailAddress']
${Input_EmailAddress}    //input[@id='emailAddress']
${Email_Address}    tsarvida21@gmail.com
${Form_Message}    //form//label[@for='message']
${Input_Message}    //textarea[@id='message']
${Message}    This is a test message for Minisite test.
${Form_P}    //form//p
${Form_TermsOfUse}    //form//a[@href='https://www.partslane.com.au/dppretail/termsandconditions']
${Form_PrivacyPolicy}    //form//a[@href='https://www.partslane.com.au/dppretail/privacypolicy']
${Form_Submit}    //form//button

#-----------------------------------------------------Footer------------------------------------------------

${Footer_Logo}    //footer//img
${Footer_PP}    //footer//a[@href="https://www.partslane.com.au/dppretail/privacypolicy"]
${Footer_TNC}    //footer//a[@href="https://www.partslane.com.au/dppretail/termsandconditions"]
${Footer_Copyright}    //footer//p[contains(text(), '© 2023 PartsLane. All Rights Reserved.')]


${TC&PrivacynHeader}    //span[@style='font-size: 16pt; line-height: 107%']