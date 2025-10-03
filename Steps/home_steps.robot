*** Settings ***
Resource    ../Pages/home_page.robot




*** Keywords ***
 Dado que o usuário está na página de registro
    Clicar em Register
Dado que o usuário está na página inicial do ParaBank
    Validando que esta na HOMEPAGE
Quando o usuário informa username e password
    Digitando o username
    Digitando o password
    
E clica em "Log In"
    Clicar no botao "Log In"
Quando o usuário informa username e password incorreto
    Digitando o username
    Digitando o password incorreto
Então o sistema exibe a mensagem "The username and password could not be verified."
    Validando que o sistema exibiu a mensagem "The username and password could not be verified." 
        