require 'rails_helper'

RSpec.describe OrdersController, :type => :controller do

   # describe "GET index" do

   #  it "shows index" do
   #      get :index
   #      expect(response).to be_success
   #    end
   #  end

   describe '#create order' do

    it 'creates a new entry for a order' do
      expect(Order.create(taxes: 10.00, delivery_cost: 30.00)).to be_a Order
    end
  end

#   describe "GET show" do
#   it "request a single order" do
#     order = Order.create!(taxes: 10.00, delivery_cost: 30.00)
#     get :show, {:id => order.to_param}
#     expect(response).to be_success
#   end
# end



#  describe "DELETE order" do
#   it "destroys the requested order" do
#     order = Order.create!(taxes: 10.00, delivery_cost: 30.00)
#     expect do
#       delete :destroy, {:id => order.to_param}
#     end.to change(Order, :count).by(-1)
#   end
# end

end
