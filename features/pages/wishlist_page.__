# Classe responsavel pela pagina de desejos do cliente
class WishListPage < SitePrism::Page
  set_url '?controller=authentication&back=my-account'
  element :login_email, '#email'
  element :login_password, '#passwd'
  element :submit_login, '#SubmitLogin'
  # element :my_store, '[title="My Store"]'
  element :category_women, '[title="T-shirts"]'
  element :modal_item, '[src="http://automationpractice.com/img/p/1/1-home_default.jpg"]'
  element :select_size, '#group_1'
  element :wishlist_button, '#wishlist_button'
  element :item_add_to_cart, '[title="Add to cart"]'
  element :item_more_details, '[title="View"]'
  element :product_add_success, '.icon-ok'
  element :proceed_to_checkout, '[title-"Proceed to checkout"]'
  element :sumary_products, '#summary_products_quantity'

  def sign_in_link
    login_email.set 'led_zeppelin@gmail.com'
    login_password.set 'ecitcarp@1035!'
    submit_login.click
  end

  def modal_page
    # my_store.click
    category_women.click
    modal_item.click
  end

  def add_wishlist
    select_size.click
    wishlist_button.click
    # item_add_to_cart.click
  end

  def checkout_wishlist
    proceed_to_checkout.click
  end
end
