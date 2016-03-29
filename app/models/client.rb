class Client < ActiveRecord::Base
	has_one :address
	has_many :orders, dependent: :destroy
	after_destroy do puts"client destroyed"
	end
	has_and_belongs_to_many :roles
	#default_scope {order('id desc')}
	#scope :lastest, -> {order('id desc')}
	#scope :newest, -> {order('id asc')}
	#validates :is_accept, presence: true, unless: "first_name.nil?", 
	#									if: Proc.new{|c| c.orders_count > 3} 
	#validates :orders_count, inclusion: {in: 1..5,
	#	message: "%{value} is not a valid size"}

end
