require 'rails_helper'

RSpec.describe ChargesController, :type => :controller do


    describe "GET index" do
        it "shows index" do
        get :index
        expect(response).to be_success
      end
    end



  # describe '#make charges to user' do
  #     it 'creates a new charges' do
  #     expect(Charge.create(
  #     :customer => @user.customer.id,
  #     :amount => @charge.amount,
  #     :description => 'Rails Stripe customer',
  #     :currency => 'usd'
  #     )).to be_a Charge
  #   end
  # end

  # describe '#make charges to card' do
  #     it 'creates a new card' do
  #     expect(Charge.create({
  #     :amount => 400,
  #     :currency => "usd",
  #     :source => @charge.token, # obtained with Stripe.js
  #     :description => "Charge for #{@user.email}"
  #     })).to be_a Charge
  #   end
  # end


end


