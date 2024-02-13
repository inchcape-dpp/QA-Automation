*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary

#Resource  ../../../Resource/testdata/config.robot
Resource  ../../../Resource/testdata/Dealer/Dealer_Variable.robot
Resource  ../../../Resource/testdata/credentials.robot



*** Keywords ***
#-----------------------------------------------------Dealer Settings Page----------------------------------------------
User should be able to view settings page
    wait until element is visible    ${SettingsPagePanelContainer}    10
    wait until element is visible    ${SettingsPagePanelHeader}    10

    wait until element is visible    ${SettingsPageEmailNotifContainer}    10
    wait until element is visible    ${SettingsPageGeneralMessNotifContainer}    10
    wait until element is visible    ${SettingsPageOrderMessNotifContainer}    10
    wait until element is visible    ${SettingsPageReturnMessNotifContainer}    10
    wait until element is visible    ${SettingsPageProductMessNotifContainer}    10
    wait until element is visible    ${SettingsPageOrderCreateNotifContainer}    10
    wait until element is visible    ${SettingsPageBackOrderNotifContainer}    10
    wait until element is visible    ${SettingsPagePartNumMaskContainer}    10
    wait until element is visible    ${SettingsPageReturnsContainer}    10
    wait until element is visible    ${SettingsPageDCOrderContainer}    10

    capture element screenshot    ${SettingsPageEmailNotifContainer}
    capture element screenshot    ${SettingsPageGeneralMessNotifContainer}
    capture element screenshot    ${SettingsPageOrderMessNotifContainer}
    capture element screenshot    ${SettingsPageReturnMessNotifContainer}
    capture element screenshot    ${SettingsPageProductMessNotifContainer}
    capture element screenshot    ${SettingsPageOrderCreateNotifContainer}
    capture element screenshot    ${SettingsPageBackOrderNotifContainer}
    capture element screenshot    ${SettingsPagePartNumMaskContainer}
    capture element screenshot    ${SettingsPageReturnsContainer}
    capture element screenshot    ${SettingsPageDCOrderContainer}

    capture page screenshot
    scroll element into view    ${SettignsPageSaveButton}
    capture page screenshot

    scroll element into view    ${SettingsPagePanelHeader}

    sleep    2

User should be able to toggle on/off email notification in Dealer Settings Page
    wait until element is visible    ${SettingsPageEmailNotifToggle}    10
    scroll element into view    ${SettingsPageEmailNotifContainer}
    click element    ${SettingsPageEmailNotifToggle}
    capture element screenshot    ${SettingsPageEmailNotifToggle}
    sleep    2

User should be able to toggle on/off general message notification in Dealer Settings Page
    wait until element is visible    ${SettingsPageGeneralMessNotifToggle}    10
    scroll element into view    ${SettingsPageGeneralMessNotifContainer}
    click element    ${SettingsPageGeneralMessNotifToggle}
    capture element screenshot    ${SettingsPageGeneralMessNotifToggle}
    sleep    2

User should be able to toggle on/off order message notification in Dealer Settings Page
    wait until element is visible    ${SettingsPageOrderMessNotifToggle}    10
    scroll element into view    ${SettingsPageOrderMessNotifContainer}
    click element    ${SettingsPageOrderMessNotifToggle}
    capture element screenshot    ${SettingsPageOrderMessNotifToggle}
    sleep    2

User should be able to toggle on/off return message notification in Dealer Settings Page
    wait until element is visible    ${SettingsPageReturnMessNotifToggle}    10
    scroll element into view    ${SettingsPageReturnMessNotifContainer}
    click element    ${SettingsPageReturnMessNotifToggle}
    capture element screenshot    ${SettingsPageReturnMessNotifToggle}
    sleep    2

User should be able to toggle on/off product message notification in Dealer Settings Page
    wait until element is visible    ${SettingsPageProductMessNotifToggle}    10
    scroll element into view    ${SettingsPageProductMessNotifContainer}
    click element    ${SettingsPageProductMessNotifToggle}
    capture element screenshot    ${SettingsPageProductMessNotifToggle}
    sleep    2

