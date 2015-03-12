class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.decimal :taxes
      t.decimal :delivery_cost
      t.decimal :subtotal
      t.decimal :total

      t.timestamps null: false
    end
  end
end
