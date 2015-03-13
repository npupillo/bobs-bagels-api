class AddDeliveryAddrStreet1ToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :delivery_addr_street_1, :string
  end
end
