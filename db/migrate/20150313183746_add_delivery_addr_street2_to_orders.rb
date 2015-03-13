class AddDeliveryAddrStreet2ToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :delivery_addr_street_2, :string
  end
end
