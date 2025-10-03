*** Settings ***
Resource    ../Locators/account_locators.yml
Resource    resource.robot


*** Keywords ***
Obter Nome Logado
    ${full_text}=    Get Text    xpath=//p[@class='smallText']
    ${username}=    Evaluate    '${full_text}'.split(' ', 1)[1]    # pega tudo depois da primeira palavra
    RETURN   ${username}
