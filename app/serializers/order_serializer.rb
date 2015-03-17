class OrderSerializer < ActiveModel::Serializer
  attributes :id, :taxes, :delivery_cost, :subtotal, :total, :delivery_type, :delivery_phone, :delivery_phone, :delivery_address_1, :delivery_address_2, :delivery_address_zipcode, :token, :customer_id, :return_customer, :store_info
	has_many :order_items
	belongs_to :order_status
  belongs_to :user
end
