class CreateBagels < ActiveRecord::Migration
  def change
    create_table :bagels do |t|
      t.string :bagel_type
      t.decimal :price

      t.timestamps null: false
    end
  end
end
