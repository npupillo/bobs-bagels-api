class OrderItem < ActiveRecord::Base
	belongs_to :product
	belongs_to :order
  has_many :ingredients_and_order, foreign_key: "order_item_id"
  has_many :ingredients, through: :ingredients_and_order
end
