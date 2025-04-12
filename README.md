# 🤖 Automação de Testes com Robot Framework - Amazon Brasil

Este projeto tem como objetivo automatizar um fluxo de compra no site da [Amazon Brasil](https://www.amazon.com.br/) utilizando o **Robot Framework** com a biblioteca **Browser (Playwright)**.

## 🧪 Cenários Automatizados

O teste simula um fluxo de compra de um livro, passando por todas as etapas até a finalização da compra (sem concluir o pagamento). Os passos automatizados são:

1. Acessar o site [amazon.com.br](https://www.amazon.com.br/).
2. Realizar uma busca pelo termo **"livro"**.
3. Selecionar o primeiro produto da lista de resultados.
4. Clicar no botão **"Comprar agora"**.
5. Realizar o **login com e-mail e senha válidos**.
6. Navegar até a **etapa final da compra** (sem finalizar).

⚠️ **Observação:** É necessário fornecer credenciais de login válidas para executar o teste. O teste não realiza a compra de fato, apenas navega até a última etapa antes da finalização.

## 🛠 Tecnologias Utilizadas

- [Robot Framework](https://robotframework.org/)
- [Browser Library (Playwright)](https://github.com/MarketSquare/robotframework-browser)
- Python 3.x

## ▶️ Como Executar

1. Clone o repositório:

   ```bash
   git clone https://github.com/seu-usuario/seu-repositorio.git
   cd seu-repositorio

2- Instale as dependências:

pip install -r requirements.txt

3-Instale a biblioteca Browser (caso ainda não tenha):

rfbrowser init

4-Execute os testes:

robot tests/amazon_compra.robot

🔐 Configuração de Credenciais

Você pode armazenar seu e-mail e senha em um arquivo variables.robot (ou .env, se estiver usando um gerenciador de variáveis), da seguinte forma:
*** Variables ***
${EMAIL}    seu-email@exemplo.com
${SENHA}    sua-senha


📁 Estrutura do Projeto

.
├── tests/
│   └── amazon_compra.robot
├── resources/
│   └── keywords.robot
├── variables/
│   └── variables.robot
├── requirements.txt
└── README.md

