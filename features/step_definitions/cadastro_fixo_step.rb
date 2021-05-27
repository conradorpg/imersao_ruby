Dado('que acesso a pagina de cadastro') do
  @app.register_page.load
end

Dado('solicito um novo cadastro para o email {string}') do |email|
  @app.register_page.create_account email
end

Dado('preencho os campos do formulário com dados válidos') do
  @app.register_page.fill_personal_info
  @app.register_page.fill_address
  @app.register_page.fill_phones
end

Quando('confirmo o cadastro') do
  @app.register_page.submit_account
end

Entao('deve ser exibida a pagina da minha conta {string}') do |name|
  have_text(name)
end