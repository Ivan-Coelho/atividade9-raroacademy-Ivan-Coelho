*** Settings ***

Resource    ../base.robot
Library    Collections

*** Variables ***
#ja tenho na pagina carrocel

# ${lABEL_VALOR_DISPONIVEL}            //android.view.View[@content-desc="O valor disponível no momento é de R$ 10.000,00"]
# ${LABEL_ANALISE_CREDITO}             //android.view.View[@content-desc="Este valor pode mudar diariamente devido à nossa análise de crédito."]
# ${LABEL_ENTENDA_FUNCIONAMENTO}       //android.view.View[@content-desc="Entenda como funciona >"]
# ${LABEL_NENHUM_EMPRESTIMO}           //android.view.View[@content-desc="Você não possui nenhum empréstimo ativo."]

# ${BUTTON_EMPRESTIMO}                 //android.widget.Button[@content-desc="NOVO EMPRÉSTIMO"]
# ${BUTTON_EMP_DUVIDA}                 //android.widget.FrameLayout//android.widget.Button[2]
# ${BUTTON_EMP_VOLTAR}                 //android.widget.FrameLayout//android.view.View[1]/android.widget.Button[1]

*** Keywords ***

Então irei visualizar a pagina de emprestimo
    Verifica texto    ${lABEL_VALOR_DISPONIVEL}         O valor disponível no momento é de R$ 10.000,00
    Verifica texto    ${LABEL_ANALISE_CREDITO}          Este valor pode mudar diariamente devido à nossa análise de crédito.
    Verifica texto    ${LABEL_ENTENDA_FUNCIONAMENTO}    Entenda como funciona
    Verifica texto    ${LABEL_NENHUM_EMPRESTIMO}        Você não possui nenhum empréstimo ativo.
    
    Element Should Be Visible    ${BUTTON_NOVO_EMPRESTIMO}
    Element Should Be Enabled    ${BUTTON_EMP_DUVIDA}
    Element Should Be Visible    ${BUTTON_EMP_DUVIDA}

Quando analisa o campo do emprestimo
    Swipe By Percent    50    60    50    20

Então deve ser possivel visualizar as informações de emprestimo
    Verifica texto    ${LABEL_EMPRESTIMO_DISPONIVEL}    Empréstimo\nValor disponível de até\nR$ 10.000,00