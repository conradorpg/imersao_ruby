#language: pt
@cards
Funcionalidade: Cadastrar meio de pagamento
Como cliente da loja online
Quero cadastrar meu cartao de credito/debito
Afim de nao repetir o processo em outras compras

Contexto:
  Dado Que desejo cadastrar meu cartão no site
  Quando insiro meus dados pessoais

@ca01a
Cenario: Cadastrar cartoes de credito e debito  
  E informo se debito ou credito
  Entao recebo a mensagem de sucesso <mensagem_sucesso>

@ca01b
Cenario: Cadastrar cartoes outros
  E informo outro tipo de cartão
  Entao recebo a mensagem de erro <mensagem_erro>

@ca02a
Cenario: Cadastrar cartoes do titular
  E informo que sou o titular
  Entao recebo a mensagem de sucesso <mensagem_sucesso>

@ca02b
Cenario: Cadastrar cartoes de terceiros
  E informo cartão de terceiro
  Entao recebo a mensagem de erro <mensagem_erro>

@ca03a
Cenario: Cadastrar cartoes visa e master
  E informo a bandeira visa ou master
  Entao recebo a mensagem de sucesso <mensagem_sucesso>

@ca03b
Cenario: Cadastrar cartoes outra bandeira
  E informo outra bandeira
  Entao recebo a mensagem de erro <mensagem_erro>

@ca04a
Cenario: Cadastrar cartoes com validade ativa
  E informo a validade ativa do cartao
  Entao recebo a mensagem de sucesso <mensagem_sucesso>

@ca04b
Cenario: Cadastrar cartoes com validade expirada
  E informo a validade expirada do cartao
  Entao recebo a mensagem de erro <mensagem_erro>
