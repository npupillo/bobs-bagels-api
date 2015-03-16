class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :price
  has_many :products
  has_many :order_items
end
