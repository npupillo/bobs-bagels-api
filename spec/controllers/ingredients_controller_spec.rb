require 'rails_helper'

RSpec.describe IngredientsController, :type => :controller do
   describe "GET index" do

    it "shows index" do
        Ingredient.all
        expect(response).to be_success
      end
    end

#    describe '#create ingredient' do

#     it 'creates a new entry for a product' do
#       expect(Ingredient.create(name: 'cheese', price: 3.00, id:500)).to be_a Ingredient
#     end
#   end

#   describe "GET show" do
#   it "request a single ingredient" do
#     @ingredient = Ingredient.create(name: 'cheese', price: 3.00, id:500)
#     get :show, {:id => Ingredient.to_param}
#     expect(response).to be_success
#   end
# end



#  describe "DELETE destroy" do
#   it "destroys the requested ingredient" do
#     @ingredient = Ingredient.create(name: 'cheese', price: 3.00, id:500)
#     expect do
#       delete :destroy, {:id => Ingredient.to_param}
#     end.to change(Ingredient, :count).by(-1)
#   end

# end
end
