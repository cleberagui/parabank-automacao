*** Settings ***

Resource            ../Utils/open_browser.robot
Resource            ../Steps//account_steps.robot
Resource            ../Steps/home_steps.robot

##Execução antes de iniciar o teste
Test Setup          Abrir o navegador
##Execução após execução do teste
Test Teardown       Fechar o navegador



*** Test Cases ***
Cenário: Login com credenciais válidas
    Dado que o usuário está na página inicial do ParaBank
    Quando o usuário informa username e password
    E clica em "Log In"
    Então o sistema redireciona para a página da conta
    E mostra o nome do usuário logado

Cenário: Login com credenciais inválidas
    Dado que o usuário está na página inicial do ParaBank
    Quando o usuário informa username e password incorreto
    E clica em "Log In"
    Então o sistema exibe a mensagem "The username and password could not be verified."

Cenário: Logout com sucesso
    Dado que o usuário está logado
    Quando o usuário clica em "Log Out"
    Então o sistema redireciona para a página inicial
    E não exibe mais dados da conta

