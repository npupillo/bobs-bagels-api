class ProductsController < ApplicationController
	def index
		@products = Products.all
		render :json
	end
	
	def show
		@product = Product.find(params[:id])
		render :json
	end
	
	def create
		@product = Product.new(product_params)
		if @product.save
			render json: @product, status: :created, location: @product
		else
			render json: @product.errors, status: :unprocessable_entity
		end
	end
	
	def update
		@product = Product.find(params[:id])
		if @product.update(product_params)
			render json: @product, status: :ok
		else
			render json: @product.errors, status: :unprocessable_entity
		end
	end
	
	def destroy
		@product = Product.find(params[:id])
		@product.destroy
		head :no_content
	end
	
	private
	
	def product_params
		params.require(:product).permit(:name, :price, :description) # reminder, ingredients can be passed here as an array.
	end

