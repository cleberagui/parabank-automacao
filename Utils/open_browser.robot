*** Settings ***
Resource    ../Utils/resource.robot


*** Variables ***
${BROWSER}    chrome
${URL_PARABANK}    https://parabank.parasoft.com/parabank/index.htm


*** Keywords ***

Abrir o navegador
    Open Browser  ${URL_PARABANK}  ${BROWSER}
    Maximize Browser Window

Fechar o navegador
    Close Browser
    