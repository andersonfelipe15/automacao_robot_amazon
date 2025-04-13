*** Settings ***
Library           Browser
Resource          ../resources/amazon_keywords.robot
Suite Setup       Open Browser Amazon
Suite Teardown    Close Browser

*** Test Cases ***
Comprar Um Livro Na Amazon
    Buscar Produto    livro
    Selecionar Primeiro Produto
    Clicar Comprar Agora
    Fazer Login
    Ir Para Etapa Final Da Compra
