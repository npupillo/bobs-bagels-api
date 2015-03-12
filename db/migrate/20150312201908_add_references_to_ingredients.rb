class AddReferencesToIngredients < ActiveRecord::Migration
  def change
    add_reference :ingredients, :product, index: true
    add_foreign_key :ingredients, :products
  end
end
