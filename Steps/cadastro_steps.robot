*** Settings ***
Resource    ../Pages/home_page.robot
Resource    ../Pages/cadastro_page.robot




*** Keywords ***
Dado que o usuário está na página de registro
    Clicar em Register
Quando preenche todos os campos obrigatórios com informações válidas
    Preencher Cadastro Com Faker
E clica em "Register"
    Clicar no botao Register
Então devo ser redirecionado para a página informado que o cadastro foi finalizado com sucesso
   Validando mensagem de retorno do sistema que a conta do cliente foi criada
Quando deixa um campo obrigatório vazio
    Preencher Cadastro Com Faker Deixando um Campo vazio

Então o sistema exibe mensagem de erro solicitando o preenchimento
    Validando que o sistema retornou o erro informando que o campo FIRSTNAME esta vazio