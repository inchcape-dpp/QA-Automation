*** Settings ***
Documentation       Suite description


*** Variables ***
#-----------------------------------------------------Credentials-------------------------------------------------------
                                                                     #------------------------D1------------------------
                                                                         #------------------------BackOffice------------
                                                                             #------------------------ADMIN-------------
${admin_d1_BE_UID}    admin
${admin_d1_BE_PWD}    bu:{]rGP!a(@9{<Ok59)X6_fd
                                                                             #------------------------Smartedit---------
${smartedit_d1_BE_UID}    qasmartedit
${smartedit_d1_BE_PWD}    Pass@12345
                                                                         #------------------------Retail----------------
                                                                         #------------------------Dealer----------------



                                                                     #------------------------D2------------------------
                                                                         #------------------------BackOffice------------
                                                                             #------------------------ADMIN-------------
${admin_d2_BE_UID}    admin
${admin_d2_BE_PWD}    )qsi_zA,q+)Qu}lC5,5~hjOL.
                                                                         #------------------------Retail----------------
                                                                             #------------------------ADMIN1------------
${admin1_d2_retail_UID}    buyer1.admin@test.com
${admin1_d2_retail_PWD}    Pass@12345
                                                                             #------------------------ADMIN2------------
${admin2_d2_retail_UID}    buyer2.admin@test.com
${admin2_d2_retail_PWD}    Pass@12345
                                                                             #------------------------User1-------------
${user1_d2_retail_UID}    buyer1.customer@test.com
${user1_d2_retail_PWD}    Pass@12345
                                                                             #------------------------User2-------------
${user2_d2_retail_UID}    buyer2.customer@test.com
${user2_d2_retail_PWD}    Pass@12345
                                                                         #------------------------Dealer----------------
                                                                             #------------------------ADMIN1------------
${admin1_d2_dealer_UID}    seller1.admin@test.com
${admin1_d2_dealer_PWD}    Pass@12345
                                                                             #------------------------ADMIN2------------
${admin2_d2_dealer_UID}    seller2.admin@test.com
${admin2_d2_dealer_PWD}    AUPass@12345
                                                                             #------------------------User1-------------
${user1_d2_dealer_UID}    seller1.customer@test.com
${user1_d2_dealer_PWD}    AUPass@12345
                                                                             #------------------------User2-------------
${user2_d2_dealer_UID}    seller2.customer@test.com
${user2_d2_dealer_PWD}    AUPass@12345


                                                                     #------------------------S1------------------------
                                                                         #------------------------BackOffice------------
                                                                             #------------------------ADMIN-------------
${admin_s1_BE_UID}    admin
${admin_s1_BE_PWD}
                                                                             #------------------------QA BE User--------
${qa_s1_BE_UID}    qabackofficeuser
${qa_s1_BE_PWD}    QAuser@12345
                                                                             #------------------------Smartedit---------
${smartedit_s1_BE_UID}    qasmartedituser
${smartedit_s1_BE_PWD}    Pass@12345
                                                                             #------------------------DPP Admin---------
${dpp_admin_s1_BE_UID}    dppsuperadminuser
${dpp_admin_s1_BE_PWD}    Pass@12345
                                                                             #------------------------DPP Staff---------
${dpp_staff_s1_BE_UID}    dppstaffuser
${dpp_staff_s1_BE_PWD}    Pass@12345
                                                                         #------------------------Retail----------------
                                                                             #------------------------ADMIN1------------
${admin1_s1_retail_UID}    buyer1.admin@test.com
${admin1_s1_retail_PWD}    AUPass@12345
                                                                             #------------------------ADMIN2------------
${admin2_s1_retail_UID}    buyer2.admin@test.com
${admin2_s1_retail_PWD}    AUPass@12345
                                                                             #------------------------User1-------------
${user1_s1_retail_UID}    buyer1.customer@test.com
${user1_s1_retail_PWD}    AUPass@12345
                                                                             #------------------------User2-------------
