class RemoveAmountFromCharges < ActiveRecord::Migration
  def change
	  remove_column :charges, :amount
  end
end
