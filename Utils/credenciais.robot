*** Keywords ***
Credenciais
    ${USERNAME}=    Set Variable    john
    ${PASSWORD}=    Set Variable    demo
    ${PASSWORD_INCORRECT}=    Set Variable    Erro
    RETURN    ${USERNAME}    ${PASSWORD}    ${PASSWORD_INCORRECT}