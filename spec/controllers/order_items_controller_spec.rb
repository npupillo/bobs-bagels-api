require 'rails_helper'

RSpec.describe OrderItemsController, :type => :controller do


  describe "GET index" do

    it "shows index" do
        get :index
        expect(response).to be_success
      end
    end

   describe '#create order_items' do

    it 'creates a new entry for a product' do
      expect(Order_items.new(order_items_params)).to be_a Order_items
    end
  end

  describe "GET show" do
  it "request a single order_items" do
    @order_items = Order_items.new(order_items_params)
    get :show, {:id => Order_items.to_param}
    expect(response).to be_success
  end
end



 describe "DELETE destroy" do
  it "destroys the requested order_items" do
    @order_items = Order_items.new(order_items_params)
    expect do
      delete :destroy, {:id => order_items.to_param}
    end.to change(Order_item, :count).by(-1)
  end
end


end
