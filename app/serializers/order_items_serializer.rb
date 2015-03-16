class OrderItemSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :created_at, :updated_at, :product_id, :order_id, :total_price
	belongs_to :product
	belongs_to :order
  has_many :ingredients
  belongs_to :bagel
end
