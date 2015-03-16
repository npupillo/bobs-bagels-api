class Charge < ActiveRecord::Base
	def self.calculate_cart_total(cartJson)
		cart = JSON.parse(cartJson)
		price_array = []
		cart.each { |i| price_array << i['price'] }
		price_array.map { |price| price.slice!(0) }
		price_array.map! { |price| price.to_i * 100 }
		amount = price_array.reduce(:+)
		return amount
	end
end