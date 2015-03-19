require 'rails_helper'

RSpec.describe ProductsController, :type => :controller do

  describe "GET index" do

    it "shows index" do
        get :index
        expect(response).to be_success
      end
    end

   describe '#create' do

    it 'creates a new entry for a product' do
      expect(Product.create(name: 'cheese bagel', price: 3.00, description: 'yumm', id:500)).to be_a Product
    end
  end

#   describe "GET show" do
#   it "request a single product" do
#     product = Product.create!(name: "simple bagel")
#     get :show, {:id => product.to_param}
#     expect(response).to be_success
#   end
# end



#  describe "DELETE destroy" do
#   it "destroys the requested product" do
#     product = Product.create!(name: 'bagel')
#     expect do
#       delete :destroy, {:id => product.to_param}
#     end.to change(Product, :count).by(-1)
#   end
# end
#   describe "update product" do
#   it "updates a product" do
#       product = Product.create!(name: "bagel")
#         put :update, {:id => product.to_param, :name => "new bagel"}
#         product.reload

#       end
    # end







end





