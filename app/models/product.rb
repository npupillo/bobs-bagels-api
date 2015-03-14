class Product < ActiveRecord::Base
	has_many :order_items
	has_many :ingredients_in_product, foreign_key: "product_id"
  has_many :ingredients, through: :ingredients_in_product
end
