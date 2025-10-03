*** Settings ***

Resource            ../Utils/open_browser.robot
Resource            ../Steps/cadastro_steps.robot
Resource            ../Steps/home_steps.robot

##Execução antes de iniciar o teste
Test Setup          Abrir o navegador
##Execução após execução do teste
Test Teardown       Fechar o navegador



*** Test Cases ***
Cenário 1: Realizar cadastro de cliente (Pessoa Fisica)
    Dado que o usuário está na página de registro
    Quando preenche todos os campos obrigatórios com informações válidas
    E clica em "Register"
    Então devo ser redirecionado para a página informado que o cadastro foi finalizado com sucesso

Cenário 2: Cadastro com campos obrigatórios em branco
    Dado que o usuário está na página de registro
    Quando deixa um campo obrigatório vazio
    E clica em "Register"
    Então o sistema exibe mensagem de erro solicitando o preenchimento
