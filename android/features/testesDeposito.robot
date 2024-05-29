** Settings ***

Resource    ../base.robot

Test Setup        Abrir Aplicativo
Test Teardown     Fechar Aplicativo

*** Test Cases ***

CT001 - Validar pagina de depósito
    Dado que usuario acessa o aplicativo
    Quando acessa a area desejada    ${BUTTON_DEPOSITAR}    ${PAGINA_DEPOSITO}
    Então será possível ver todas as opções de deposito