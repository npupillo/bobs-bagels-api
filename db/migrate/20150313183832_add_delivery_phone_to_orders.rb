class AddDeliveryPhoneToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :delivery_addr_phone, :string
  end
end
