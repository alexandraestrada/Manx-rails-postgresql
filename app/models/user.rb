class User < ActiveRecord::Base
	has_many :shopping_carts
	has_many :shopping_cart_items, through: :shopping_carts 
	has_many :items, through: :shopping_cart_items 
end
