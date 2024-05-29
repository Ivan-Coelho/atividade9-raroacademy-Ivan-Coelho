*** Settings ***
Resource    ../utils/config.robot
Resource    ../page/inicialPage.robot
Resource    ../page/CarrocelPage.robot


Test Setup        Abrir Aplicativo
Test Teardown     Fechar Aplicativo

*** Test Cases ***

CT001 - Validar botão pix
    Dado que usuario acessa o aplicativo
    Quando acessa a area desejada    ${BUTTON_PIX}    ${PAGINA_PIX}
    Então ira visualizar as funcionalidades do pix
    

CT002 - Validar fechar pagina pix
    Dado que usuario acessa o aplicativo
    Quando acessa a area desejada    ${BUTTON_PIX}    ${PAGINA_PIX}
    E deseja fechar a pagina    ${BUTTON_P_FECHAR}
    Então deve carregar a pagina inicial

CT003 - Validar botão pagar
    Dado que usuario acessa o aplicativo
    Quando acessa a area desejada    ${BUTTON_PAGAR}    ${PAGAR_PIX}
    Então ira visualizar as funcionalidades do pagamento

CT004 - Validar fechar pagina de pagamento
    Dado que usuario acessa o aplicativo
    Quando acessa a area desejada    ${BUTTON_PAGAR}    ${PAGAR_PIX}
    E deseja fechar a pagina    ${BUTTON_PG_FECHAR}
    Então deve carregar a pagina inicial

CT005 - Validar botão transferir
    Dado que usuario acessa o aplicativo
    Quando acessa a area desejada     ${BUTTON_TRANSFERIR}    ${PAGINA_TRANSFERÊNCIA}
     Então ira visualizar as funcionalidades de transferência

CT006 - Validar valor da transferencia
    Dado que usuario acessa o aplicativo
    Quando acessa a area desejada    ${BUTTON_TRANSFERIR}    ${PAGINA_TRANSFERÊNCIA}
    E informa um valor a transferir
    Então será exibido o valor correto na tela

CT007 - Validar fechar pagina de transferencia
    Dado que usuario acessa o aplicativo
    Quando acessa a area desejada    ${BUTTON_TRANSFERIR}    ${PAGINA_TRANSFERÊNCIA}
    E deseja fechar a pagina    ${BUTTON_T_FECHAR}
    Então deve carregar a pagina inicial

CT008 - Validar botão depositar
    Dado que usuario acessa o aplicativo
    Quando acessa a area desejada    ${BUTTON_DEPOSITAR}    ${PAGINA_DEPOSITO}
    Então ira visualizar as funcionalidades de deposito

CT009 - Validar fechar pagina de deposito
    Dado que usuario acessa o aplicativo
    Quando acessa a area desejada    ${BUTTON_DEPOSITAR}    ${PAGINA_DEPOSITO}
    E deseja fechar a pagina    ${BUTTON_DEP_FECHAR}
    Então deve carregar a pagina inicial

CT010 - Validar botão emprestimo
    Dado que usuario acessa o aplicativo
    Quando acessa a area desejada    ${BUTTON_EMPRESTIMO}    ${lABEL_VALOR_DISPONIVEL}
    Então ira visualizar as funcionalidades de emprestimo

CT011 - Validar fechar pagina de emprestimo
    Dado que usuario acessa o aplicativo
    Quando acessa a area desejada    ${BUTTON_EMPRESTIMO}    ${lABEL_VALOR_DISPONIVEL}
    E deseja fechar a pagina    ${BUTTON_EMP_VOLTAR}
    Então deve carregar a pagina inicial

CT012 - Validar botão de recarga de celular
    Dado que usuario acessa o aplicativo
    Quando localiza e acessa a área de desejo    ${BUTTON_RECARGA_CELULAR}    ${PAGINA_RECARGA}
    Então ira visualizar as funcionalidades de recarga

CT013 - Validar input número de celular
    Dado que usuario acessa o aplicativo
    Quando localiza e acessa a área de desejo    ${BUTTON_RECARGA_CELULAR}    ${PAGINA_RECARGA}
    E informa um número de ceular
    Então o número deve ser exibido na tela

CT014 - Validar fechar pagina recarga
    Dado que usuario acessa o aplicativo
    Quando localiza e acessa a área de desejo    ${BUTTON_RECARGA_CELULAR}    ${PAGINA_RECARGA}
    E deseja fechar a pagina    ${BUTTON_RECARGA_FECHAR}
    Então deve carregar a pagina inicial

CT 015 - Validar botão cobrar
    Dado que usuario acessa o aplicativo
    Quando localiza e acessa a área de desejo    ${BUTTON_COBRAR}    ${PAGINA_COBRAR}
    Então ira visualizar as funcionalidades de cobrança

CT 016 - validar input valor a cobrar
    Dado que usuario acessa o aplicativo
    Quando localiza e acessa a área de desejo    ${BUTTON_COBRAR}    ${PAGINA_COBRAR}
    E informa um valor a cobrar
    Então o valor correto será exibido na tela

CT 017 - Validar fechar pagina para cobrar
    Dado que usuario acessa o aplicativo
    Quando localiza e acessa a área de desejo    ${BUTTON_COBRAR}    ${PAGINA_COBRAR}
    E deseja fechar a pagina    ${BUTTON_COB_FECHAR}
    Então deve carregar a pagina inicial

CT 018 - Validar botão de Doação
    Dado que usuario acessa o aplicativo
    Quando localiza e acessa a área de desejo    ${BUTTON_DOACAO}    ${BUTTON_DOACAO}
    Então o botão deve estar visível e habilitado    ${BUTTON_DOACAO}

CT 019 - Valida o botão encontrar atalhos
    Dado que usuario acessa o aplicativo
    Quando localiza e acessa a área de desejo    ${BUTTON_ATALHOS}    ${BUTTON_ATALHOS}
    Então o botão deve estar visível e habilitado    ${BUTTON_ATALHOS}
    