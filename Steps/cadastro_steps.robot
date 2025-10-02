*** Settings ***
Resource    ../Pages/home_page.robot
Resource    ../Pages/cadastro_page.robot




*** Keywords ***
Dado que estou na página de cadastro
    Clicar em Register
Quando preencho todos os campos obrigatórios com informações válidas
    Preencher Cadastro Com Faker
E clico no botão "Register"
    Clicar no botao Register