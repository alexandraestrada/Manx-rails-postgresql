class ShoppingCartsController < ApplicationController

  def edit
    if session[:shopping_cart_id].nil?
      @shopping_cart_items = []
    else
      @shopping_cart_items = ShoppingCart.find(session[:shopping_cart_id]).shopping_cart_items
    end
     #@shopping_cart_items= ShoppingCart.find(current_user.shopping_carts.order(:id).last.shopping_cart_items)
    # if current_user.shopping_carts.nil?
    #   render root_path
    # else
    #   @shopping_cart_items = ShoppingCartItem.where(shopping_cart_id: 10)
    # end
  end

end