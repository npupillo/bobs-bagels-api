class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :phone_number, :address_1, :address_2, :address_zipcode, :customer_id
	has_many :orders
end
