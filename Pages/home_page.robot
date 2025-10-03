*** Settings ***
Resource        ../Utils/open_browser.robot
Variables       ../Locators/home_locators.yml
Resource        ../Utils/credenciais.robot

*** Keywords ***
Clicar em Register
    Wait Until Element Is Visible    ${HOME_BUTTON_REGISTER}    10
    Click Element    ${HOME_BUTTON_REGISTER}

Validando que esta na HOMEPAGE
    Wait Until Element Is Visible    ${HOME_DESCRIPTION_LOGIN}

Digitando o username
    ${USERNAME}    ${PASSWORD}    ${PASSWORD_INCORRECT}=    credenciais
    Input Text    ${HOME_INPUT_USERNAME}    ${USERNAME}
    
Digitando o password
    ${USERNAME}    ${PASSWORD}    ${PASSWORD_INCORRECT}=    credenciais
    Input Password    ${HOME_INPUT_PASSWORD}    ${PASSWORD}

Clicar no botao "Log In"
    Click Element    ${HOME_BUTTON_LOG_IN}

Digitando o password incorreto
    ${USERNAME}    ${PASSWORD}    ${PASSWORD_INCORRECT}=    credenciais
    Input Password    ${HOME_INPUT_PASSWORD}    ${PASSWORD_INCORRECT}

Validando que o sistema exibiu a mensagem "The username and password could not be verified." 
    Wait Until Element Is Visible    ${ACCOUNT_NAME_LOGGED_PASSWORD_INCORRECT}
