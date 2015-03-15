class AddBagelIdToOrderItems < ActiveRecord::Migration
  def change
    add_reference :order_items, :bagel, index: true
    add_foreign_key :order_items, :bagels
  end
end
