class AddOrderReferencesToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :order, index: true
    add_foreign_key :users, :orders
  end
end
