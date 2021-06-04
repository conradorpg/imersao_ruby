#language: pt
@register_examples
Funcionalidade: Cadastrar cliente
Como cliente da loja online
Quero cadastrar uma conta
Afim de efetuar comprar

Esquema do Cenario: Cadastrar cliente com dados reais
  Dado que acesso a pagina de cadastro
  E solicito um novo cadastro para o email <email>
  E preencho os campos do formulário com <gender>, <first_name>, <last_name>, <passswd>, <newsletter>, <address>, <address_type>, <city>, <zipcode>, <phone>, <mobile>
  Quando confirmo o cadastro
  Então deve ser exibida a pagina da minha conta

Exemplos:
|email          |gender|first_name|last_name  |passswd |newsletter|address            |address_type|city         |zipcode |phone            |mobile           |
|'bart@mail.com'|'masc'|'Bart'    |'Jo-Jo Jay'|'123456'|'no'      |'Street of Flowers'|'house'     |'Springfiled'|'01111'|'+1 408 444 4444'|'+1 408 444 4444'|
|'lisa@mail.com'|'fem' |'Lisa'    |'Marie'    |'123456'|'yes'     |'Street of Flowers'|'house'     |'Springfiled'|'01111'|'+1 408 555 5555'|'+1 408 444 4444'|