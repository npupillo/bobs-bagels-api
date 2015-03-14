class CreateIngredientsInProducts < ActiveRecord::Migration
  def change
    create_table :ingredients_in_products do |t|
      t.integer :product_id
      t.integer :ingredient_id

      t.timestamps null: false
    end
    add_index :ingredients_in_products, :product_id
    add_index :ingredients_in_products, :ingredient_id
    add_index :ingredients_in_products, [:product_id, :ingredient_id], unique: true
  end
end
