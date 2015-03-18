class OrderItem < ActiveRecord::Base
	belongs_to :product
	belongs_to :order
  belongs_to :bagel
  has_many :ingredients_and_order, foreign_key: "order_item_id"
  has_many :ingredients, through: :ingredients_and_order

  def calc_total_price
    self.total_price = (self.product.price + self.extras) * self.quantity
  end

  def calc_extras
    total = 0
    binding.pry
    self.ingredients.each { |i| self.product.ingredients.include?(i) ? total : total += i.price }
    self.bagel == self.product.bagel ? total : total += (self.bagel.price || 0)
    self.extras = total
  end
end
