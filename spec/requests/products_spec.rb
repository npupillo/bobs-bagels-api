require 'rails_helper'

describe 'Products requests' do

  before(:all) do
    Product.destroy_all
    @products = FactoryGirl.create_list(:product, 5)
  end

  describe '#index' do
    it 'gets all of the products' do
      get '/products'
      expect(response).to be_success

      json = JSON.parse(response.body)
      expect(json.length).to eq 5
    end
  end #describe '#index'

   describe '#show' do
    it 'should retrieve a single product by id and return json' do
      @product = @products.first
      get "/products/#{@product.id}"
      expect(response).to be_success

      product = JSON.parse(response.body)
      expect(product['name']).to eq @product.name
    end
  end #describe '#show'

end
