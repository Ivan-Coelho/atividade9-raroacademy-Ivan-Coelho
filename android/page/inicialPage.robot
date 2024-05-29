*** Settings ***

Resource    ../base.robot

*** Variables ***
${INCOMPATIBILIDADE_ANDROID}    xpath=//android.widget.Button[@resource-id="android:id/button1"]

${ICONE_PERFIL}            xpath=//android.widget.ScrollView/android.view.View[1]
${BUTTON_VISIBILIDADE}     //android.widget.ScrollView/android.widget.Button[1]
${BUTTON_DUVIDA}           //android.widget.ScrollView/android.widget.Button[2]
${BUTTON_CONVITE}          //android.widget.ScrollView/android.widget.Button[3]
${LABEL_OLA}               xpath=//android.view.View[@content-desc="Olá, Breno Freitas"]        

${ABRIR_SALDO}             //android.view.View[contains(@content-desc, "Conta")]

${BUTTON_PIX}              //android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[1]
${BUTTON_PAGAR}            //android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[2]
${BUTTON_TRANSFERIR}       //android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[3]
${BUTTON_DEPOSITAR}        //android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[4]
${BUTTON_EMPRESTIMO}       //android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[5]
${BUTTON_RECARGA_CELULAR}  //android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[2]
${BUTTON_COBRAR}           //android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[3]
${BUTTON_DOACAO}           //android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[4]
${BUTTON_ATALHOS}          //android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[5]

${TEXTO_PIX}               xpath=//android.view.View[@content-desc="PIX"]
${TEXTO_PAGAR}             xpath=//android.view.View[@content-desc="Pagar"]
${TEXTO_TRANSFERIR}        xpath=//android.view.View[@content-desc="Transferir"]
${TEXTO_DEPOSITAR}         xpath=//android.view.View[@content-desc="Depositar"]
${TEXTO_EMPRESTIMO}        xpath=//android.view.View[@content-desc="Empréstimos"]
${TEXTO_RECARGA}           xpath=//android.view.View[@content-desc="Recarga de celular"]
${TEXTO_COBRAR}            xpath=//android.view.View[@content-desc="Cobrar"]
${TEXTO_DOACAO}            xpath=//android.view.View[@content-desc="Doação"]
${TEXTO_ATALHOS}           xpath=//android.view.View[@content-desc="Encontrar atalhos"]

${BUTTON_MEUS_CARTOES}         xpath=//android.view.View[@content-desc="Meus cartões"]
${BUTTON_EMPRESTIMO}           xpath=//android.view.View[@content-desc="Você tem R$ 10.000,00 disponíveis para empréstimo."]
${BUTTON_GUARDAR_DINHEIRO}     xpath=//android.view.View[@content-desc="Conquiste planos futuros: conheça as opções para guardar dinheiro."]

${LABEL_CARTAO_CREDITO}           xpath=//android.view.View[contains(@content-desc, "Cartão de Crédito")]
${LABEL_EMPRESTIMO_DISPONIVEL}    xpath=//android.view.View[contains(@content-desc, "Valor disponível")]
${LABEL_INVESTIMENTOS}            xpath=//android.view.View[contains(@content-desc, "A revolução roxa")]
${LABEL_SEGURO_DE_VIDA}           xpath=//android.view.View[contains(@content-desc, "Seguro de vida")]

${LABEL_DESCUBRA_MAIS}            xpath=//android.view.View[@content-desc="Descubra mais"]
${LABEL_WHATS}                    xpath=//android.view.View[contains(@content-desc, "WhatsApp")]  
${BUTTON_QUERO_CONHECER}          xpath=//android.view.View[@content-desc="Quero conhecer"]
${LABEL_INDIQUE_AMIGOS}           xpath=//android.view.View[contains(@content-desc, "Indique seus amigos")]
${BUTTON_INDICAR_AMIGOS}          xpath= //android.view.View[@content-desc="Indicar amigos"]

#pagina amigos

${LABEL_AMIGOS}            //android.widget.ImageView[contains(@content-desc, "Resgate seus amigos")]
*** Keywords ***

Incompatibilidade de versão
    Wait Until Page Contains Element    ${INCOMPATIBILIDADE_ANDROID}
    clica e espera carregar    ${INCOMPATIBILIDADE_ANDROID}   ${LABEL_OLA} 

Dado que usuario acessa o aplicativo
    Incompatibilidade de versão
    Element Should Be Visible    ${LABEL_OLA}
    
Então deve carregar a pagina inicial
    Swipe By Percent   50    20    50    90
    espera carregar e visualiza    ${LABEL_OLA}

Quando acessa a area desejada
    [Arguments]    ${elemento}    ${pagina}  
    clica e espera carregar    ${elemento}    ${pagina} 

Quando localiza e acessa a área de desejo
    [Arguments]    ${elemento}    ${pagina}
    Swipe By Percent   75    40    5    40  
    clica e espera carregar    ${elemento}    ${pagina}

Quando encontra e acessa a area desejada
    [Arguments]    ${elemento}    ${pagina}
    Swipe By Percent   50    80    50    1
    clica e espera carregar    ${elemento}    ${pagina}
    
E deseja fechar a pagina
    [Arguments]    ${elemento}
    clica para fechar    ${elemento}

Então o botão deve estar visível e habilitado
    [Arguments]    ${elemento}
    Element Should Be Enabled     ${elemento}
    Element Should Be Visible     ${elemento}

Quando acessar o campo desejado
    [Arguments]        ${elemento}    ${pagina}
    Swipe By Percent   50    80    50    1
    clica e espera carregar     ${elemento}    ${pagina}

# testes da pagima home

Então poderá visualizar o item
    [Arguments]    ${elemento}    ${texto}
    Verifica texto    ${elemento}    ${texto}

Então podera visualizar a area de indicar amigos
    Verifica texto    ${LABEL_AMIGOS}    Resgate seus amigos da fila do banco\nPara cada indicação aceita, um amigo salvo da burocracia

Então terá a opção para guardar dinheiro
    Verifica texto    ${BUTTON_GUARDAR_DINHEIRO}    Conquiste planos futuros: conheça as opções para guardar dinheiro.

Então podera visualizar uma mensagem de cumprimento
    Verifica texto    ${LABEL_OLA}    Olá, Breno Freitas


 Então poderá ver as informações do seguro de vida
     Verifica texto    ${LABEL_SEGURO_DE_VIDA}    Seguro de vida\nConheça Nubank Vida: um seguro simples e que cabe no bolso.

Então poderá ver as informações do campo WhatsApp
    Verifica texto    ${LABEL_WHATS}    WhatsApp\nNovo\nPagamentos seguros, rápidos e sem tarifa. A experiência Nubank sem nem sair da conversa.

Quando observa o campo procurado
    Swipe By Percent   50    80    50    1
    Swipe By Percent    50    90    70   90
Então poderá ver as informações de indicação de amigos
    Verifica texto    ${LABEL_INDIQUE_AMIGOS}    Indique seus amigos\nMostre aos seus amigos como é fácil ter uma vida sem burocracia.


