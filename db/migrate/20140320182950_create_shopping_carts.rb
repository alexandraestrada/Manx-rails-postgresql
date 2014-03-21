class CreateShoppingCarts < ActiveRecord::Migration
  def change
    create_table :shopping_carts do |t|
      t.references :user, index: true

      t.timestamps
    end
  end
end
