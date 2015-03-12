class AddOrderReferencesToOrderItems < ActiveRecord::Migration
  def change
    add_reference :order_items, :orders, index: true
    add_foreign_key :order_items, :orders
  end
end
