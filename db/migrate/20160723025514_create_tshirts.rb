class CreateTshirts < ActiveRecord::Migration[5.0]
  def change
    create_table :tshirts do |t|
      t.string :titel
      t.string :description
      t.string :image
      t.string :category
      t.string :color
      t.decimal :price
      t.boolean :stock

      t.timestamps
    end
  end
end
