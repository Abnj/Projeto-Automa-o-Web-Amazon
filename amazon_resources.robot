*** Settings ***
Documentation    Esse arquivo guarda as keywords
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.amazon.com.br/
${Menu_Eletronicos}    //a[@href='/Eletronicos-e-Tecnologia/b/?ie=UTF8&node=16209062011&ref_=nav_cs_electronics'][contains(.,'Eletrônicos')]
${Header_Eletronicos}    //h1[contains(.,'Eletrônicos e Tecnologia')]


*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Fechar o navegador
    Close Browser
 
Acessar a home page do site Amazon.com.br
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${Menu_Eletronicos}

Entrar no menu "Eletrônicos"
    Click Element    locator=${Menu_Eletronicos}

Verificar se aparece a frase "${FRASE}"
    Wait Until Page Contains    text=${FRASE}
    Wait Until Element Is Visible    locator=${Header_Eletronicos}

Verificar se o título da página fica "${TITULO}"
    Title Should Be    title=${TITULO}   
    
Verificar se aparece a categoria "${Nome_Categoria}"
    Element Should Be Visible    locator=//img[contains(@alt,'${Nome_Categoria}')]
        Input Text    locator    text
        run transection