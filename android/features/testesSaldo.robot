** Settings ***

Resource    ../base.robot

Test Setup        Abrir Aplicativo
Test Teardown     Fechar Aplicativo

*** Test Cases **
CT001 - Válidar página de saldo
    Dado que usuario acessa o aplicativo
    Quando acessa a area desejada    ${ABRIR_SALDO}    ${LABEL_SALDO_DISPONIVEL}
    Então ira visualizar a pagina de saldo

CT002 - Válidar botões da pagina de saldo
    Dado que usuario acessa o aplicativo
    Quando acessa a area desejada    ${ABRIR_SALDO}    ${LABEL_SALDO_DISPONIVEL}
    Então ira visualizar os botões da pagina de saldo

CT003 - Válidar transferências da página de saldo
    Dado que usuario acessa o aplicativo
    Quando acessa a area desejada    ${ABRIR_SALDO}    ${LABEL_SALDO_DISPONIVEL}
    Então ira visualizar a movimentacao da conta