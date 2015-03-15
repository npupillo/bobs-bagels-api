# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.


ActiveRecord::Schema.define(version: 20150315183224) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bagels", force: :cascade do |t|
    t.string   "bagel_type"
    t.decimal  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "charges", force: :cascade do |t|
    t.string   "token"
    t.string   "customer_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "cart"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string   "name"
    t.decimal  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredients_and_orders", force: :cascade do |t|
    t.integer  "order_item_id"
    t.integer  "ingredient_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "ingredients_and_orders", ["ingredient_id"], name: "index_ingredients_and_orders_on_ingredient_id", using: :btree
  add_index "ingredients_and_orders", ["order_item_id", "ingredient_id"], name: "index_ingredients_and_orders_on_order_item_id_and_ingredient_id", unique: true, using: :btree
  add_index "ingredients_and_orders", ["order_item_id"], name: "index_ingredients_and_orders_on_order_item_id", using: :btree

  create_table "ingredients_in_products", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "ingredient_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "ingredients_in_products", ["ingredient_id"], name: "index_ingredients_in_products_on_ingredient_id", using: :btree
  add_index "ingredients_in_products", ["product_id", "ingredient_id"], name: "index_ingredients_in_products_on_product_id_and_ingredient_id", unique: true, using: :btree
  add_index "ingredients_in_products", ["product_id"], name: "index_ingredients_in_products_on_product_id", using: :btree

  create_table "order_items", force: :cascade do |t|
    t.integer  "quantity"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "product_id"
    t.integer  "order_id"
    t.decimal  "total_price"
    t.string   "comment"
    t.integer  "bagel_id"
  end

  add_index "order_items", ["bagel_id"], name: "index_order_items_on_bagel_id", using: :btree
  add_index "order_items", ["order_id"], name: "index_order_items_on_order_id", using: :btree
  add_index "order_items", ["product_id"], name: "index_order_items_on_product_id", using: :btree

  create_table "order_statuses", force: :cascade do |t|
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.decimal  "taxes"
    t.decimal  "delivery_cost"
    t.decimal  "subtotal"
    t.decimal  "total"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "order_status_id"
    t.integer  "user_id"
    t.decimal  "discount"
    t.string   "delivery_type"
    t.string   "delivery_phone"
    t.string   "delivery_address_1"
    t.string   "delivery_address_2"
    t.string   "delivery_address_zipcode"
  end

  add_index "orders", ["order_status_id"], name: "index_orders_on_order_status_id", using: :btree
  add_index "orders", ["user_id"], name: "index_orders_on_user_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.decimal  "price"
    t.string   "description"
    t.string   "product_type"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "bagel_id"
  end

  add_index "products", ["bagel_id"], name: "index_products_on_bagel_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "token"
    t.string   "phone_number"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "address_zipcode"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "order_items", "bagels"
  add_foreign_key "order_items", "orders"
  add_foreign_key "order_items", "products"
  add_foreign_key "orders", "order_statuses"
  add_foreign_key "orders", "users"
  add_foreign_key "products", "bagels"
end
