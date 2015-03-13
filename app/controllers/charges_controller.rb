require 'stripe'

class ChargesController < ApplicationController

	def index
		@charges = Charge.all
		render json: @charges
	end
	
	def make_charge
		@charge = Charge.new(charge_params)

		if @charge.save
			render json: { charge: @charge }
		else
			render json: {message: 'failed', status: 500}
        end

#		customer = Stripe::Customer.create(
#			:email => 'example@stripe.com',
#			:card  => params[:stripeToken]
#		  )
#		
		customer = Stripe::Customer.retrieve(@charge.customer_id)


#		card = Stripe::Token.create(
#			:card => {
#			:number => "4242424242424242",
#			:exp_month => 3,
#			:exp_year => 2016,
#			:cvc => "314"
#		  },
#		)

		charge = Stripe::Charge.create(
			:customer => customer.id,
			:amount => @charge.amount,
			:description => 'Rails Stripe customer',
			:currency => 'usd'
			)
		
		end
		
		private
		
		def charge_params
			params.require(:charge).permit(:charge, :amount, :token, :customer_id)
		end
end


#      def create
#        @user = User.new(user_params)
#        if @user.save
#          render json: {token: @user.token}
#        else
#          render json: {message: 'failed', status: 500}
#        end
