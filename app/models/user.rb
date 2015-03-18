class User < ActiveRecord::Base
	has_secure_password
	has_many :orders

	before_create :generate_token

  def generate_token
    return if token.present?

    begin
      self.token = SecureRandom.uuid.gsub(/\-/,'')
    end while self.class.exists?(token: token)
  end

  def get_customer_info
	  Stripe::Customer.retrieve(self.customer_id)
  end

  def get_customer_cards
	  Stripe::Customer.retrieve(self.customer_id).sources.all(:limit => 3, :object => "card")
  end

  def add_customer_card
	  customer = Stripe::Customer.retrieve({self.customer_id})
	  customer.sources.create({:source => self.card_token})
  end
	  
  def update_customer_info
	  customer = Stripe::Customer.retrieve({self.customer_id})
	  customer.card = self.card_token
	  customer.save
  end
	  
  def update_customer_card
	  customer = Stripe::Customer.retrieve(self.customer_id)
	  card = customer.sources.retrieve(self.card_token)
	  card. #what ever params we want, might have to add card_params to the user_params?
	  card.save
	  
	  # card params:
	  #	address_city
	  #	address_country
	  #	address_line1
	  #	address_line2
	  #	address_state
	  #	address_zip
	  #	exp_month
	  #	exp_year
	  #	metadata
	  #	name
  end
	  
  def delete_customer
	  customer = Stripe::Customer.retrieve({CUSTOMER_ID})
	  customer.delete
  end
	  
  def delete_customer_card
	  customer = Stripe::Customer.retrieve(self.customer_id)
	  customer.sources.retrieve(self.card_token).delete
  end
end