${user2_s1_retail_UID}    buyer2.customer@test.com
${user2_s1_retail_PWD}    AUPass@12345
                                                                         #------------------------Dealer----------------
                                                                             #------------------------ADMIN1------------
${admin1_s1_dealer_UID}    seller1.admin@test.com
${admin1_s1_dealer_PWD}    AUPass@12345
                                                                             #------------------------ADMIN2------------
${admin2_s1_dealer_UID}    seller2.admin@test.com
${admin2_s1_dealer_PWD}    AUPass@12345
                                                                             #------------------------User1-------------
${user1_s1_dealer_UID}    seller1.customer@test.com
${user1_s1_dealer_PWD}    AUPass@12345
                                                                             #------------------------User2-------------
${user2_s1_dealer_UID}    seller2.customer@test.com
${user2_s1_dealer_PWD}    AUPass@12345



                                                                     #------------------------S2------------------------
                                                                         #------------------------BackOffice------------
                                                                             #------------------------ADMIN-------------
${admin_s2_BE_UID}    admin
${admin_s2_BE_PWD}
                                                                             #------------------------QA BE User--------
${qa_s2_BE_UID}    qabackofficeuser
${qa_s2_BE_PWD}    QAuser@12345
                                                                             #------------------------Smartedit---------
${smartedit_s2_BE_UID}    qasmartedituser
${smartedit_s2_BE_PWD}    Pass@12345
                                                                             #------------------------DPP Admin---------
${dpp_admin_s2_BE_UID}    dppsuperadminuser
${dpp_admin_s2_BE_PWD}    Pass@12345
                                                                             #------------------------DPP Staff---------
${dpp_staff_s2_BE_UID}    dppstaffuser
${dpp_staff_s2_BE_PWD}    Pass@12345
                                                                         #------------------------Retail----------------
                                                                             #------------------------ADMIN1------------
${admin1_s2_retail_UID}    buyer1.admin@test.com
${admin1_s2_retail_PWD}    AUPass@12345
                                                                             #------------------------ADMIN2------------
${admin2_s2_retail_UID}    buyer2.admin@test.com
${admin2_s2_retail_PWD}    AUPass@12345
                                                                             #------------------------User1-------------
${user1_s2_retail_UID}    buyer1.customer@test.com
${user1_s2_retail_PWD}    AUPass@12345
                                                                             #------------------------User2-------------
${user2_s2_retail_UID}    buyer2.customer@test.com
${user2_s2_retail_PWD}    AUPass@12345

                                                                            #------------------------HK ADMIN1----------
${admin1_s2_HKretail_UID}    hk.buyer1.admin@test.com
${admin1_s2_HKretail_PWD}    HKPass@12345

                                                                            #------------------------Gold HK ADMIN1-----
${admin1_s2_Gold_HKretail_UID}    hk.goldsilver.admin@test.com
${admin1_s2_Gold_HKretail_PWD}    HKPass@12345

                                                                            #------------------------Bronze HK ADMIN1---
${admin1_s2_Bronze_HKretail_UID}    hk.bronze.admin@test.com
${admin1_s2_Bronze_HKretail_PWD}    HKPass@12345

${Ric_S2_HKUser_GOLD}    hktestric3@yopmail.com
${Ric_S2_HKPass_GOLD}    Pass@12345

                                                                         #------------------------Dealer----------------
                                                                             #------------------------ADMIN1------------
${admin1_s2_dealer_UID}    seller1.admin@test.com
${admin1_s2_dealer_PWD}    AUPass@12345
                                                                             #------------------------ADMIN2------------
${admin2_s2_dealer_UID}    seller2.admin@test.com
${admin2_s2_dealer_PWD}    AUPass@12345
                                                                             #------------------------User1-------------
${user1_s2_dealer_UID}    seller1.customer@test.com
${user1_s2_dealer_PWD}    AUPass@12345
                                                                             #------------------------User2-------------
${user2_s2_dealer_UID}    seller2.customer@test.com
${user2_s2_dealer_PWD}    AUPass@12345

                                                                            #------------------------HK ADMIN1----------
