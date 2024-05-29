*** Settings ***

Resource    ../base.robot
Library    XML

*** Variables ***
                                                
${LABEL_FATURA_ATUAL}          //android.view.View[@content-desc="Fatura atual"]
${LABEL_DIVIDA}                //android.view.View[@content-desc="R$ 780,72"]
${LABEL_LIMITE_DISPONIVEL}     //android.view.View[@content-desc="Limite disponível R$ 806,78"]  
${LABEL_PAGAMENTO_DIVIDOSO}    //android.view.View[contains(@content-desc, "Pagamento recebido")]
${LABEL_SUPERMERCADO}          //android.view.View[contains(@content-desc, "Supermercado")]
${LABAEL_TRANS_ENVIADA}        //android.view.View[contains(@content-desc, "Transferência enviada")]


${BUTTON_PAGAR_FATURA}        //android.view.View[@content-desc="Pagar fatura"]
${BUTTON_RESUMO_FATURA}       //android.view.View[@content-desc="Resumo de faturas"]
${BUTTON_AJUSTE_LIMITE}       //android.view.View[@content-desc="Ajustar limites"]
${BUTTON_CARTAO_VIRTUAL}      //android.view.View[@content-desc="Cartão virtual"]
${BUTTON_BLOQUEAR_CARTAO}     //android.view.View[@content-desc="Bloquear cartão"]
${BUTTON_INDICAR_AMIGOS}      //android.view.View[@content-desc="Indicar amigos"]

${BUTTON_CRED_VOLTAR}         //android.widget.FrameLayout//android.widget.Button[1]   
${BUTTON_LUPA}                //android.widget.FrameLayout//android.widget.Button[2]
${BUTTON_DUVIDAS}              //android.widget.FrameLayout//android.widget.Button[3]      



*** Keywords ***

Quando analisa o campo do cartão de credito
    Swipe By Percent    50    50    50    20

Então deve ser possivel visualizar suas informações
    Element Should Be Visible    ${LABEL_CARTAO_CREDITO}
    Verifica texto    ${LABEL_CARTAO_CREDITO}    Cartão de Crédito\nFatura atual\nR$ 780,72\nLimite disponível R$ 806,78

Então irei visualizar as funcionalidades do cartão de crédito
    Element Should Be Enabled    ${BUTTON_LUPA}
    Element Should Be Visible    ${BUTTON_LUPA}
    Element Should Be Enabled    ${BUTTON_DUVIDAS}
    Element Should Be Visible    ${BUTTON_DUVIDAS}
    Verifica texto    ${LABEL_FATURA_ATUAL}    Fatura atual
    Verifica texto    ${LABEL_DIVIDA}          R$ 780,72
    Verifica texto    ${LABEL_LIMITE_DISPONIVEL}          Limite disponível R$ 806,78
    Swipe By Percent    50    50    50    3
    Verifica texto    ${LABEL_PAGAMENTO_DIVIDOSO}    Pagamento recebido\nOntem\nVOCÊ PAGOU R$ 50,00\nR$ 30,00\nPix
    Verifica texto    ${LABEL_SUPERMERCADO}          Supermercado\nOntem\nBRENO FREITAS\nR$ 30,00\nPix
    Verifica texto    ${LABAEL_TRANS_ENVIADA}    Transferência enviada\nOntem\nBRENO FREITAS\nR$ 30,00\nPix
    Element Should Be Enabled    ${BUTTON_PAGAR_FATURA}
    Element Should Be Visible    ${BUTTON_PAGAR_FATURA}
    Element Should Be Enabled    ${BUTTON_RESUMO_FATURA}
    Element Should Be Visible    ${BUTTON_RESUMO_FATURA}
    Element Should Be Enabled    ${BUTTON_AJUSTE_LIMITE}
    Element Should Be Visible    ${BUTTON_AJUSTE_LIMITE}
    Element Should Be Enabled    ${BUTTON_CARTAO_VIRTUAL}
    Element Should Be Visible    ${BUTTON_CARTAO_VIRTUAL}
    Swipe By Percent    80    40    10    40
    Element Should Be Enabled    ${BUTTON_BLOQUEAR_CARTAO}
    Element Should Be Visible    ${BUTTON_BLOQUEAR_CARTAO}
    Element Should Be Enabled    ${BUTTON_INDICAR_AMIGOS}
    Element Should Be Visible    ${BUTTON_INDICAR_AMIGOS}