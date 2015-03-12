class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :price
  belongs_to :product
end
