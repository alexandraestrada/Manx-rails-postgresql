class ItemsController < ApplicationController
  
  def index
  	@items = Item.all
    @shopping_cart_item = ShoppingCartItem.new(item: @item, shopping_cart: ShoppingCart.last)

  end

  def show
  	@item = Item.find(params[:id])
    @shopping_cart_item = ShoppingCartItem.new(item: @item, shopping_cart: ShoppingCart.last)

  end

  private

  def item_params
  	params.require(:item).permit(
  		:name,:color,:size,:quantity,:price, :photo_url)
  end

end
