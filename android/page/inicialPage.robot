*** Settings ***

Resource    ../base.robot

*** Variables ***
${INCOMPATIBILIDADE_ANDROID}    xpath=//android.widget.Button[@resource-id="android:id/button1"]

${ICONE_PERFIL}            xpath=//android.widget.ScrollView/android.view.View[1]
${BUTTON_VISIBILIDADE}     //android.widget.ScrollView/android.widget.Button[1]
${BUTTON_DUVIDA}           //android.widget.ScrollView/android.widget.Button[2]
${BUTTON_CONVITE}          //android.widget.ScrollView/android.widget.Button[3]
${LABEL_OLA}               xpath=//android.view.View[@content-desc="Olá, Breno Freitas"]        

${ABRIR_SALDO}             //android.view.View

${BUTTON_PIX}              //android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[1]
${BUTTON_PAGAR}            //android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[2]
${BUTTON_TRANSFERIR}       //android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[3]
${BUTTON_DEPOSITAR}        //android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[4]
${BUTTON_EMPRESTIMO}       //android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[5]
${BUTTON_RECARGA_CELULAR}  //android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[2]
${BUTTON_COBRAR}           //android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[3]
${BUTTON_DOACAO}           //android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[4]
${BUTTON_ATALHOS}          //android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[5]

${lABEL_PIX}               xpath=//android.view.View[@content-desc="PIX"]
${lABEL_PAGAR}             xpath=//android.view.View[@content-desc="Pagar"]
${lABEL_TRANSFERIR}        xpath=//android.view.View[@content-desc="Transferir"]
${lABEL_DEPOSITAR}         xpath=//android.view.View[@content-desc="Depositar"]
${lABEL_EMPRESTIMO}        xpath=//android.view.View[@content-desc="Empréstimo"]
${lABEL_RECARGA}           xpath=//android.view.View[@content-desc="Recarga de celular"]
${lABEL_COBRAR}            xpath=//android.view.View[@content-desc="Cobrar"]
${lABEL_DOACAO}            xpath=//android.view.View[@content-desc="Doação"]
${lABEL_ATALHOS}           xpath=//android.view.View[@content-desc="Encontrar atalhos"]

${BUTTON_MEUS_CARTOES}         xpath=//android.view.View[@content-desc="Meus cartões"]
${BUTTON_EMPRESTIMO}           xpath=//android.view.View[@content-desc="Você tem R$ 10.000,00 disponíveis para empréstimo."]
${BUTTON_GUARDAR_DINHEIRO}     xpath=//android.view.View[@content-desc="Conquiste planos futuros: conheça as opções para guardar dinheiro."]

${LABEL_CARTAO_CREDITO}           xpath=//android.view.View[Contains(@content-desc="Cartão de Crédito")]
${LABEL_EMPRESTIMO_DISPONIVEL}    xpath=//android.view.View[Contains(@content-desc="Empréstimo")]
${LABEL_INVESTIMENTOS}            xpath=//android.view.View[Contains(@content-desc="Investimentos")]
${LABEL_SEGURO_DE_VIDA}           xpath=//android.view.View[Contains(@content-desc="Seguro de vida")]

${LABEL_DESCUBRA_MAIS}            xpath=//android.view.View[@content-desc="Descubra mais"]
${LABEL_WHATS}                    xpath=//android.view.View[Contains(@content-desc="WhatsApp")]  
${BUTTON_QUERO_CONHECER}          xpath=//android.view.View[@content-desc="Quero conhecer"]
${LABEL_INDIQUE_AMIGOS}           xpath=//android.view.View[Contains(@content-desc="Indique seus amigos")]
${BUTTON_INDICAR_AMIGOS}          xpath= //android.view.View[@content-desc="Indicar amigos"]

#variaveis pagina deposito
# ${PAGINA_DEPOSITO}              //android.view.View[@content-desc="Como você quer depositar na sua conta do Nubank"]
# ${DEPOSITO_PIX}                //android.view.View[contains(@content-desc, "Pix")]
# ${DEPOSITO_BOLETO}             //android.view.View[contains(@content-desc, "Boleto")]
# ${DEPOSITO_TED/DOC}            //android.view.View[contains(@content-desc, "TED/DOC")]
# ${DEPOSITO_TRAZER_SALARIO}     //android.view.View[contains(@content-desc, "Trazer seu salário")]

${BUTTON_DEP_FECHAR}           //android.widget.Button

*** Keywords ***

Incompatibilidade de versão
    Wait Until Page Contains Element    ${INCOMPATIBILIDADE_ANDROID}
    clica e espera carregar    ${INCOMPATIBILIDADE_ANDROID}   ${LABEL_OLA} 

Dado que usuario acessa o aplicativo
    Incompatibilidade de versão
    Element Should Be Visible    ${LABEL_OLA}
    
Então deve carregar a pagina inicial
    espera carregar e visualiza    ${LABEL_OLA}

Quando acessa a area desejada
    [Arguments]    ${elemento}    ${pagina}  
    clica e espera carregar    ${elemento}    ${pagina} 

Quando localiza e acessa a área de desejo
    [Arguments]    ${elemento}    ${pagina}
    Swipe By Percent   75    40    5    40  
    clica e espera carregar    ${elemento}    ${pagina}
E deseja fechar a pagina
    [Arguments]    ${elemento}
    clica para fechar    ${elemento}

Então o botão deve estar visível e habilitado
    [Arguments]    ${elemento}
    Element Should Be Enabled     ${elemento}
    Element Should Be Visible     ${elemento}







    