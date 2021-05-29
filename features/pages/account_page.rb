# Classe responsavel pela validacao da pagina do cliente
class MyAccountPage < SitePrism::Page
  set_url '?controller=my-account'

  element :account_name, '[title="View my customer account"]'
end
