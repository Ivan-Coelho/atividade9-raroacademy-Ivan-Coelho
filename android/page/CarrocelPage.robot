*** Settings ***
Resource     ../base.robot

*** Variables ***

# PAGINA PIX

${PAGINA_PIX}            xpath= //android.widget.ImageView[@content-desc="Minha área Pix\nTudo o que você precisa para pagar, transferir ou cobrar.\nPagar\nTransferir\nCobrar"]
#${BUTTON_P_PAGAR}          //android.widget.ImageView[@content-desc="Minha área Pix\nTudo o que você precisa para pagar, transferir ou cobrar.\nPagar\nTransferir\nCobrar"]/android.widget.Button[2]  

${BUTTON_P_PAGAR}         //android.widget.ImageView//android.widget.Button[2]
${BUTTON_P_TRANSFERIR}    //android.widget.ImageView//android.widget.Button[3]
${BUTTON_P_COBRAR}        //android.widget.ImageView//android.widget.Button[4]
${BUTTON_P_FECHAR}        //android.widget.ImageView//android.widget.Button[1]

${LABEL_CHAVE}           xpath=//android.view.View[@content-desc="Minhas chaves"]
${LABEL_LIMITE}          xpath=//android.view.View[@content-desc="Meu limite Pix"]
${LABEL_AJUDA}           xpath=//android.view.View[@content-desc="Me ajuda"]

# PAGINA PAGAMENTOS
${PAGAR_PIX}       //android.view.View[@content-desc="Pagar com Pix\nLeia um QR Code ou cole o código."]
${PAGAR_CARTAO}    //android.view.View[@content-desc="Pagar com Pix\nLeia um QR Code ou cole o código."]
${PAGAR_BOLETO}    //android.view.View[@content-desc="Pagar um boleto\nContas de luz, água, etc."]

${BUTTON_PG_FECHAR}   //android.widget.Button

#PAGINA TRANSFERIR

${PAGINA_TRANSFERÊNCIA}       //android.widget.EditText

${BUTTON_T_FECHAR}   //android.widget.EditText//android.view.View/android.widget.Button[1]
${Button_t_QRCODE}   //android.widget.EditText//android.view.View/android.widget.Button[2]

#PAGINA DEPOSITO
${PAGINA_DEPOSITO}              //android.view.View[@content-desc="Como você quer depositar na sua conta do Nubank"]
${DEPOSITO_PIX}                //android.view.View[contains(@content-desc, "Pix")]
${DEPOSITO_BOLETO}             //android.view.View[contains(@content-desc, "Boleto")]
${DEPOSITO_TED/DOC}            //android.view.View[contains(@content-desc, "TED/DOC")]
${DEPOSITO_TRAZER_SALARIO}     //android.view.View[contains(@content-desc, "Trazer seu salário")]

${BUTTON_DEP_FECHAR}           //android.widget.Button

#PAGINA EMPRESTIMO

${lABEL_VALOR_DISPONIVEL}            //android.view.View[@content-desc="O valor disponível no momento é de R$ 10.000,00"]
${LABEL_ANALISE_CREDITO}             //android.view.View[@content-desc="Este valor pode mudar diariamente devido à nossa análise de crédito."]
${LABEL_ENTENDA_FUNCIONAMENTO}       //android.view.View[@content-desc="Entenda como funciona >"]
${LABEL_NENHUM_EMPRESTIMO}           //android.view.View[@content-desc="Você não possui nenhum empréstimo ativo."]

${BUTTON_NOVO_EMPRESTIMO}                 //android.widget.Button[@content-desc="NOVO EMPRÉSTIMO"]
${BUTTON_EMP_DUVIDA}                 //android.widget.FrameLayout//android.widget.Button[2]
${BUTTON_EMP_VOLTAR}                 //android.widget.FrameLayout//android.view.View[1]/android.widget.Button[1]

#PAGINA RECARGA
${BUTTON_RECARGA_FECHAR}        //android.widget.Button
${PAGINA_RECARGA}               //android.widget.EditText

#PAGINA COBRAR
${PAGINA_COBRAR}                //android.widget.EditText
${BUTTON_COB_FECHAR}            //android.widget.Button


*** Keywords ***

