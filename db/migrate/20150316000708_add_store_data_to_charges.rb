class AddStoreDataToCharges < ActiveRecord::Migration
  def change
	  add_column :charges, :store_info, :boolean
  end
end
