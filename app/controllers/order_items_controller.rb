class OrderItemsController < ApplicationController
	def index
		@order_items = Order_items.all
	end
	
	def show
		@order_items = Order_item.find(params[:id])
	end

	def create
		@order_items = Order_items.new(order_items_params)
		if @Order_items.save
			render json: @order_items, status: :created, location: @order_items
		else
			render json: @order_items.errors,
			status: :unprocessable_entity
		end
	end
	
	def update
		@order_items = Order_items.find(params[:id])
		if @Order_items.update(Order_items_params)
			render json: @order_items, status: :ok
		else
			render json: @order_items.errors, status: :unprocessable_entity
		end
	end
	
	def destroy
		@order_items = Order_items.find(params[:id])
		@order_items.destroy
		head :no_content
	end
	
	private
	
	def order_items_params
		params.require(:order_items).permit(:quantity, :total_price)
	end
		
end
