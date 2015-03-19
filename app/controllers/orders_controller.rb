class OrdersController < ApplicationController

	def index
		@order = Order.all
	end

	def show
		@order = Order.find(params[:id])
	end

	def create
    @user = User.where(token: params[:user_id]).first
		@order = @user.orders.create(order_params)
		@order.process
		if @order.save
		render json: {data: @order}, status: :created
		else
			render json: @order.errors,
			status: :unprocessable_entity
		end
	end

	def update
		@order = Order.find(params[:id])
		if @order.update(order_params)
			render json: @order, status: :ok
		else
			render json: @order.errors, status: :unprocessable_entity
		end
	end

	def destroy
		@order = Order.find(params[:id])
		@order.destroy
		head :no_content
	end

	private

	def order_params
		params.require(:order).permit(:taxes, :cart, :delivery_cost, :subtotal, :total, :delivery_type, :delivery_phone, :delivery_phone, :delivery_address_1, :delivery_address_2, :delivery_address_zipcode, :token, :store_info, :extras, :customer_id, :created_at)
	end


end
