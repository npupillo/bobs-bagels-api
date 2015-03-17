require 'pry'

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
    elsif self.order.return_customer == true
      Stripe::Charge.create({
      :amount => self.amount,
      :currency => "usd",
      :source => self.order.user.customer_id
                })
    else
      binding.pry
      Stripe::Charge.create({
        :amount => self.amount,
        :currency => "usd",
        :source => self.token
      })
    end
  end

end
