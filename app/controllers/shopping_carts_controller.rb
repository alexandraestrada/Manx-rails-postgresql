class ShoppingCartsController < ApplicationController

def edit
  @shopping_cart_items= ShoppingCart.find(session[:shopping_cart_id]).shopping_cart_items
end


end