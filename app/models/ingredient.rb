class Ingredient < ActiveRecord::Base
  has_many :ingredients_in_product, foreign_key: "ingredient_id"
  has_many :products, through: :ingredients_in_product
end
