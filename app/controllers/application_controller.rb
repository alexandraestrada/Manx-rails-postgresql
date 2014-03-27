class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_shopping_cart

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

  def set_shopping_cart
    if session[:shopping_cart_id]
      @shopping_cart = ShoppingCart.find_by(id: session[:shopping_cart_id])
    end
    @shopping_cart ||= ShoppingCart.create(user: current_user)
    session[:shopping_cart_id] = @shopping_cart.id
  end

end

