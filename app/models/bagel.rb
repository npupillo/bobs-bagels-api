class Bagel < ActiveRecord::Base
  has_many :products
  has_many :order_items
end

