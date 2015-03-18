require 'stripe'

class Charge < ActiveRecord::Base
  belongs_to :order

  def make_charge
    if self.order.store_info == true
      customer = Stripe::Customer.create(
        :source => self.token
        )
      charge = Stripe::Charge.create(
        :customer => customer.id,
        :amount => self.amount,
        :currency => 'usd'
        )
      self.order.user.customer_id = customer.id
      self.order.user.save
    elsif self.order.customer_id != "undefined"
      Stripe::Charge.create({
      :amount => self.amount,
      :currency => "usd",
      :customer => self.order.user.customer_id
                })
    else
      Stripe::Charge.create({
        :amount => self.amount,
        :currency => "usd",
        :source => self.token
      })
    end
  end
# discounts and coupons will go here.
end
