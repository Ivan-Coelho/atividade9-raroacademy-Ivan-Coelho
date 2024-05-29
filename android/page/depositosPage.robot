*** Settings ***

Resource    ../base.robot

*** Variables ***


*** Keywords ***

Então será possível ver todas as opções de deposito
   Verifica texto    ${DEPOSITO_PIX}               Pix\nSem custo e cai na hora, mesmo de madrugada e fim de semana.
   Verifica texto    ${DEPOSITO_BOLETO}            Boleto\nSem custo e pode levar 3 dias úteis para o dinheiro cair.
   Verifica texto    ${DEPOSITO_TED/DOC}           TED/DOC\nPode ter custo e cai somente em horário comercial de dias úteis.
   Verifica texto    ${DEPOSITO_TRAZER_SALARIO}    Trazer seu salário\nReceba todo mês direto aqui na sua conta, sem custo.


   Element Should Be Visible    ${DEPOSITO_PIX}
   Element Should Be Enabled    ${DEPOSITO_PIX}
   Element Should Be Visible    ${DEPOSITO_BOLETO}
   Element Should Be Enabled    ${DEPOSITO_BOLETO}
   Element Should Be Visible    ${DEPOSITO_TED/DOC}
   Element Should Be Enabled    ${DEPOSITO_TED/DOC}
   Element Should Be Visible    ${DEPOSITO_TRAZER_SALARIO}
   Element Should Be Enabled    ${DEPOSITO_TRAZER_SALARIO}