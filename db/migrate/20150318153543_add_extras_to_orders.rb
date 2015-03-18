class AddExtrasToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :extras, :decimal
  end
end
