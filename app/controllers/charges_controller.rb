require 'stripe'

class ChargesController < ApplicationController

	def index
		@user = User.find_by(token: params[:token]) # this is the user's login token not their stripe token!
		@charges = Charge.all
		render json: @charges
	end
	
	def make_charge
		@charge = Charge.new(charge_params)
		
		@amount = 100 # this is temporary!
		if @charge.store_info == true
			customer = Stripe::Customer.create(
				:source => @charge.token
				)
			charge = Stripe::Charge.create(
				:customer => customer.id,
				:amount => @amount,
				:currency => 'usd'
				)
			binding.pry
			user = User.first # this is temporary
			user.customer_id = customer.id
			user.save
		else	
			Stripe::Charge.create({
				:amount => @amount,
				:currenct => "usd",
				:source => @user.token
				})
		end
	end
	
	private
		
	def charge_params
		params.require(:charge).permit(:charge, :cart, :token, :store_info) #the front end will have to store the customer id
	end
end