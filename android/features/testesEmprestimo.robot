** Settings ***

Resource    ../base.robot

Test Setup        Abrir Aplicativo
Test Teardown     Fechar Aplicativo

*** Test Cases ***

CT001 - validar campo do emprestimo
    Dado que usuario acessa o aplicativo
    Quando analisa o campo do emprestimo
    Então deve ser possivel visualizar as informações de emprestimo

CT002 - Validar pagina emprestimo
    Dado que usuario acessa o aplicativo
    Quando encontra e acessa a area desejada    ${LABEL_EMPRESTIMO_DISPONIVEL}    ${lABEL_VALOR_DISPONIVEL}  
    Então irei visualizar a pagina de emprestimo


CT003 - Validar fechamento de pagina emprestimo
    Dado que usuario acessa o aplicativo
    Quando encontra e acessa a area desejada    ${LABEL_EMPRESTIMO_DISPONIVEL}    ${lABEL_VALOR_DISPONIVEL}
    E deseja fechar a pagina    ${BUTTON_EMP_VOLTAR}
    Então deve carregar a pagina inicial