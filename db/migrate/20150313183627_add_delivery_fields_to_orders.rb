class AddDeliveryFieldsToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :delivery_type, :string
	add_column :orders, :delivery_phone, :string
	add_column :orders, :delivery_address_1, :string
	add_column :orders, :delivery_address_2, :string
	add_column :orders, :delivery_address_zipcode, :string
  end
end
