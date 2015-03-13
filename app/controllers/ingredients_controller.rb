class IngredientsController < ApplicationController

	def index
		@ingredients = Ingredient.all
		render json: @products
	end

	def show
		@ingredient = Ingredient.find(params[:id])
		render json: @product
	end

	def create
		@ingredient = Ingredient.new(ingredient_params)
		if @ingredient.save
			render json: @ingredient, status: :created, location: @ingredient
		else
			render json: @ingredient.errors, status: :unprocessable_entity
		end
	end

	def update
		@ingredient = Ingredient.find(params[:id])
		if @ingredient.update(ingredient_params)
			render json: @ingredient, status: :ok
		else
			render json: @ingredient.errors, status: :unprocessable_entity
		end
	end

	def destroy
		@ingredient = Ingredient.find(params[:id])
		@ingredient.destroy
		head :no_content
	end

	private

	def ingredients_params
		params.require(:ingredients).permit(:name, :price)
	end
end



