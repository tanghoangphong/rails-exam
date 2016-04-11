class Client < ActiveRecord::Base
	has_one :address
	has_many :orders, dependent: :destroy
	after_destroy do puts"client destroyed"
	end
	has_and_belongs_to_many :roles
	#default_scope {order('id desc')}
	scope :lastest, -> {order('id desc')}
	#scope :newest, -> {order('id asc')}
	#include ActiveModel::Validations
	validates :email, presence: {message: "not nil"}, unless: :name_is_phong?
	def name_is_phong?
		first_name == "Phong"
	end

	#validates :is_accept, presence: true, unless: "first_name.nil?", 
	#									if: Proc.new{|c| c.orders_count > 3} 
	#validates :orders_count, inclusion: {in: 1..5,
	#	message: "%{value} is not a valid size"}
	#validates :birthday, birthday: true, unless: "birthday.nil?"

	validates_with MyValidator, unless: "birthday.nil?"
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "32x32>" }, default_url: "avatar-default-icon.png"
  	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  	validates_attachment :avatar, presence: true,
  		size: { in: 0..500.kilobytes }
end
