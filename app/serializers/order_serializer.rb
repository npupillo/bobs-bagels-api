class OrderSerializer < ActiveModel::Serializer
  attributes :id, :taxes, :delivery_cost, :subtotal, :total, :created_at, :updated_at
	has_many :order_items
	belongs_to :order_status
end