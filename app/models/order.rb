class Order < ActiveRecord::Base
	has_many :order_items
	belongs_to :order_status
  has_one :charge
  belongs_to :user

  BOSTONZIPS = ["02210", "02108", "02109", "02110", "02111", "02113", "02203"]

  def calc_subtotal
    self.subtotal = self.order_items.map {|item| item.total_price}.reduce(:+) + self.delivery_cost
  end

  def calc_total
    self.total = self.subtotal + self.taxes
  end

  def calc_tax
    self.taxes = (self.subtotal * 0.07).round(2)
  end

  def calc_extras
    self.extras = self.order_items.map {|item| item.extras}.reduce(:+)
  end

  def calc_delivery
    if self.delivery_address_zipcode == "undefined"
      self.delivery_cost = 0.0
    else
      BOSTONZIPS.include?(self.delivery_address_zipcode) ? self.delivery_cost = 6.00 : self.delivery_cost = 10.00
    end
  end

  def create_order_items
    cart = JSON.parse(self.cart)
    cart.each do |item|
      @order_item = self.order_items.create(product_id: item['product_id'], quantity: item['quantity'], bagel_id: item['bagel'])
      item['ingredients'].each do |ingredient|
        IngredientsAndOrder.create(order_item_id: @order_item.id, ingredient_id: ingredient)
      end
    end
  end

  def process
    self.create_order_items

    self.order_items.each do |item|
      item.calc_extras
      item.calc_total_price
    end
    self.calc_extras
    self.calc_delivery
    self.calc_subtotal
    self.calc_tax
    self.calc_total
    charge_amount = (self.total * 100).to_i
    self.charge = Charge.create(amount: charge_amount, token: self.token)
    self.charge.make_charge
  end

end
