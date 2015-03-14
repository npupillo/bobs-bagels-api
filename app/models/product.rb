class Product < ActiveRecord::Base
	belongs_to :order_item
	has_many :ingredients_in_product
  has_many :ingredients, through: :ingredients_in_product
end
