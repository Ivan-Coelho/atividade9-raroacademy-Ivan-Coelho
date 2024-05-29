*** Settings ***

Resource    ../base.robot

Test Setup        Abrir Aplicativo
Test Teardown     Fechar Aplicativo

*** Test Cases ***

CT001 - validar campo do cartão de Crédito
    Dado que usuario acessa o aplicativo
    Quando analisa o campo do cartão de credito
    Então deve ser possivel visualizar suas informações

CT002 - validar pagina do cartão de Crédito
    Dado que usuario acessa o aplicativo
    Quando acessa a area desejada    ${LABEL_CARTAO_CREDITO}    ${LABEL_FATURA_ATUAL}
    Então irei visualizar as funcionalidades do cartão de crédito

CT003 - Validar fechar pagina Cartão de Crédito
    Dado que usuario acessa o aplicativo
    Quando acessa a area desejada    ${LABEL_CARTAO_CREDITO}    ${LABEL_FATURA_ATUAL}
    E deseja fechar a pagina    ${BUTTON_CRED_VOLTAR}
    Então deve carregar a pagina inicial