class AddDeliveryAddrZipcodeToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :delivery_addr_zipcode, :string
  end
end
