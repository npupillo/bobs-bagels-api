class OrdersController < ApplicationController
	before_filter :authenticate, only: [:create]

	def index
		@order = Order.all
	end

	def show
		@order = Order.find(params[:id])
	end

	def create
		@order = Order.new(order_params)
		if @order.save
			render json: @order, status: :created, location: @order
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
		params.require(:order).permit(:taxes, :cart, :delivery_cost, :subtotal, :total, :delivery_type, :delivery_phone, :delivery_phone, :delivery_address_1, :delivery_address_2, :delivery_address_zipcode)
	end

	    t.decimal  "taxes"
    t.decimal  "delivery_cost"
    t.decimal  "subtotal"
    t.decimal  "total"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "order_status_id"
    t.integer  "user_id"
    t.decimal  "discount"
    t.string   "delivery_type"
    t.string   "delivery_phone"
    t.string   "delivery_address_1"
    t.string   "delivery_address_2"
    t.string   "delivery_address_zipcode"

end
