class AddDeliveryAddrStreet1ToUsers < ActiveRecord::Migration
  def change
    add_column :users, :my_delivery_addr_street_1, :string
  end
end
