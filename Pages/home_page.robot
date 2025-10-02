*** Settings ***
Resource        ../Utils/open_browser.robot
Variables       ../Locators/home_locators.yml

*** Keywords ***
Clicar em Register
    Wait Until Element Is Visible    ${HOME_BUTTON_REGISTER}    10
    Click Element    ${HOME_BUTTON_REGISTER}