#language: pt
@cadastro
Funcionalidade: Cadastrar cliente
Como cliente da loja online
Quero cadastrar uma conta
Afim de efetuar comprar

Cenario: Cadastrar cliente com dados válidos
  Dado que acesso a pagina de cadastro
  E solicito um novo cadastro para o email 'iron_maiden@gmail.com'
  E preencho os campos do formulário com dados válidos
  Quando confirmo o cadastro
  Então deve ser exibida a pagina da minha conta 'Iron Maiden'