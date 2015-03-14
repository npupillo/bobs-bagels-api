class IngredientsInProduct < ActiveRecord::Base
  belongs_to :ingredient
  belongs_to :product
  validates :ingredient_id, presence: true
  validates :product_id, presence: true
end
