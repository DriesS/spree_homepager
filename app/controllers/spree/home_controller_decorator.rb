# Don't overwrite index controller as it has important stuff in it by default in spree


# Spree::HomeController.class_eval do
#   def index
#     @products = Spree::Product.active.where(:show_on_homepage => true)
#   end
# end
