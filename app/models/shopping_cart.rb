class ShoppingCart < ActiveRecord::Base
  
  has_many :shopping_cart_items
  has_many :items, through: :shopping_cart_items
  belongs_to :user
end
