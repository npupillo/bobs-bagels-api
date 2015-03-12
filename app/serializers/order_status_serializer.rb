class OrderStatusSerializer < ActiveModel::Serializer
  attributes :id, :status
	has_many :orders
end
