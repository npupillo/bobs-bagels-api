class AddCartJsonToCharge < ActiveRecord::Migration
  def change
	  add_column :charges, :cart, :string
  end
end
