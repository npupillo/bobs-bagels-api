require 'stripe'
class UsersController < ApplicationController
	before_filter :authenticate, only: [:index]

  def sign_in
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      render json: {token: @user.token, customer_id: @user.customer_id }
    else
      head :unauthorized
    end
  end

  def retrieve_customer
	  @user = User.find_by(user_params)
	  render json: { user_cards: @user.get_customer_cards, user_info: @user.get_customer_info }
  end

  def update_customer
	  @user = User.find_by(user_params)
	  @user.update_customer_info
	  render json: { user_info: @user.get_customer_info }
  end

  def delete_customer
	  @user = User.find_by(user_params)
	  @user.delete_customer
	  render json: { user_info: @user }
  end

  def add_card
	 @user = User.find_by(user_params)
	 @user.add_card
	 render json: { user_cards: @user.get_customer_cards }
  end

  def update_card
	  @user = User.find_by(user_params)
	  @user.update_customer_card
	  render json: { user_cards: @user.get_customer_cards }
  end

  def delete_card
	  @user = User.find_by(user_params)
	  @user.delete_customer_card
	  render json: { user_cards: @user.get_customer_cards }
  end

  def index
    render json: User.all, status: :ok
  end

  def show
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
    @user = User.new(token: params[:token])
    if @user.save
      render json: { token: @user.token }
    else
      render json: { message: 'failed', status: 500 }
    end
  end

	private

	def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :phone_number, :address_1, :address_2, :address_zipcode, :password, :password_confirmation, :token, :card_token, :card_params)
	end
end
