class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :product_type
	url [:product]
#	belongs_to :order_items
	has_many :ingredients
  belongs_to :bagel
end
