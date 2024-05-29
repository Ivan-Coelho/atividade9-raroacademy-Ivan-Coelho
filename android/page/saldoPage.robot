*** Settings ***

Resource    ../base.robot
Library    XML

*** Variables ***

${LABEL_SALDO_DISPONIVEL}        //android.view.View[@content-desc="Saldo disponível"]
${LABEL_VALOR_SALDO}             //android.view.View[@content-desc="R$ 181,79"]
${LABEL_DINHEIRO_GUARDADO}       //android.view.View[contains(@content-desc, "Dinheiro guardado")]
${LABEL_RENDIMENTO_TOTAL}        //android.view.View[contains(@content-desc, "Rendimento total")]

${TEXTO_S_DEPOSITAR}                //android.view.View[@content-desc="Depositar"]
${TEXTO_S_PAGAR}                    //android.view.View[@content-desc="Pagar"]
${TEXTO_S_TRANSFERIR}               //android.view.View[@content-desc="Transferir"]
${TEXTO_S_EMPRESTIMO}               //android.view.View[@content-desc="Empréstimos"]    
${TEXTO_S_COBRAR}                   //android.view.View[@content-desc="Cobrar"]   

${BUTTON_S_DEPOSITAR}                //android.widget.HorizontalScrollView/android.widget.Button[1]
${BUTTON_S_PAGAR}                    //android.widget.HorizontalScrollView/android.widget.Button[2]
${BUTTON_S_TRANSFERIR}               //android.widget.HorizontalScrollView/android.widget.Button[3]
${BUTTON_S_EMPRESTIMO}               //android.widget.HorizontalScrollView/android.widget.Button[4]    
${BUTTON_S_COBRAR}                   //android.widget.HorizontalScrollView/android.widget.Button[4]

${LABEL_HISTORICO}                   //android.view.View[@content-desc="Histórico"]
${TRANS_PATY}                        //android.view.View[contains(@content-desc, "PATRICIA COSTA")] 
${TRANS_JEY}                         //android.view.View[contains(@content-desc, "ANDRE JEY")]
${TRANS_ERIKO}                       //android.view.View[contains(@content-desc, "ERIKO BARBOSA")] 
${TRANS_IVAN}                        //android.view.View[contains(@content-desc, "IVAN COELHO")]    

*** Keywords ***

Então ira visualizar a pagina de saldo
    Verifica texto    ${LABEL_SALDO_DISPONIVEL}    Saldo disponível
    Verifica texto    ${LABEL_VALOR_SALDO}          R$ 181,79
    Verifica texto    ${LABEL_DINHEIRO_GUARDADO}          Dinheiro guardado\nR$ 240,02
    Verifica texto    ${LABEL_RENDIMENTO_TOTAL}        Rendimento total da conta\n+R$ 0,20 este mês
    
    Verifica texto    ${TEXTO_S_DEPOSITAR}      Depositar
    Verifica texto    ${TEXTO_S_PAGAR}         Pagar
    Verifica texto    ${TEXTO_S_TRANSFERIR}     Transferir
    Verifica texto    ${TEXTO_S_EMPRESTIMO}     Empréstimos
    Swipe By Percent    98    50    50    50
    Verifica texto    ${TEXTO_S_COBRAR}         Cobrar

Então ira visualizar os botões da pagina de saldo
    Element Should Be Enabled    ${BUTTON_S_DEPOSITAR}
    Element Should Be Visible    ${BUTTON_S_DEPOSITAR}
    Element Should Be Enabled    ${BUTTON_S_PAGAR} 
    Element Should Be Visible    ${BUTTON_S_PAGAR} 
    Element Should Be Enabled    ${BUTTON_S_TRANSFERIR}
    Element Should Be Visible    ${BUTTON_S_TRANSFERIR}
    Element Should Be Enabled    ${BUTTON_S_EMPRESTIMO}
    Element Should Be Visible    ${BUTTON_S_EMPRESTIMO}
    Swipe By Percent    98    50    50    50
    Element Should Be Enabled    ${BUTTON_S_COBRAR}
    Element Should Be Visible    ${BUTTON_S_COBRAR}

Então ira visualizar a movimentacao da conta
    Swipe By Percent    50    80    50    20
    Verifica texto    ${LABEL_HISTORICO}            Histórico
    
    Verifica texto    ${TRANS_PATY}        PATRICIA COSTA 
    Verifica texto    ${TRANS_PATY}        Transferência enviada
    Verifica texto    ${TRANS_PATY}        Ontem
    Verifica texto    ${TRANS_PATY}        R$ 30,00
    Verifica texto    ${TRANS_PATY}        Pix
    
    Verifica texto    ${TRANS_JEY}        Transferência recebida 
    Verifica texto    ${TRANS_JEY}        Ontem
    Verifica texto    ${TRANS_JEY}        ANDRE JEY
    Verifica texto    ${TRANS_JEY}        R$ 30,00
    Verifica texto    ${TRANS_JEY}        Pix
    
    Verifica texto    ${TRANS_ERIKO}        Transferência recebida 
    Verifica texto    ${TRANS_ERIKO}        Ontem
    Verifica texto    ${TRANS_ERIKO}        ERIKO BARBOSA
    Verifica texto    ${TRANS_ERIKO}        R$ 30,00
    Verifica texto    ${TRANS_ERIKO}        Pix
    
    Verifica texto    ${TRANS_IVAN}        Transferência recebida 
    Verifica texto    ${TRANS_IVAN}        Ontem
    Verifica texto    ${TRANS_IVAN}        IVAN COELHO 
    Verifica texto    ${TRANS_IVAN}        R$ 30,00
    Verifica texto    ${TRANS_IVAN}        Pix



