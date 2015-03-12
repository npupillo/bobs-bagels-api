class OrderItemSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :created_at, :updated_at, :product_id, :order_id, :total_price
	has_many :products
	belongs_to :order
end