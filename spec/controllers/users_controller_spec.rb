require 'rails_helper'

RSpec.describe UsersController, :type => :controller do

   describe "GET index" do

    it "shows index" do
        get :index
        expect(response).to be_success
      end
    end

   describe '#create' do

    it 'creates a new entry for a user' do
      expect(User.create(first_name: 'homer', last_name: 'simpson', email: 'homer@gmail.com')).to be_a User
    end
  end

  describe "GET show" do
  it "request a single user" do
    user = User.create!(first_name: "homer", last_name: "simpson")
    get :show, {:id => user.to_param}
    expect(response).to be_success
  end
end



 describe "DELETE user" do
  it "destroys the requested user" do
    user = User.create!(first_name: "homer", last_name: "simpson")
    expect do
      delete :destroy, {:id => user.to_param}
    end.to change(User, :count).by(-1)
  end
end

end
