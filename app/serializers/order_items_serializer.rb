class OrderItemSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :created_at, :updated_at, :product_id, :order_id, :total_price
	has_many :products
	belongs_to :order
end

#  create_table "order_items", force: :cascade do |t|
#    t.integer  "quantity"
#    t.datetime "created_at",  null: false
#    t.datetime "updated_at",  null: false
#    t.integer  "product_id"
#    t.integer  "order_id"
#    t.decimal  "total_price"
#  end