${admin1_s2_HKdealer_UID}    hk.seller1.admin@test.com
${admin1_s2_HKdealer_PWD}    HKPass@12345


                                                                     #------------------------P1------------------------
                                                                         #------------------------BackOffice------------
                                                                             #------------------------ADMIN-------------
${admin_p1_BE_UID}    admin
${admin_p1_BE_PWD}
                                                                             #------------------------Smartedit---------
${smartedit_p1_BE_UID}    qasmartedituser
${smartedit_p1_BE_PWD}    AUPass@12345
                                                                         #------------------------Retail----------------
                                                                             #------------------------ADMIN1------------
${admin1_p1_retail_UID}    buyer1.admin@test.com
${admin1_p1_retail_PWD}    AUPass@12345
                                                                             #------------------------User1-------------
${user1_p1_retail_UID}    buyer1.customer@test.com
${user1_p1_retail_PWD}    AUPass@12345
                                                                         #------------------------HK--------------------
                                                                             #------------------------ADMIN1------------
${admin1_p1_HKretail_UID}    hk.buyer1.admin@test.com
${admin1_p1_HKretail_PWD}    HKPass@12345

${admin2_p1_HKretail_UID}    hk.buyer2.admin@test.com
${admin2_p1_HKretail_PWD}    HKPass@12345
                                                                             #------------------------GOLD ADMIN1-------
${admin1_p1_HKretail_Gold_UID}    hk.goldsilver.admin@test.com
${admin1_p1_HKretail_Gold_PWD}    HKPass@12345
                                                                             #------------------------Bronze ADMIN1-----
${admin1_p1_HKretail_Bronze_UID}    hk.bronze.admin@test.com
${admin1_p1_HKretail_Bronze_PWD}    HKPass@12345

                                                                         #------------------------Dealer----------------
                                                                             #------------------------ADMIN1------------
${admin1_p1_dealer_UID}    seller1.admin@test.com
${admin1_p1_dealer_PWD}    AUPass@12345
                                                                             #------------------------User1-------------
${user1_p1_dealer_UID}    seller1.customer@test.com
${user1_p1_dealer_PWD}    AUPass@12345
                                                                             #------------------------User2-------------
${admin2_p1_HKdealer_UID}    hk.seller2.admin@test.com
${admin2_p1_HKdealer_PWD}    HKPass@12345


${retailautomationuser1}    retailautomation1@yopmail.com
${retailautomationpass1}    AutomationPass123!

${automationuser2}    dpp_automation@yopmail.com
${automationpass2}    AutomationPass123!

${InvalidEmailFormat}    Hello
${InvalidPassFormat}    Hello

${InvalidEmail}    hellotest999@getnada.com
${InvalidPass}    hellotest999

${ProdAccUsername}    testp1seller@yopmail.com
${ProdAccPass}    dealNTG07.

${ProdAccUsernameBuyer}    inchcape.admin@eagers.com
${ProdAccPassBuyer}     Pass@12345

${ProdAccUsernameSeller}    inchcape.adminseller@eagers.com
${ProdAccPasswordSeller}    Welcom3@NG

${DanProdRetailUID}    danielouie.estopace@inchcape.com
${DanProdRetailPWD}    HelloWorld1802!

${Ty_s2_HK_Bronze_Retail_UID}    hktesttyrons2@yopmail.com
${Ty_s2_HK_Bronze_Retail_PWD}    Pass@12345

${Dan_s2_HK_Bronze_Retail_UID}    hkdan@yopmail.com
${Dan_s2_HK_Bronze_Retail_PWD}    Pass123@321

                                                                        #------------------------YopMail----------------
${AU_D1_Automation_UID}    au_automation1retaild1@yopmail.com
${AU_D1_Automation_PWD}    AU_Auto@12345!

${HK_D1_Automation_Bronze_UID}    hk_automation1retaild1_bronze@yopmail.com
${HK_D1_Automation_Bronze_PWD}    HK_Auto@12345!

${HK_D1_Automation_Gold_UID}    hk_automation1retaild1_gold@yopmail.com
${HK_D1_Automation_Gold_PWD}    HK_Auto@12345!

