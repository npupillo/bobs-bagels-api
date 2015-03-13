require 'stripe'

class ChargesController < ApplicationController
	def index
		token =	Stripe::Token.create(
			:bank_account => {
			:country => "US",
			:routing_number => "110000000",
			:account_number => "000123456789",
			},
		)

		customer = Stripe::Customer.retrieve("cus_5rOOrVnSCnMESX")

		card = Stripe::Token.create(
			:card => {
			:number => "4242424242424242",
			:exp_month => 3,
			:exp_year => 2016,
			:cvc => "314"
		  },
		)

		@amount = 500

		charge = Stripe::Charge.create(
			:customer => customer.id,
			:amount => @amount,
			:description => 'Rails Stripe customer',
			:currency => 'usd'
			)

		render json: { :charge => charge, :card => card, :customer => customer, :token => token }
	end
end
