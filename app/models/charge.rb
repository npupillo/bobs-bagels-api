class Charge < ActiveRecord::Base
	def self.calculate_cart_total(cartJson)
#		binding.pry
#		cart = JSON.parse(cartJson)
#		item_array = []
#		item_price_array = []
#		
#		ingredient_array = []
#		ingredient_price_array = []
#		
#		cart.each { |i| item_array << i['product_id'] }
#		item_array.map { |i| item_array << i.to_i }
#		item_array.each { |i| item_price_array << Product.find_by(id: i).price.to_f }
#		item_price_array.map! { |price| price.to_i * 100 }
#		item_total = item_price_array.reduce(:+)
#		
#		cart.each { |i| ingredient_array << i['ingredients'] }
#		ingredient_array.map { |i| i.to_i }
#		ingredient_array.each { |i| ingredient_price_array << Ingredient.find_by(id: i).price.to_f }
#		ingredient_price_array.map! { |price| price.to_i * 100 }
#		ingredient_total = ingredient_price_array.reduce(:+)
#		
#		amount = item_total + ingredient_total
		
		return amount
	end
end