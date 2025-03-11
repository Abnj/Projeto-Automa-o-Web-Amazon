*** Settings ***
Documentation    Essa suite de teste testa o site da Amazon
Resource    amazon_resources.robot
Test Setup    Abrir o navegador
#Test Teardown    Fechar o navegador

*** Test Cases ***

Caso de Teste 1 - Acesso ao menu "Eletrônicos"
    [Documentation]    Esse teste Verifica o menu Eletrônico da Amazon
    [Tags]             menus
    Acessar a home page do site Amazon.com.br
    Entrar no menu "Eletrônicos"
    Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
    Verificar se aparece a categoria "Computadores e Informática"


# Caso de Teste 2 - Pesquisa de um Produto
#     [Documentation]    Esse teste Verifica a busca de produto Xbox
#     [Tags]             busca-produto
#     Acessar a home page do site Amazon.com.br
#     Digitar o nome de produto "Xbox Series S" no campo de pesquisa
#     Clicar no botão de pesquisa
#     Verificar o resultado da pesquisa, listando o produto pesquisado
