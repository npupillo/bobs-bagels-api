class AddTotalPriceToOrderItem < ActiveRecord::Migration
  def change
	  add_column :order_items, :total_price, :integer
  end
end
