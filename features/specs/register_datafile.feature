#language: pt
@register_datafile
Funcionalidade: Cadastrar cliente
Como cliente da loja online
Quero cadastrar uma conta
Afim de efetuar comprar

Cenario: Cadastrar cliente com dados externos
  Dado que acesso a pagina de cadastro
  E solicito um novo cadastro para o email 'padrao'
  E preencho os campos do formulario com dados padrao
  Quando confirmo o cadastro
  Então deve ser exibida a pagina da minha conta
