module Admin
  class ProductsController < ::ProductsController

    def destroy
      @product = Product.find(params[:id])
      @product.destroy
    end

  end
end
