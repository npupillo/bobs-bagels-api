class UsersController < ApplicationController
	def index
		@users = User.all
		render json: @users
	end
	
	def show
		@user = User.find(params[:id])
		render json: @user
	end
	
	def create
		@user = User.new(user_params)
		if @user.save
			render json: @user, status: :created, location: @user
		else
			render json: @user.errors, status: :unprocessable_entity
		end
	end
	
	def update
		@user = User.find(params[:id])
		if @user.update(product_params)
			render json: @user, status: :ok
		else
			render json: @user.errors, status: :unprocessable_entity
		end
	end
	
	def destroy
		@user = User.find(params[:id])
		@user.destroy
		head :no_content
	end
	
	private
	
	def user_params
		params.require(:user).permit(:name, :first_name, :last_name, :email, :phone)
	end
end
