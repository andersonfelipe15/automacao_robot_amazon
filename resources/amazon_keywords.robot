*** Variables ***
${URL}           https://www.amazon.com.br/       # URL da página inicial da Amazon Brasil
${EMAIL}         teste@gmail.com                  # E-mail  para login
${SENHA}         qualidade@123                    # Senha para login

*** Keywords ***

Open Browser Amazon
    New Browser    headless=False                 # Abre um novo navegador em modo visível (não headless)
    New Page    ${URL}                            # Abre uma nova aba e acessa a URL da Amazon

Buscar Produto
    [Arguments]    ${produto}                     # Define um argumento para receber o nome do produto a ser buscado
    Wait For Elements State    input[name="field-keywords"]    visible    # Espera até que o campo de busca esteja visível
    Fill Text    input[name="field-keywords"]    ${produto}               # Digita o nome do produto no campo de busca
    Press Keys    input[name="field-keywords"]    Enter                   # Pressiona Enter para realizar a busca

Selecionar Primeiro Produto
    Wait For Elements State    xpath=//img[contains(@alt, "O Deus que destrói sonhos")]    visible    # Espera até que a imagem do produto esteja visível
    Click    xpath=//img[contains(@alt, "O Deus que destrói sonhos")]                      # Clica na imagem do produto específico

Clicar Comprar Agora
    Wait For Elements State    input[title="Comprar agora"]    visible     # Espera até que o botão "Comprar agora" esteja visível
    Click    input[title="Comprar agora"]                                 # Clica no botão "Comprar agora"

Fazer Login
    Fill Text    id=ap_email_login    ${EMAIL}                            # Preenche o campo de e-mail com o valor da variável ${EMAIL}
    Click    id=continue                                                 # Clica no botão "Continuar"
    Wait For Elements State    id=ap_password    visible                 # Espera o campo de senha estar visível
    Fill Text    id=ap_password    ${SENHA}                              # Preenche o campo de senha com o valor da variável ${SENHA}
    Click    id=signInSubmit                                            # Clica no botão para fazer login

Ir Para Etapa Final Da Compra
    Log    Validar que chegou até a página de confirmação de pedido      # Escreve uma mensagem no log informando que chegou à etapa final da compra