User should be able to toggle on/off order creation notification in Dealer Settings Page
    wait until element is visible    ${SettingsPageOrderCreateNotifToggle}    10
    scroll element into view    ${SettingsPageOrderCreateNotifContainer}
    click element    ${SettingsPageOrderCreateNotifToggle}
    capture element screenshot    ${SettingsPageOrderCreateNotifToggle}
    sleep    2

User should be able to toggle on/off back order notification in Dealer Settings Page
    wait until element is visible    ${SettingsPageBackOrderNotifToggle}    10
    scroll element into view    ${SettingsPageBackOrderNotifContainer}
    click element    ${SettingsPageBackOrderNotifToggle}
    capture element screenshot    ${SettingsPageBackOrderNotifToggle}
    sleep    2

User should be able to toggle on/off part number masking in Dealer Settings Page
    wait until element is visible    ${SettingsPagePartNumMaskToggle}    10
    scroll element into view    ${SettingsPagePartNumMaskContainer}
    click element    ${SettingsPagePartNumMaskToggle}
    capture element screenshot    ${SettingsPagePartNumMaskToggle}
    sleep    2

User should be able to toggle on/off returns in Dealer Settings Page
    wait until element is visible    ${SettingsPageReturnsToggle}    10
    scroll element into view    ${SettingsPageReturnsContainer}
    click element    ${SettingsPageReturnsToggle}
    capture element screenshot    ${SettingsPageReturnsToggle}
    sleep    2

User should be able to toggle on/off dc orders in Dealer Settings Page
    wait until element is visible    ${SettingsPageDCOrderToggle}    10
    scroll element into view    ${SettingsPageDCOrderContainer}
    click element    ${SettingsPageDCOrderToggle}
    capture element screenshot    ${SettingsPageDCOrderToggle}
    sleep    2

User should be able to click + icon on email notification in Dealer Settings Page
    wait until element is visible    ${SettingsPageEmailNotifAddIcon}    10
    scroll element into view    ${SettingsPageEmailNotifContainer}
    capture element screenshot    ${SettingsPageEmailNotifAddIcon}
    click element    ${SettingsPageEmailNotifAddIcon}
    sleep    2

User should be able to click + icon on general message notification in Dealer Settings Page
    wait until element is visible    ${SettingsPageGeneralMessNotifAddIcon}    10
    scroll element into view    ${SettingsPageGeneralMessNotifContainer}
    capture element screenshot    ${SettingsPageGeneralMessNotifAddIcon}
    click element    ${SettingsPageGeneralMessNotifAddIcon}
    sleep    2

User should be able to click + icon on order message notification in Dealer Settings Page
    wait until element is visible    ${SettingsPageOrderMessNotifAddIcon}    10
    scroll element into view    ${SettingsPageOrderMessNotifContainer}
    capture element screenshot    ${SettingsPageOrderMessNotifAddIcon}
    click element    ${SettingsPageOrderMessNotifAddIcon}
    sleep    2

User should be able to click + icon on return message notification in Dealer Settings Page
    wait until element is visible    ${SettingsPageReturnMessNotifAddIcon}    10
    scroll element into view    ${SettingsPageReturnMessNotifContainer}
    capture element screenshot    ${SettingsPageReturnMessNotifAddIcon}
    click element    ${SettingsPageReturnMessNotifAddIcon}
    sleep    2

User should be able to click + icon on product message notification in Dealer Settings Page
    wait until element is visible    ${SettingsPageProductMessNotifAddIcon}    10
    scroll element into view    ${SettingsPageProductMessNotifContainer}
    capture element screenshot    ${SettingsPageProductMessNotifAddIcon}
    click element    ${SettingsPageProductMessNotifAddIcon}
    sleep    2

User should be able to click + icon on order creation notification in Dealer Settings Page
    wait until element is visible    ${SettingsPageOrderCreateNotifAddIcon}    10
    scroll element into view    ${SettingsPageOrderCreateNotifContainer}
    capture element screenshot    ${SettingsPageOrderCreateNotifAddIcon}
    click element    ${SettingsPageOrderCreateNotifAddIcon}
    sleep    2

User should be able to click + icon on back order notification in Dealer Settings Page
    wait until element is visible    ${SettingsPageBackOrderNotifAddIcon}    10
    scroll element into view    ${SettingsPageBackOrderNotifContainer}
    capture element screenshot    ${SettingsPageBackOrderNotifAddIcon}
    click element    ${SettingsPageBackOrderNotifAddIcon}
    sleep    2

