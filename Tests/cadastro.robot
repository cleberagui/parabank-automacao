*** Settings ***

Resource            ../Utils/open_browser.robot
Resource            ../Steps/home_steps.robot
Resource            ../Steps//cadastro_steps.robot

##Execução antes de iniciar o teste
Test Setup          Abrir o navegador
##Execução após execução do teste
Test Teardown       Fechar o navegador



*** Test Cases ***
Cenário 1: Realizar cadastro de cliente (Pessoa Fisica)
    Dado que estou na página de cadastro
    Quando preencho todos os campos obrigatórios com informações válidas
    E clico no botão "Register"
    Então devo ser redirecionado para a página informado que o cadastro foi finalizado com sucesso
