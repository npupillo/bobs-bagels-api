class OrderStatusesController < ApplicationController
	
	def index
		@order_status = Order_status.all
	end
	
	def show
		@order_status = Order_status.find(params[:id])
	end

	def create
		@order_status = Order_items.new(order_status_params)
		if @order_status.save
			render json: @order_status, status: :created, location: @order_status
		else
			render json: @order_status.errors,
			status: :unprocessable_entity
		end
	end
	
	def update
		@order_status = Order_status.find(params[:id])
		if @Order_status.update(Order_status_params)
			render json: @order_status, status: :ok
		else
			render json: @order_status.errors, status: :unprocessable_entity
		end
	end
	
	def destroy
		@order_status = Order_status.find(params[:id])
		@order_status.destroy
		head :no_content
	end
	
	private
	
	def order_status_params
		params.require(:order_status).permit(:status)
	end	
end
