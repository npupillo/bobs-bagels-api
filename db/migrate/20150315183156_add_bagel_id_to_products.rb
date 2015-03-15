class AddBagelIdToProducts < ActiveRecord::Migration
  def change
    add_reference :products, :bagel, index: true
    add_foreign_key :products, :bagels
  end
end
