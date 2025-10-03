*** Settings ***
Resource    ../Pages/account_page.robot


*** Keywords ***
Então o sistema redireciona para a página da conta
    Validar que o sistema foi redirecional para a pagina da conta
E mostra o nome do usuário logado
    Validando o nome do usuario