class Order < ActiveRecord::Base
	has_many :order_items
	belongs_to :order_status

  BOSTONZIPS = ["02210", "02108", "02109", "02110", "02111", "02113", "02203"]

  def calc_subtotal
    self.subtotal = self.order_items.map {|item| item.total_price}.reduce(:+)
  end

  def calc_total
    self.total = ((self.subtotal + self.delivery_cost) * 1.07).round(2)
  end

  def calc_delivery
    BOSTONZIPS.include?(self.delivery_address_zipcode) ? self.delivery_cost = 6.00 : self.delivery_cost = 10.00
  end
end
