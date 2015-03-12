class AddOrderReferencesToOrderStatus < ActiveRecord::Migration
  def change
    add_reference :order_statuses, :order, index: true
    add_foreign_key :order_statuses, :orders
  end
end
