class ShoppingCartItemsController < ApplicationController
  before_action :verify_shopping_cart_ownership
  before_action :create_shopping_cart_if_missing

  def create
    @shopping_cart_items = ShoppingCartItem.new(shopping_cart_item_params)
    if @shopping_cart_items.save
      redirect_to items_path
    end
  end

  private

  def shopping_cart_item_params
    params.require(:shopping_cart_item).permit(:size, :quantity, :item_id, :shopping_cart_id)
  end

  def create_shopping_cart_if_missing
    unless params[:shopping_cart_item][:shopping_cart_id].present?
      params[:shopping_cart_item][:shopping_cart_id] = 
        ShoppingCart.create(user: current_user).id
    end
  end

  def verify_shopping_cart_ownership
    sc_id = params[:shopping_cart_item][:shopping_cart_id]
    if sc_id.present?
      shopping_cart = ShoppingCart.find_by(id: sc_id, user_id: current_user.id)
      render(status: :unauthorized, nothing: true) unless shopping_cart.present?
    end
  end
end