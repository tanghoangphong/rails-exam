class MyValidator < ActiveModel::Validator
	def validate(record)
		if record.birthday>Time.now
			record.errors.add(:birthday,"have to less than now")
		end
	end
end