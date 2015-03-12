class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :product_type
	belongs_to :order_items
end