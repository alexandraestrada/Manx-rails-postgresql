class ShoppingCartsController < ApplicationController

def new
  @shopping_cart = ShoppingCart.new
end

def add
	if current_user.shopping_cart.nil?
	   current_user.create_shopping_cart
	end
	item = Item.find(params[:item_id])
	if item
		current_user.shopping_cart.shopping_cart_item << item
		redirect_to items_path
	end
end

def remove
	item = Item.find(params[:item_id])
	current_user.shopping_cart.shopping_cart_item.items.delete item
	redirect_to shopping_cart_path
end

def update



end

private
	def item_params
		params.require(:item).permit(
			:name, :color, :size, :quantity, :price, :photo_url)
end
