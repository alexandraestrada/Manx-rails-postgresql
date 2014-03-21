class ShoppingCartItem < ActiveRecord::Base
  belongs_to :item
  belongs_to :shopping_cart
end
