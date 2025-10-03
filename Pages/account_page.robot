*** Settings ***
Variables       ../Locators/account_locators.yml
Resource    ../Utils/Obter_nome_logado.robot

*** Keywords ***
Validar que o sistema foi redirecional para a pagina da conta
    Wait Until Element Is Visible   ${ACCOUNT_DESCRIPTION_OVERVIEW}

Validando o nome do usuario
    ${USERNAME}=    Obter Nome Logado
    Should Be Equal    ${USERNAME}    John Smith



     