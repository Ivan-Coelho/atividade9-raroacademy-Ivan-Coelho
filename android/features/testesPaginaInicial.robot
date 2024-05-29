** Settings ***

Resource    ../base.robot

Test Setup        Abrir Aplicativo
Test Teardown     Fechar Aplicativo
Library    String

*** Test Cases ***

CT001 - Validar botão meus cartões 
    Dado que usuario acessa o aplicativo
    Então o botão deve estar visível e habilitado    ${BUTTON_MEUS_CARTOES}

CT002 - Validar botão convide amigos
    Dado que usuario acessa o aplicativo
    Quando acessa a area desejada        ${BUTTON_CONVITE}    ${LABEL_AMIGOS}
    Então podera visualizar a area de indicar amigos

CT003 - Validar botão de guardar dinheiro
    Dado que usuario acessa o aplicativo
    Então poderá visualizar o item    ${BUTTON_GUARDAR_DINHEIRO}    Conquiste planos futuros: conheça as opções para guardar dinheiro.


CT004 - Validar mensagem de Olá
    Dado que usuario acessa o aplicativo
    Então poderá visualizar o item    ${LABEL_OLA}    Olá, Breno Freitas

CT005 - Validar icone de icone de perfil
    Dado que usuario acessa o aplicativo
    Então o botão deve estar visível e habilitado    ${ICONE_PERFIL}

CT006 - Validar a opção de seguro de vida
    Dado que usuario acessa o aplicativo
    Quando acessar o campo desejado    ${LABEL_SEGURO_DE_VIDA}    ${LABEL_SEGURO_DE_VIDA}
    Então poderá ver as informações do seguro de vida

CT007 - Validar a opção do WhatsApp
    Dado que usuario acessa o aplicativo
    Quando acessar o campo desejado    ${LABEL_WHATS}    ${LABEL_WHATS}
    Então poderá ver as informações do campo WhatsApp

CT008 - Validar o campo para convidar amigos
    Dado que usuario acessa o aplicativo
    Quando observa o campo procurado
    Então poderá ver as informações de indicação de amigos

CT009 - validar o botão indicar amigos do campo de convite
    Dado que usuario acessa o aplicativo
    Quando acessar o campo desejado    ${BUTTON_INDICAR_AMIGOS}    ${LABEL_AMIGOS}
    Então podera visualizar a area de indicar amigos

CT010 - validar botão de investimento
    Dado que usuario acessa o aplicativo
    Quando acessar o campo desejado    ${LABEL_INVESTIMENTOS}      ${TEXTO_CONVIDANDO_CLIENTES}
    Então verá a página de investimento
