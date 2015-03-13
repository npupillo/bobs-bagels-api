require 'rails_helper'

RSpec.describe OrderStatusesController, :type => :controller do

  describe "GET index" do

    it "shows index" do
        get :index
        expect(response).to be_success
      end
    end

   describe '#create order status' do

    it 'creates a new entry for a order status' do
      expect(Order_items.new(order_status_params)).to be_a Order_status
    end
  end

  describe "GET show" do
  it "request a single order_status" do
    order_status = Order_items.new(order_status_params)
    get :show, {:id => order_status.to_param}
    expect(response).to be_success
  end
end



 describe "DELETE order_status" do
  it "destroys the requested order" do
    order_status = Order_items.new(order_status_params)
    expect do
      delete :destroy, {:id => order_status.to_param}
    end.to change(Order_status, :count).by(-1)
  end
end


end
