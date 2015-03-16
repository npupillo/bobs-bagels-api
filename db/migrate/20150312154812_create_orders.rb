class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.decimal :taxes
      t.decimal :delivery_cost
      t.decimal :subtotal
      t.decimal :total
      t.string :cart

      t.timestamps null: false
    end
  end
end
