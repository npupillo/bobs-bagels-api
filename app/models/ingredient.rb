class Ingredient < ActiveRecord::Base
  has_many :ingredients_in_product
  has_many :products, through: :ingredients_in_product
end
