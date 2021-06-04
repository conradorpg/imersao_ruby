# Classe responsavel por instanciar classes
class App
  def register_page
    RegisterPage.new
  end

  def account_page
    MyAccountPage.new
  end

  def wishlist_page
    WishListPage.new
  end
end
