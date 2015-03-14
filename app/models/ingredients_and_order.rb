class IngredientsAndOrder < ActiveRecord::Base
  belongs_to :ingredient
  belongs_to :order_item
  validates :ingredient_id, presence: true
  validates :order_item_id, presence: true
end
