class CreateShoppingCartItems < ActiveRecord::Migration
  def change
    create_table :shopping_cart_items do |t|
      t.string :size
      t.integer :quantity
      t.references :item, index: true
      t.references :shopping_cart, index: true

      t.timestamps
    end
  end
end