# PAGINA PIX
Então ira visualizar as funcionalidades do pix
   Element Should Be Visible    ${BUTTON_P_PAGAR}
   Element Should Be Enabled    ${BUTTON_P_PAGAR}
   Element Should Be Visible    ${BUTTON_P_TRANSFERIR}
   Element Should Be Enabled    ${BUTTON_P_TRANSFERIR}
   Element Should Be Visible    ${BUTTON_P_COBRAR}
   Element Should Be Enabled    ${BUTTON_P_COBRAR}
   Element Should Be Visible    ${LABEL_CHAVE}
   Element Should Be Enabled    ${LABEL_CHAVE}
   Element Should Be Visible    ${LABEL_LIMITE}
   Element Should Be Enabled    ${LABEL_LIMITE}
   Element Should Be Visible    ${LABEL_AJUDA}
   Element Should Be Enabled    ${LABEL_AJUDA}

# PAGINA PAGAMENTOS
Então ira visualizar as funcionalidades do pagamento

   Element Should Be Visible    ${PAGAR_PIX}
   Element Should Be Enabled    ${PAGAR_PIX}
   Element Should Be Visible    ${PAGAR_CARTAO}
   Element Should Be Enabled    ${PAGAR_CARTAO}
   Element Should Be Visible    ${PAGAR_BOLETO}
   Element Should Be Enabled    ${PAGAR_BOLETO}

#PAGINA TRANSFERIR
E informa um valor a transferir
    Input Text    ${PAGINA_TRANSFERÊNCIA}    323,97

Então será exibido o valor correto na tela
    Wait Until Page Contains    323,97
    Element Should Contain Text    ${PAGINA_TRANSFERÊNCIA}    323,97   

 Então ira visualizar as funcionalidades de transferência
   Element Should Be Visible    ${PAGINA_TRANSFERÊNCIA}
   Element Should Be Enabled    ${PAGINA_TRANSFERÊNCIA}

#PAGINA DEPOSITO

Então ira visualizar as funcionalidades de deposito

   Element Should Be Visible    ${DEPOSITO_PIX}
   Element Should Be Enabled    ${DEPOSITO_PIX}
   Element Should Be Visible    ${DEPOSITO_BOLETO}
   Element Should Be Enabled    ${DEPOSITO_BOLETO}
   Element Should Be Visible    ${DEPOSITO_TED/DOC}
   Element Should Be Enabled    ${DEPOSITO_TED/DOC}
   Element Should Be Visible    ${DEPOSITO_TRAZER_SALARIO}
   Element Should Be Enabled    ${DEPOSITO_TRAZER_SALARIO}

#PAGINA EMPRESTIMO

Então ira visualizar as funcionalidades de emprestimo
   Element Should Be Visible    ${lABEL_VALOR_DISPONIVEL}   
   Element Should Be Visible    ${LABEL_ANALISE_CREDITO}   
   Element Should Be Visible    ${LABEL_ENTENDA_FUNCIONAMENTO}
   Element Should Be Visible    ${LABEL_NENHUM_EMPRESTIMO}
   #Page Should Contain Element    ${BUTTON_EMPRESTIMO}
   Page Should Contain Text    Este valor pode mudar diariamente devido à nossa análise de crédito.
#    Element Should Be Visible    ${BUTTON_EMPRESTIMO}   
#    Element Should Be Enabled    ${BUTTON_EMPRESTIMO}

#PAGINA RECARGA

Então ira visualizar as funcionalidades de recarga
    Element Should Be Visible    ${PAGINA_RECARGA}
    Page Should Contain Text    Qual número você quer recarregar?
    Page Should Contain Text    (DDD) + Número

E informa um número de ceular
    Input Text    ${PAGINA_RECARGA}    31955551234

Então o número deve ser exibido na tela
    Wait Until Page Contains    (31) 95555-1234
    Element Should Contain Text    ${PAGINA_TRANSFERÊNCIA}    (31) 95555-1234

#PAGINA COBRAR
Então ira visualizar as funcionalidades de cobrança
    Element Should Be Visible    ${PAGINA_COBRAR}
    Page Should Contain Text   Qual valor você quer receber?
    Page Should Contain Text    Não especificar um valor

E informa um valor a cobrar
    Input Text    ${PAGINA_COBRAR}    1735,49

Então o valor correto será exibido na tela

    Wait Until Page Contains    R$ 1.735,49
    Element Should Contain Text    ${PAGINA_COBRAR}    1.735,49

#PAGINA DOAÇÃO



#PAGINA ENCONTRAR ATALHOS