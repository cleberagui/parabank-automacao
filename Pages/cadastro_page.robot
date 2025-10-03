*** Settings ***
Variables    ../Locators/cadastro_locators.yml
Resource     ../Utils/gerar_dados_fake.robot

*** Keywords ***
Validando que pagina de cadastro carregada
    Wait Until Element Is Visible    ${CADASTRO_INPUT_FIRSTNAME}
Preencher Cadastro Com Faker
    ${FIRSTNAME}    ${LASTNAME}    ${ADDRESS}    ${CITY}    ${STATE}    ${ZIPCODE}    ${PHONE}    ${SSN}    ${USERNAME}    ${PASSWORD}=    Gerar Dados Fake
    Input Text    ${CADASTRO_INPUT_FIRSTNAME}          ${FIRSTNAME}
    Input Text    ${CADASTRO_INPUT_LASTNAME}           ${LASTNAME}
    Input Text    ${CADASTRO_INPUT_ADDRESS}            ${ADDRESS}
    Wait Until Element Is Visible    ${CADASTRO_INPUT_CITY}
    Input Text    ${CADASTRO_INPUT_CITY}               ${CITY}
    Input Text    ${CADASTRO_INPUT_STATE}              ${STATE}
    Input Text    ${CADASTRO_INPUT_ZIPCODE}            ${ZIPCODE}
    Input Text    ${CADASTRO_INPUT_PHONE}              ${PHONE}
    Input Text    ${CADASTRO_INPUT_SSN}                ${SSN}
    Input Text    ${CADASTRO_INPUT_USERNAME}           ${USERNAME}
    Input Text    ${CADASTRO_INPUT_PASSWORD}           ${PASSWORD}
    Input Text    ${CADASTRO_INPUT_PASSWORD_CONFIRM}   ${PASSWORD}
Clicar no botao Register
    Wait Until Element Is Visible    ${CADASTRO_BUTTON_REGISTER}
    Click Element    ${CADASTRO_BUTTON_REGISTER}
Validando mensagem de retorno do sistema que a conta do cliente foi criada
    Wait Until Element Is Visible    ${ACCOUNT_CREATED_MESSAGE}

Preencher Cadastro Com Faker Deixando um Campo vazio
    ${FIRSTNAME}    ${LASTNAME}    ${ADDRESS}    ${CITY}    ${STATE}    ${ZIPCODE}    ${PHONE}    ${SSN}    ${USERNAME}    ${PASSWORD}=    Gerar Dados Fake
    Input Text    ${CADASTRO_INPUT_LASTNAME}           ${LASTNAME}
    Input Text    ${CADASTRO_INPUT_ADDRESS}            ${ADDRESS}
    Wait Until Element Is Visible    ${CADASTRO_INPUT_CITY}
    Input Text    ${CADASTRO_INPUT_CITY}               ${CITY}
    Input Text    ${CADASTRO_INPUT_STATE}              ${STATE}
    Input Text    ${CADASTRO_INPUT_ZIPCODE}            ${ZIPCODE}
    Input Text    ${CADASTRO_INPUT_PHONE}              ${PHONE}
    Input Text    ${CADASTRO_INPUT_SSN}                ${SSN}
    Input Text    ${CADASTRO_INPUT_USERNAME}           ${USERNAME}
    Input Text    ${CADASTRO_INPUT_PASSWORD}           ${PASSWORD}
    Input Text    ${CADASTRO_INPUT_PASSWORD_CONFIRM}   ${PASSWORD}

Validando que o sistema retornou o erro informando que o campo FIRSTNAME esta vazio
    Wait Until Element Is Visible   ${FIRST_NAME_IS_REQUIRED_MESSAGE}