class AddOrderItemsReferencesToProducts < ActiveRecord::Migration
  def change
    add_reference :products, :product, index: true
    add_foreign_key :products, :products
  end
end
