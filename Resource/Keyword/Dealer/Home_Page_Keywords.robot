*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary

#Resource  ../../../Resource/testdata/config.robot
Resource  ../../../Resource/testdata/Dealer/Dealer_Variable.robot
Resource  ../../../Resource/testdata/credentials.robot




*** Keywords ***
#-----------------------------------------------------Dealer Home Page--------------------------------------------------

Verify Home Page Elements
    wait until element is visible    ${HomepageLogo}    10
#    wait until element is visible    ${HomepageUserGreeting}    10
    wait until element is visible    ${HomepageUserAccount}    10
    wait until element is visible    ${HomepageOrders}    10
    wait until element is visible    ${HomepageReturn}    10
    wait until element is visible    ${HomepageNewBuyer}    10
    wait until element is visible    ${HomepageMessage}    10
    wait until element is visible    ${HomepageMyAccountLabel}    10
    wait until element is visible    ${HomepageOrdersMenu}    10
    wait until element is visible    ${HomepageReturnMenu}    10
    wait until element is visible    ${HomepageCustomerMenu}    10
    wait until element is visible    ${HomepageMessagesMenu}    10
    wait until element is visible    ${HomepageProfileMenu}    10
    wait until element is visible    ${HomepageCompanyMenu}    10
    wait until element is visible    ${HomepageSettingsMenu}    10

    capture element screenshot    ${HomepageLogo}
#    capture element screenshot    ${HomepageUserGreeting}
    capture element screenshot    ${HomepageUserAccount}
    capture element screenshot    ${HomepageOrders}
    capture element screenshot    ${HomepageReturn}
    capture element screenshot    ${HomepageNewBuyer}
    capture element screenshot    ${HomepageMessage}
    capture element screenshot    ${HomepageMyAccountLabel}
    capture element screenshot    ${HomepageOrdersMenu}
    capture element screenshot    ${HomepageReturnMenu}
    capture element screenshot    ${HomepageCustomerMenu}
    capture element screenshot    ${HomepageMessagesMenu}
    capture element screenshot    ${HomepageProfileMenu}
    capture element screenshot    ${HomepageCompanyMenu}
    capture element screenshot    ${HomepageSettingsMenu}

    sleep   5

#-----------------------------------------------------Dealer Top Navigation---------------------------------------------

User should be able to view top navigation
#    wait until element is visible    ${HomepageUserGreeting}    10
    wait until element is visible    ${HomepageUserAccount}    10
    wait until element is visible    ${HomepageOrders}    10
    wait until element is visible    ${HomepageReturn}    10
    wait until element is visible    ${HomepageNewBuyer}    10
    wait until element is visible    ${HomepageMessage}    10

    capture element screenshot    ${HomepageLogo}
#    capture element screenshot    ${HomepageUserGreeting}
    capture element screenshot    ${HomepageUserAccount}
    capture element screenshot    ${HomepageOrders}
    capture element screenshot    ${HomepageReturn}
    capture element screenshot    ${HomepageNewBuyer}
    capture element screenshot    ${HomepageMessage}

User should be able to view top navigation in HK Dealer Home Page
    wait until element is visible    ${HomepageUserAccount}    10
    wait until element is visible    ${HomepageOrders}    10
    wait until element is visible    ${HomepageReturn}    10
    wait until element is visible    ${HomepageMessage}    10

    capture element screenshot    ${HomepageLogo}
    capture element screenshot    ${HomepageUserAccount}
    capture element screenshot    ${HomepageOrders}
    capture element screenshot    ${HomepageReturn}
    capture element screenshot    ${HomepageMessage}

User should be able to click account from top navigation
    click element    ${HomepageUserAccount}
    sleep    5
    capture page screenshot

User should be able to click orders from top navigation
    click element    ${HomepageOrders}
    sleep    5
    capture page screenshot

User should be able to click return from top navigation
    wait until element is visible    ${HomepageReturn}
    click element    ${HomepageReturn}
    sleep    5
    capture page screenshot

User should be able to click new buyer from top navigation
    click element    ${HomepageNewBuyer}
    sleep    5
    capture page screenshot

