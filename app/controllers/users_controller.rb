require 'pry'

class UsersController < ApplicationController
	before_filter :authenticate, only: [:index]

  def sign_in
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      render json: {token: user.token }
    else
      head :unauthorized
    end
  end

	# def make_user_stripe_customer
	# 	Stripe::Customer.create(
	# 		:email => email
	# 		:card  => params[:stripeToken]
	# 	  )

	# 	Stripe::Token.create(
	# 		:card => {
	# 		:number => card_number,
	# 		:exp_month => exp_month,
	# 		:exp_year => exp_year,
	# 		:cvc => cvc
	# 	  },
	# 	)
	# end

  def index
    binding.pry
    render json: User.all, status: :ok
  end

  def show
    binding.pry
    @user = User.where(token: params[:id])
    render json: @user
  end

  def update
    @user = User.where(token: params[:id])
    if @user.update(user_params)
      render json: @user, status: :ok
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: { token: @user.token }
    else
      render json: { message: 'failed', status: 500 }
    end
  end

	private

	def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :token)
	end
end
