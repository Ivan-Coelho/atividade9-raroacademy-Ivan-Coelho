*** Settings ***

Resource    ../base.robot

*** Variables ***

${TEXTO_INVISTA}                   //android.view.View[@content-desc="Invista sem taxas e burocracia!"]
${TEXTO_CONVIDANDO_CLIENTES}       //android.view.View[contains(@content-desc, "Estamos convidando")] 
${TEXTO_TAXA_ZERO}                 //android.view.View[contains(@content-desc, "Além de não pagar")]

*** Keywords ***
Então verá a página de investimento
    Verifica texto    ${TEXTO_INVISTA}        Invista sem taxas e burocracia!
    Verifica texto    ${TEXTO_CONVIDANDO_CLIENTES}    Estamos convidando alguns clientes do Nubank para serem os primeiros a fazer parte desta revolução roxa nos investimentos, e você é um deles!
    Verifica texto    ${TEXTO_TAXA_ZERO}     Além de não pagar nada para abrir a conta, você terá taxa zero na corretagem de ações! 