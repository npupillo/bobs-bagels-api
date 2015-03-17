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

# self.get_user_data(email)
#	user = User.find_by(email: params[:email])
#	return user.customer_id
# end

end
