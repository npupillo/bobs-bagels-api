class AddDeliveryAddrZipcodeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :my_delivery_addr_zipcode, :string
  end
end
