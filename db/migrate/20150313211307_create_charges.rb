class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
      t.decimal :amount
      t.string :token
      t.string :customer_id

      t.timestamps null: false
    end
  end
end
