class RemoveProductNameFromOrderItems < ActiveRecord::Migration
  def change
	  remove_column :order_items, :product_name
  end
end
