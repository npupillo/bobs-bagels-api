class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.string :product_name
      t.integer :quantity
      t.decimal :extras

      t.timestamps null: false
    end
  end
end
