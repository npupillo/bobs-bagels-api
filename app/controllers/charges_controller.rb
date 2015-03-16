require 'stripe'

class ChargesController < ApplicationController

	def index
		@user = User.find_by(token: params[:token])
		@charges = Charge.all
		render json: @charges
	end
	
	def make_charge
		@charge = Charge.new(charge_params)
		
		@amount = Charge.calculate_cart_total(@charge.cart)

		if @charge.customer_id == nil
			Stripe::Charge.create({
				:amount => @amount,
				:currency => "usd",
				:source => @charge.token, # obtained with Stripe.js
	#			:description => "Charge for #{@user.email}"
				}, {
	#			:idempotency_key => "ccVGmh7lKSUwfx7J" #this will have to be generated by us
				})
				if @charge.store_info == true
					User.store_user_data
				end		
		else	
			Stripe::Charge.create({
				:amount => @amount,
				:currenct => "usd",
				:source => @user.customer_id
				})
		end
	end
	
	private
		
	def charge_params
		params.require(:charge).permit(:charge, :cart, :token, :store_info) #the front end will have to store the customer id
	end
end