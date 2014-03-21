class AddIsCompleteToShoppingCart < ActiveRecord::Migration
  def change
    add_column :shopping_carts, :is_complete, :boolean
  end
end