User should be able to delete user email on email notification in Dealer Settings Page
    ${DelLast}    get element count    ${SettingsPageEmailNotifDelIcon}
    wait until element is visible    ((//div[@class='order-settings-section-container group-type-border'])[1]//cx-icon[@class='cx-icon dpp-icons__remove action-icon'])[${DelLast}]    10
    scroll element into view    ${SettingsPageEmailNotifContainer}
    capture element screenshot    ((//div[@class='order-settings-section-container group-type-border'])[1]//cx-icon[@class='cx-icon dpp-icons__remove action-icon'])[${DelLast}]
    click element    ((//div[@class='order-settings-section-container group-type-border'])[1]//cx-icon[@class='cx-icon dpp-icons__remove action-icon'])[${DelLast}]
    sleep    2

User should be able to delete user email on general message notification in Dealer Settings Page
    ${DelLast}    get element count    ${SettingsPageGeneralMessNotifDelIcon}
    wait until element is visible    ((//div[@class='order-settings-section-container group-type-border'])[2]//cx-icon[@class='cx-icon dpp-icons__remove action-icon'])[${DelLast}]    10
    scroll element into view    ${SettingsPageGeneralMessNotifContainer}
    capture element screenshot    ((//div[@class='order-settings-section-container group-type-border'])[2]//cx-icon[@class='cx-icon dpp-icons__remove action-icon'])[${DelLast}]
    click element    ((//div[@class='order-settings-section-container group-type-border'])[2]//cx-icon[@class='cx-icon dpp-icons__remove action-icon'])[${DelLast}]
    sleep    2

User should be able to delete user email on order message notification in Dealer Settings Page
    ${DelLast}    get element count    ${SettingsPageOrderMessNotifDelIcon}
    wait until element is visible    ((//div[@class='order-settings-section-container group-type-border'])[3]//cx-icon[@class='cx-icon dpp-icons__remove action-icon'])[${DelLast}]    10
    scroll element into view    ${SettingsPageOrderMessNotifContainer}
    capture element screenshot    ((//div[@class='order-settings-section-container group-type-border'])[3]//cx-icon[@class='cx-icon dpp-icons__remove action-icon'])[${DelLast}]
    click element    ((//div[@class='order-settings-section-container group-type-border'])[3]//cx-icon[@class='cx-icon dpp-icons__remove action-icon'])[${DelLast}]
    sleep    2

User should be able to delete user email on return message notification in Dealer Settings Page
    ${DelLast}    get element count    ${SettingsPageReturnMessNotifDelIcon}
    wait until element is visible    ((//div[@class='order-settings-section-container group-type-border'])[4]//cx-icon[@class='cx-icon dpp-icons__remove action-icon'])[${DelLast}]    10
    scroll element into view    ${SettingsPageReturnMessNotifContainer}
    capture element screenshot    ((//div[@class='order-settings-section-container group-type-border'])[4]//cx-icon[@class='cx-icon dpp-icons__remove action-icon'])[${DelLast}]
    click element    ((//div[@class='order-settings-section-container group-type-border'])[4]//cx-icon[@class='cx-icon dpp-icons__remove action-icon'])[${DelLast}]
    sleep    2

User should be able to delete user email on product message notification in Dealer Settings Page
    ${DelLast}    get element count    ${SettingsPageProductMessNotifDelIcon}
    wait until element is visible    ((//div[@class='order-settings-section-container group-type-border'])[5]//cx-icon[@class='cx-icon dpp-icons__remove action-icon'])[${DelLast}]    10
    scroll element into view    ${SettingsPageProductMessNotifContainer}
    capture element screenshot    ((//div[@class='order-settings-section-container group-type-border'])[5]//cx-icon[@class='cx-icon dpp-icons__remove action-icon'])[${DelLast}]
    click element    ((//div[@class='order-settings-section-container group-type-border'])[5]//cx-icon[@class='cx-icon dpp-icons__remove action-icon'])[${DelLast}]
    sleep    2

User should be able to delete user email on order creation notification in Dealer Settings Page
    ${DelLast}    get element count    ${SettingsPageOrderCreateNotifDelIcon}
    wait until element is visible    ((//div[@class='order-settings-section-container group-type-border'])[6]//cx-icon[@class='cx-icon dpp-icons__remove action-icon'])[${DelLast}]    10
    scroll element into view    ${SettingsPageOrderCreateNotifContainer}
    capture element screenshot    ((//div[@class='order-settings-section-container group-type-border'])[6]//cx-icon[@class='cx-icon dpp-icons__remove action-icon'])[${DelLast}]
    click element    ((//div[@class='order-settings-section-container group-type-border'])[6]//cx-icon[@class='cx-icon dpp-icons__remove action-icon'])[${DelLast}]
    sleep    2

User should be able to delete user email on back order notification in Dealer Settings Page
    ${DelLast}    get element count    ${SettingsPageBackOrderNotifDelIcon}
    wait until element is visible    ((//div[@class='order-settings-section-container'])[1][1]//cx-icon[@class='cx-icon dpp-icons__remove action-icon'])[${DelLast}]    10
    scroll element into view    ${SettingsPageBackOrderNotifContainer}
    capture element screenshot    ((//div[@class='order-settings-section-container'])[1][1]//cx-icon[@class='cx-icon dpp-icons__remove action-icon'])[${DelLast}]
    click element    ((//div[@class='order-settings-section-container'])[1][1]//cx-icon[@class='cx-icon dpp-icons__remove action-icon'])[${DelLast}]
    sleep    2

User should be able to click edit button on email notification in Dealer Settings Page
    ${GetEdit}    get element count    ${SettingsPageEmailNotifEditButton}
    wait until element is visible    ((//div[@class='order-settings-section-container group-type-border'])[1]//cx-icon[@class='cx-icon dpp-icons__pencil-active action-icon'])[${GetEdit}]    10
    scroll element into view    ${SettingsPageEmailNotifContainer}
    capture element screenshot    ((//div[@class='order-settings-section-container group-type-border'])[1]//cx-icon[@class='cx-icon dpp-icons__pencil-active action-icon'])[${GetEdit}]
    click element    ((//div[@class='order-settings-section-container group-type-border'])[1]//cx-icon[@class='cx-icon dpp-icons__pencil-active action-icon'])[${GetEdit}]
    sleep    2

User should be able to click edit button on general message notification in Dealer Settings Page
    ${GetEdit}    get element count    ${SettingsPageGeneralMessNotifEditButton}
    wait until element is visible    ((//div[@class='order-settings-section-container group-type-border'])[2]//cx-icon[@class='cx-icon dpp-icons__pencil-active action-icon'])[${GetEdit}]    10
    scroll element into view    ${SettingsPageGeneralMessNotifContainer}
    capture element screenshot    ((//div[@class='order-settings-section-container group-type-border'])[2]//cx-icon[@class='cx-icon dpp-icons__pencil-active action-icon'])[${GetEdit}]
    click element    ((//div[@class='order-settings-section-container group-type-border'])[2]//cx-icon[@class='cx-icon dpp-icons__pencil-active action-icon'])[${GetEdit}]
    sleep    2

User should be able to click edit button on order message notification in Dealer Settings Page
    ${GetEdit}    get element count    ${SettingsPageOrderMessNotifEditButton}
    wait until element is visible    ((//div[@class='order-settings-section-container group-type-border'])[3]//cx-icon[@class='cx-icon dpp-icons__pencil-active action-icon'])[${GetEdit}]    10
    scroll element into view    ${SettingsPageOrderMessNotifContainer}
    capture element screenshot    ((//div[@class='order-settings-section-container group-type-border'])[3]//cx-icon[@class='cx-icon dpp-icons__pencil-active action-icon'])[${GetEdit}]
    click element    ((//div[@class='order-settings-section-container group-type-border'])[3]//cx-icon[@class='cx-icon dpp-icons__pencil-active action-icon'])[${GetEdit}]
    sleep    2

User should be able to click edit button on return message notification in Dealer Settings Page
    ${GetEdit}    get element count   ${SettingsPageReturnMessNotifEditButton}
    wait until element is visible    ((//div[@class='order-settings-section-container group-type-border'])[4]//cx-icon[@class='cx-icon dpp-icons__pencil-active action-icon'])[${GetEdit}]    10
    scroll element into view    ${SettingsPageReturnMessNotifContainer}
    capture element screenshot    ((//div[@class='order-settings-section-container group-type-border'])[4]//cx-icon[@class='cx-icon dpp-icons__pencil-active action-icon'])[${GetEdit}]
    click element    ((//div[@class='order-settings-section-container group-type-border'])[4]//cx-icon[@class='cx-icon dpp-icons__pencil-active action-icon'])[${GetEdit}]
    sleep    2

User should be able to click edit button on product message notification in Dealer Settings Page
    ${GetEdit}    get element count   ${SettingsPageProductMessNotifEditButton}
    wait until element is visible    ((//div[@class='order-settings-section-container group-type-border'])[5]//cx-icon[@class='cx-icon dpp-icons__pencil-active action-icon'])[${GetEdit}]    10
    scroll element into view    ${SettingsPageProductMessNotifContainer}
    capture element screenshot    ((//div[@class='order-settings-section-container group-type-border'])[5]//cx-icon[@class='cx-icon dpp-icons__pencil-active action-icon'])[${GetEdit}]
    click element    ((//div[@class='order-settings-section-container group-type-border'])[5]//cx-icon[@class='cx-icon dpp-icons__pencil-active action-icon'])[${GetEdit}]
    sleep    2

User should be able to click edit button on order creation notification in Dealer Settings Page
    ${GetEdit}    get element count   ${SettingsPageOrderCreateNotifEditButton}
    wait until element is visible    ((//div[@class='order-settings-section-container group-type-border'])[6]//cx-icon[@class='cx-icon dpp-icons__pencil-active action-icon'])[${GetEdit}]    10
    scroll element into view    ${SettingsPageOrderCreateNotifContainer}
    capture element screenshot    ((//div[@class='order-settings-section-container group-type-border'])[6]//cx-icon[@class='cx-icon dpp-icons__pencil-active action-icon'])[${GetEdit}]
    click element    ((//div[@class='order-settings-section-container group-type-border'])[6]//cx-icon[@class='cx-icon dpp-icons__pencil-active action-icon'])[${GetEdit}]
    sleep    2

User should be able to click edit button on back order notification in Dealer Settings Page
    ${GetEdit}    get element count   ${SettingsPageBackOrderNotifEditButton}
    wait until element is visible    ((//div[@class='order-settings-section-container'])[1]//cx-icon[@class='cx-icon dpp-icons__pencil-active action-icon'])[${GetEdit}]    10
    scroll element into view    ${SettingsPageBackOrderNotifContainer}
    capture element screenshot    ((//div[@class='order-settings-section-container'])[1]//cx-icon[@class='cx-icon dpp-icons__pencil-active action-icon'])[${GetEdit}]
    click element    ((//div[@class='order-settings-section-container'])[1]//cx-icon[@class='cx-icon dpp-icons__pencil-active action-icon'])[${GetEdit}]
    sleep    2

User should be able to input valid email on email notification textbox in Dealer Settings Page
    wait until element is visible    ${SettingsPageEmailNotifEmailTextBox}    10
    clear element text    ${SettingsPageEmailNotifEmailTextBox}
    input text    ${SettingsPageEmailNotifEmailTextBox}    ${SettingsPageValidEmailValue}
    capture element screenshot    ${SettingsPageEmailNotifEmailTextBox}
    sleep    2

User should be able to input valid email on general message notification textbox in Dealer Settings Page
    wait until element is visible    ${SettingsPageGeneralMessNotifEmailTextBox}    10
    clear element text    ${SettingsPageGeneralMessNotifEmailTextBox}
    input text    ${SettingsPageGeneralMessNotifEmailTextBox}    ${SettingsPageValidEmailValue}
    capture element screenshot    ${SettingsPageGeneralMessNotifEmailTextBox}
    sleep    2

User should be able to input valid email on order message notification textbox in Dealer Settings Page
    wait until element is visible    ${SettingsPageOrderMessNotifEmailTextBox}    10
    clear element text    ${SettingsPageOrderMessNotifEmailTextBox}
    input text    ${SettingsPageOrderMessNotifEmailTextBox}    ${SettingsPageValidEmailValue}
    capture element screenshot    ${SettingsPageOrderMessNotifEmailTextBox}
    sleep    2

User should be able to input valid email on return message notification textbox in Dealer Settings Page
    wait until element is visible    ${SettingsPageReturnMessNotifEmailTextBox}    10
    clear element text    ${SettingsPageReturnMessNotifEmailTextBox}
    input text    ${SettingsPageReturnMessNotifEmailTextBox}    ${SettingsPageValidEmailValue}
    capture element screenshot    ${SettingsPageReturnMessNotifEmailTextBox}
    sleep    2

User should be able to input valid email on product message notification textbox in Dealer Settings Page
    wait until element is visible    ${SettingsPageProductMessNotifEmailTextBox}    10
    clear element text    ${SettingsPageProductMessNotifEmailTextBox}
    input text    ${SettingsPageProductMessNotifEmailTextBox}    ${SettingsPageValidEmailValue}
    capture element screenshot    ${SettingsPageProductMessNotifEmailTextBox}
    sleep    2

User should be able to input valid email on order creation notification textbox in Dealer Settings Page
    wait until element is visible    ${SettingsPageOrderCreateNotifEmailTextBox}    10
    clear element text    ${SettingsPageOrderCreateNotifEmailTextBox}
    input text    ${SettingsPageOrderCreateNotifEmailTextBox}    ${SettingsPageValidEmailValue}
    capture element screenshot   ${SettingsPageOrderCreateNotifEmailTextBox}
    sleep    2

User should be able to input valid email on back order notification textbox in Dealer Settings Page
    wait until element is visible    ${SettingsPageBackOrderNotifEmailTextBox}    10
    clear element text    ${SettingsPageBackOrderNotifEmailTextBox}
    input text    ${SettingsPageBackOrderNotifEmailTextBox}    ${SettingsPageValidEmailValue}
    capture element screenshot   ${SettingsPageBackOrderNotifEmailTextBox}
    sleep    2

User should be able to view error message on email notification in Dealer Settings Page
    wait until element is visible    ${SettingsPageEmailNotifEmailTextBox}    10
    clear element text    ${SettingsPageEmailNotifEmailTextBox}
    input text    ${SettingsPageEmailNotifEmailTextBox}    ${SettingsPageInvalidEmailValue}
    wait until element is visible    ${SettingsPageEmailNotifEmailErrorMessage}    10
    capture element screenshot    ${SettingsPageEmailNotifEmailErrorMessage}
    sleep    2

User should be able to view error message on general message notification in Dealer Settings Page
    wait until element is visible    ${SettingsPageGeneralMessNotifEmailTextBox}    10
    clear element text    ${SettingsPageGeneralMessNotifEmailTextBox}
    input text    ${SettingsPageGeneralMessNotifEmailTextBox}    ${SettingsPageInvalidEmailValue}
    wait until element is visible    ${SettingsPageGeneralMessNotifEmailErrorMessage}    10
    capture element screenshot    ${SettingsPageGeneralMessNotifEmailErrorMessage}
    sleep    2

User should be able to view error message on order message notification in Dealer Settings Page
    wait until element is visible    ${SettingsPageOrderMessNotifEmailTextBox}    10
    clear element text    ${SettingsPageOrderMessNotifEmailTextBox}
    input text    ${SettingsPageOrderMessNotifEmailTextBox}    ${SettingsPageInvalidEmailValue}
    wait until element is visible    ${SettingsPageOrderMessNotifEmailErrorMessage}    10
    capture element screenshot    ${SettingsPageOrderMessNotifEmailErrorMessage}
    sleep    2

User should be able to view error message on return message notification in Dealer Settings Page
    wait until element is visible    ${SettingsPageReturnMessNotifEmailTextBox}    10
    clear element text    ${SettingsPageReturnMessNotifEmailTextBox}
    input text    ${SettingsPageReturnMessNotifEmailTextBox}    ${SettingsPageInvalidEmailValue}
    wait until element is visible    ${SettingsPageReturnMessNotifEmailErrorMessage}    10
    capture element screenshot    ${SettingsPageReturnMessNotifEmailErrorMessage}
    sleep    2

User should be able to view error message on product message notification in Dealer Settings Page
    wait until element is visible    ${SettingsPageProductMessNotifEmailTextBox}    10
    clear element text    ${SettingsPageProductMessNotifEmailTextBox}
    input text    ${SettingsPageProductMessNotifEmailTextBox}    ${SettingsPageInvalidEmailValue}
    wait until element is visible    ${SettingsPageProductMessNotifEmailErrorMessage}    10
    capture element screenshot    ${SettingsPageProductMessNotifEmailErrorMessage}
    sleep    2

User should be able to view error message on order creation notification in Dealer Settings Page
    wait until element is visible    ${SettingsPageOrderCreateNotifEmailTextBox}    10
    clear element text    ${SettingsPageOrderCreateNotifEmailTextBox}
    input text    ${SettingsPageOrderCreateNotifEmailTextBox}    ${SettingsPageInvalidEmailValue}
    wait until element is visible    ${SettingsPageOrderCreateNotifEmailErrorMessage}    10
    capture element screenshot    ${SettingsPageOrderCreateNotifEmailErrorMessage}
    sleep    2

User should be able to view error message on back order notification in Dealer Settings Page
    wait until element is visible    ${SettingsPageBackOrderNotifEmailTextBox}    10
    clear element text    ${SettingsPageBackOrderNotifEmailTextBox}
    input text    ${SettingsPageBackOrderNotifEmailTextBox}    ${SettingsPageInvalidEmailValue}
    wait until element is visible    ${SettingsPageBackOrderNotifEmailErrorMessage}    10
    capture element screenshot    ${SettingsPageBackOrderNotifEmailErrorMessage}
    sleep    2

User should be able to click save button on email notification in Dealer Settings Page
    wait until element is visible    ${SettingsPageEmailNotifEmailSaveButton}    10
    capture element screenshot    ${SettingsPageEmailNotifEmailSaveButton}
    click element    ${SettingsPageEmailNotifEmailSaveButton}
    sleep    2

User should be able to click save button on general message notification in Dealer Settings Page
    wait until element is visible    ${SettingsPageGeneralMessNotifEmailSaveButton}    10
    capture element screenshot    ${SettingsPageGeneralMessNotifEmailSaveButton}
    click element    ${SettingsPageGeneralMessNotifEmailSaveButton}
    sleep    2

User should be able to click save button on order message notification in Dealer Settings Page
    wait until element is visible    ${SettingsPageOrderMessNotifEmailSaveButton}    10
    capture element screenshot    ${SettingsPageOrderMessNotifEmailSaveButton}
    click element    ${SettingsPageOrderMessNotifEmailSaveButton}
    sleep    2

User should be able to click save button on return message notification in Dealer Settings Page
    wait until element is visible   ${SettingsPageReturnMessNotifEmailSaveButton}    10
    capture element screenshot    ${SettingsPageReturnMessNotifEmailSaveButton}
    click element    ${SettingsPageReturnMessNotifEmailSaveButton}
    sleep    2

User should be able to click save button on product message notification in Dealer Settings Page
    wait until element is visible   ${SettingsPageProductMessNotifEmailSaveButton}    10
    capture element screenshot    ${SettingsPageProductMessNotifEmailSaveButton}
    click element    ${SettingsPageProductMessNotifEmailSaveButton}
    sleep    2

User should be able to click save button on order creation notification in Dealer Settings Page
    wait until element is visible   ${SettingsPageOrderCreateNotifEmailTSaveButton}    10
    capture element screenshot    ${SettingsPageOrderCreateNotifEmailTSaveButton}
    click element    ${SettingsPageOrderCreateNotifEmailTSaveButton}
    sleep    2

User should be able to click save button on back order notification in Dealer Settings Page
    wait until element is visible   ${SettingsPageBackOrderNotifEmailSaveButton}    10
    capture element screenshot    ${SettingsPageBackOrderNotifEmailSaveButton}
    click element    ${SettingsPageBackOrderNotifEmailSaveButton}
    sleep    2

User should be able to click cancel button on email notification in Dealer Settings Page
    wait until element is visible   ${SettingsPageEmailNotifEmailCancelButton}    10
    capture element screenshot    ${SettingsPageEmailNotifEmailCancelButton}
    click element    ${SettingsPageEmailNotifEmailCancelButton}
    sleep    2

User should be able to click cancel button on general message notification in Dealer Settings Page
    wait until element is visible   ${SettingsPageGeneralMessNotifEmailCancelButton}    10
    capture element screenshot    ${SettingsPageGeneralMessNotifEmailCancelButton}
    click element    ${SettingsPageGeneralMessNotifEmailCancelButton}
    sleep    2

User should be able to click cancel button on order message notification in Dealer Settings Page
    wait until element is visible   ${SettingsPageOrderMessNotifEmailCancelButton}    10
    capture element screenshot    ${SettingsPageOrderMessNotifEmailCancelButton}
    click element    ${SettingsPageOrderMessNotifEmailCancelButton}
    sleep    2

User should be able to click cancel button on return message notification in Dealer Settings Page
    wait until element is visible   ${SettingsPageReturnMessNotifEmailCancelButton}    10
    capture element screenshot    ${SettingsPageReturnMessNotifEmailCancelButton}
    click element    ${SettingsPageReturnMessNotifEmailCancelButton}
    sleep    2

User should be able to click cancel button on product message notification in Dealer Settings Page
    wait until element is visible   ${SettingsPageProductMessNotifEmailCancelButton}    10
    capture element screenshot    ${SettingsPageProductMessNotifEmailCancelButton}
    click element    ${SettingsPageProductMessNotifEmailCancelButton}
    sleep    2

User should be able to click cancel button on order creation notification in Dealer Settings Page
    wait until element is visible   ${SettingsPageOrderCreateNotifEmailTCancelButton}    10
    capture element screenshot    ${SettingsPageOrderCreateNotifEmailTCancelButton}
    click element    ${SettingsPageOrderCreateNotifEmailTCancelButton}
    sleep    2

User should be able to click cancel button on back order notification in Dealer Settings Page
    wait until element is visible   ${SettingsPageBackOrderNotifEmailCancelButton}    10
    capture element screenshot    ${SettingsPageBackOrderNotifEmailCancelButton}
    click element    ${SettingsPageBackOrderNotifEmailCancelButton}
    sleep    2

User should be able to click decrement icon on Returns in Dealer Settings Page
    wait until element is visible    ${SettingsPageReturnsDecrementButton}    10
    scroll element into view    ${SettingsPageReturnsContainer}
    capture element screenshot    ${SettingsPageReturnsDecrementButton}
    click element    ${SettingsPageReturnsDecrementButton}
    sleep    2

User should be able to click increment icon on Returns in Dealer Settings Page
    wait until element is visible    ${SettingsPageReturnsIncrementButton}    10
    scroll element into view    ${SettingsPageReturnsContainer}
    capture element screenshot    ${SettingsPageReturnsIncrementButton}
    click element    ${SettingsPageReturnsIncrementButton}
    sleep    2

User should be able to edit return days value on Returns in Dealer Settings Page
    wait until element is visible    ${SettingsPageReturnsNumberTextBox}    10
    scroll element into view    ${SettingsPageReturnsContainer}
    double click element    ${SettingsPageReturnsNumberTextBox}
    input text    ${SettingsPageReturnsNumberTextBox}    ${SettingsPageReturnDaysValue}
    capture element screenshot    ${SettingsPageReturnsNumberTextBox}
    sleep    2

User should be able to click save button Dealer Settings Page
    wait until element is visible    ${SettignsPageSaveButton}    10
    scroll element into view    ${SettignsPageSaveButton}
    capture element screenshot    ${SettignsPageSaveButton}
    click element    ${SettignsPageSaveButton}
    sleep    2

User should be able to click yes save changes in Dealer Settings Page
    wait until element is visible    ${SettignsPageSaveButtonConfirmationModal}    10
    wait until element is visible    ${SettignsPageSaveButtonConfirmationYesButton}    10
    capture element screenshot    ${SettignsPageSaveButtonConfirmationYesButton}
    click element    ${SettignsPageSaveButtonConfirmationYesButton}
    sleep    2

User should be able to click no save changes in Dealer Settings Page
    wait until element is visible    ${SettignsPageSaveButtonConfirmationModal}    10
    wait until element is visible    ${SettignsPageSaveButtonConfirmationNoButton}    10
    capture element screenshot    ${SettignsPageSaveButtonConfirmationNoButton}
    click element    ${SettignsPageSaveButtonConfirmationNoButton}
    sleep    2