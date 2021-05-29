#language: pt
@wishlist
Funcionalidade: Cadastrar cliente
Como cliente da loja online
Quero cadastrar uma conta
Afim de efetuar comprar

# CA01/CA02/CA03
@sucesso
Esquema do Cenario: Adicionar produto a wishlist com cliente autenticado
  Dado que estou logado
  E acesso a <pagina modal> de um produto
  Quando seleciono a opcao de adicionar a wishlist
  Então sou informado que o produto foi adicionar com sucesso
  E minha wishlist contem o produto adicionado

  Exemplos:
  |pagina_modal|
  |pagina de detalhes|
  |modal de Quick view|

# CA04
@fail
Cenario: Cadastrar cliente com dados validos
  Dado que acesso a pagina de detalhes de um produto sem estar logado
  Quando seleciono a opcao de adicionar a wishlist
  Então sou informado da necessidade de estar logado

