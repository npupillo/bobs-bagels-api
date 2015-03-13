class AddDeliveryAddrStreet2ToUsers < ActiveRecord::Migration
  def change
    add_column :users, :my_delivery_addr_street_2, :string
  end
end
