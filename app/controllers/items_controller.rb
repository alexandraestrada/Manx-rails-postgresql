class ItemsController < ApplicationController
  
  def index
  	@items = Item.all
  end

  def show
  	@item = Item.find(params[:id])
  end

  private

  def item_params
  	params.require(:item).permit(
  		:name,:color,:size,:quantity,:price, :photo_url)
  end

end
