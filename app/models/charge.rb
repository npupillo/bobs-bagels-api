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



#	def make_charge_to_user
#		@user = User.find(params[:token])
#		@charge = Charge.new(charge_params)
#		
#		Stripe::Customer.retrieve(@charge.customer_id)
#		
#		charge = Stripe::Charge.create(
#			:customer => @user.customer.id,
#			:amount => amount,
#			:description => 'Rails Stripe customer',
#			:currency => 'usd'
#			)
#
#		if @charge.save
#			render json: { charge: @charge }
#		else
#			render json: {message: 'failed', status: 500}
#        end
#	end