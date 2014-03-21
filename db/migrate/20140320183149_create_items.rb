class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :color
      t.string :size
      t.string :price
      t.string :photo_url

      t.timestamps
    end
  end
end
