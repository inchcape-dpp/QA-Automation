*** Settings ***
Documentation       Suite description

Resource  ../../../Resource/testdata/config.robot

*** Variables ***

${Our_Supplier}    //section//header[contains(text(), 'Our Suppliers')]
