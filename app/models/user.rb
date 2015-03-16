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

  def self.store_user_data(chargeData)
	@customer = Stripe::Customer.create(
		:source => chargeData.token # you can't use a stripe token twice! There might be a way around this using stripe.js on the front end.
		)
#	 render json: @customer.id
	 user = @user.find_by(email: params[chargeData.email])
	 user.customer_id << @customer.id
  end

# self.get_user_data(email)
#	user = User.find_by(email: params[:email])
#	return user.customer_id
# end
end
