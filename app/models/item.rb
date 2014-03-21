class Item < ActiveRecord::Base
 has_many :shopping_cart_items
 has_many :shopping_carts, through: :shopping_cart_items
end
