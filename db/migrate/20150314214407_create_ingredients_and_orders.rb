class CreateIngredientsAndOrders < ActiveRecord::Migration
  def change
    create_table :ingredients_and_orders do |t|
      t.integer :order_item_id
      t.integer :ingredient_id

      t.timestamps null: false
    end
    add_index :ingredients_and_orders, :order_item_id
    add_index :ingredients_and_orders, :ingredient_id
    add_index :ingredients_and_orders, [:order_item_id, :ingredient_id], unique: true
  end
end
