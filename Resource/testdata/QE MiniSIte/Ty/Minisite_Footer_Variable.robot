*** Settings ***
Documentation       Suite description

Resource  ../../../../Resource/testdata/Retail/AU_Config/S2_Config.robot


*** Variables ***

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

${LetUsTalk}    //section//p[contains(text(), 'PartsLane is the way to go. So, let’s talk!')]
${ContactUs_Image}    //section//img[@src='https://cdn.partslane.com.au/sys-master-images/minisite/contactus-car.jpg']
${LetUsTalk_Subtext}    //div//sub
