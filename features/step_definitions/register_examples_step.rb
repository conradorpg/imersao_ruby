Dado('preencho os campos do formulário com {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}') do |gender, first_name, last_name, passswd, newsletter, address, address_type, city, zipcode, phone, mobile|
  @app.register_page.fill_personal_info_examples(gender, first_name, last_name, passswd, newsletter, address, address_type, city, zipcode, phone, mobile)
end
