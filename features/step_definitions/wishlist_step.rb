Dado('que estou logado') do
  @app.wishlist_page.load
  @app.wishlist_page.sign_in_link
end

Dado('acesso a <pagina modal> de um produto') do
  @app.wishlist_page.modal_page
end

Quando('seleciono a opcao de adicionar a wishlist') do
  within('#buy_block') do
    '[name="Submit"]'
  end
  @app.wishlist_page.add_wishlist
end

Entao('sou informado que o produto foi adicionar com sucesso') do
  expect(@app.wishlist_page.product_add_success.text).to eq('Product successfully added to your shopping cart')
end

Entao('minha wishlist contem o produto adicionado') do
  @app.wishlist_page.checkout_wishlist
  expect(@app.wishlist_page.sumary_products)
end