User should be able to click messages from top navigation
    wait until element is visible    ${HomepageMessage}    10
    click element    ${HomepageMessage}
    sleep    5
    capture page screenshot

User should be able to Logout
    wait until element is visible    ${HomepageUserAccount}    10
    mouse over    ${HomepageUserAccount}
    wait until element is visible    ${HomepageUserLogout}    10
    click element    ${HomepageUserLogout}
    sleep    2


#-----------------------------------------------------Dealer Left Navigation--------------------------------------------

User should be able to click orders from left navigation
    wait until element is visible    ${HomepageOrdersMenu}    10
    scroll element into view    ${HomepageOrdersMenu}
    click element    ${HomepageOrdersMenu}
    sleep    5
    capture page screenshot

User should be able to click Return from left navigation
    wait until element is visible   ${HomepageReturnMenu}    10
    scroll element into view    ${HomepageReturnMenu}
    click element    ${HomepageReturnMenu}
    sleep    5
    capture page screenshot

User should be able to click and expand Customer Management
    wait until element is visible    ${HomepageCustomerMenu}    10
    scroll element into view    ${HomepageCustomerMenu}
    click element    ${HomepageCustomerMenu}
    sleep    5

User should be able to click Customer Manegement - New Reg from left navigation
    Wait Until Element Is Visible    ${HomepageCustomerNewReg}    10
    scroll element into view    ${HomepageCustomerNewReg}
    click element    ${HomepageCustomerNewReg}
    sleep    5
    capture page screenshot

User should be able to click Customer Manegement - Buyer Rel from left navigation
    Wait Until Element Is Visible    ${HomepageCustomerBuyerRelation}    10
    scroll element into view    ${HomepageCustomerBuyerRelation}
    click element    ${HomepageCustomerBuyerRelation}
    sleep    5
    capture page screenshot

User should be able to click Messages from left navigation
    wait until element is visible    ${HomepageMessagesMenu}    10
    scroll element into view    ${HomepageMessagesMenu}
    click element    ${HomepageMessagesMenu}
    sleep    5
    capture page screenshot

User should be able to click and expand Profile
    wait until element is visible    ${HomepageProfileMenu}    10
    scroll element into view    ${HomepageProfileMenu}
    click element    ${HomepageProfileMenu}
    sleep    5

User should be able to click Profile - Account Details from left navigation
    Wait Until Element Is Visible    ${HomepageProfileAccountDetails}    10
    scroll element into view    ${HomepageProfileAccountDetails}
    click element    ${HomepageProfileAccountDetails}
    capture page screenshot
    sleep    5

User should be able to click Profile - Change Pass from left navigation
    Wait Until Element Is Visible    ${HomepageProfileChangePass}    10
    scroll element into view    ${HomepageProfileChangePass}
    click element    ${HomepageProfileChangePass}
    capture page screenshot
    sleep    5

User should be able to click and expand Company
    wait until element is visible    ${HomepageCompanyMenu}    10
    scroll element into view    ${HomepageCompanyMenu}
    click element    ${HomepageCompanyMenu}
    sleep    5

User should be able to click Company - Company Details from left navigation
    Wait Until Element Is Visible    ${HomepageCompanyDetails}    10
    scroll element into view    ${HomepageCompanyDetails}
    click element    ${HomepageCompanyDetails}
    capture page screenshot
    sleep    5

User should be able to click Company - Staff Pass from left navigation
    Wait Until Element Is Visible    ${HomepageCompanyStaff}    10
    scroll element into view    ${HomepageCompanyStaff}
    click element    ${HomepageCompanyStaff}
    capture page screenshot
    sleep    5

User should be able to click Settings from left navigation
    wait until element is visible    ${HomepageSettingsMenu}    10
    scroll element into view    ${HomepageSettingsMenu}
    click element    ${HomepageSettingsMenu}
    sleep    5
    capture page screenshot


#-----------------------------------------------------Dealer Move to Top------------------------------------------------
TC Move to Top
    scroll element into view    ${HomepageMyAccountLabel}
    sleep     3