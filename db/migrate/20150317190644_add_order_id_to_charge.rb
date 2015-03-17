class AddOrderIdToCharge < ActiveRecord::Migration
  def change
    add_reference :charges, :order, index: true
    add_foreign_key :charges, :orders
  end
end