${HK_S1_Automation_Bronze_UID}    hk_automation1retails1_bronze@yopmail.com
${HK_S1_Automation_Bronze_PWD}    HK_Auto@12345!

${HK_S1_Automation_Gold_UID}    hk_automation1retails1_gold@yopmail.com
${HK_S1_Automation_Gold_PWD}    HK_Auto@12345!


${AU_S2_Automation_UID}    au_automation1retails2@yopmail.com
${AU_S2_Automation_PWD}    AU_Auto@12345!

${HK_S2_Automation_Bronze_UID}    hk_automation1retails2_bronze@yopmail.com
${HK_S2_Automation_Bronze_PWD}    HK_Auto@12345!

${HK_S2_Automation_Silver_UID}    hk_automation1retails2_silver@yopmail.com
${HK_S2_Automation_Silver_PWD}    HK_Auto@12345!

${HK_S2_Automation_SilverPlus_UID}    hk_automation1retails2_silverplus@yopmail.com
${HK_S2_Automation_SilverPlus_PWD}    HK_Auto@12345!

${HK_S2_Automation_Gold_UID}    hk_automation1retails2_gold@yopmail.com
${HK_S2_Automation_Gold_PWD}    HK_Auto@12345!

${HK_S2_Automation_GoldPlus_UID}    hk_automation1retails2_goldplus@yopmail.com
${HK_S2_Automation_GoldPlus_PWD}    HK_Auto@12345!

${HK_P1_Automation_Bronze_UID}    hk_automation1retailp1_bronze@yopmail.com
${HK_P1_Automation_Bronze_PWD}    HK_Auto@12345!

${HK_P1_Automation_Gold_UID}    hk_automation1retailp1_gold@yopmail.com
${HK_P1_Automation_Gold_PWD}    HK_Auto@12345!

                                                                        #------------------------Inboxes----------------
${HK_D1_Automation_Bronze_UID}    hk_automation1retaild1_bronze@robot-mail.com
${HK_D1_Automation_Bronze_PWD}    HK_Auto@12345!

#-----------------------Ric AU------------------------------------------------------------------------------------------

${AU_D1_UID}    rictestemail40@yopmail.com
${AU_D1_PWD}    Pass@12345
${AUSeller_D1_UID}    rictestemail105@yopmail.com
${AUSeller_D1_PWD}    Pass@12345

${AU_S1_UID}    rictestemail30@yopmail.com
${AU_S1_PWD}    Pass@12345

${AU_S2_UID}    rictestemail31@yopmail.com
${AU_S2_PWD}    Pass@12345
${AUSeller_S2_UID}    seller1.admin@test.com
${AUSeller_S2_PWD}    AUPass@12345

${AUCustomer_P1_UID}    ericson.tinana@inchcape.com
${AUCustomer_P1_PWD}    Carloakos1!
${AUSeller_P1_UID}    testp1seller@yopmail.com
${AUSeller_P1_PWD}    dealNTG07.

#-----------------------Ric HK------------------------------------------------------------------------------------------

${HK_D1_UID}    hktestric001@yopmail.com
${HK_D1_PWD}    Pass@12345
${HKSeller_D1_UID}    hktestricsellerd1@yopmail.com
${HKSeller_D1_PWD}    Pass@12345

${HK_S1_UID}    hktestric@yopmail.com
${HK_S1_PWD}    Pass@12345
${HKSeller_S1_UID}    hk.seller2.admin@test.com
${HKSeller_S1_PWD}    HKPass@12345

${HK_S2_UID}    hktestric3@yopmail.com
${HK_S2_PWD}    Pass@12345
${HKSeller_S2_UID}    hk.seller2.admin@test.com
${HKSeller_S2_PWD}    HKPass@12345

${HKCustomer_P1_UID}    hktestric10@yopmail.com
${HKCustomer_P1_PWD}    Pass@12345
${HKSeller_P1_UID}    hk.seller1.admin@test.com
${HKSeller_P1_PWD}    HKPass@12345