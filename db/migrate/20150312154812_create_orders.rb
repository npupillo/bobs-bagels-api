class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.decimal :taxes
      t.decimal :delivery_cost
      t.decimal :subtotal
      t.decimal :total
      t.string :cart
      t.string :token
      t.boolean :store_info
      t.boolean :return_customer

      t.timestamps null: false
    end
  end
end
