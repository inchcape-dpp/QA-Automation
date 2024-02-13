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

${}