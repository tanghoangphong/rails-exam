class Order < ActiveRecord::Base
	belongs_to :client, counter_cache: :orders_count
	after_destroy do puts"order destroyed"
	end
end
