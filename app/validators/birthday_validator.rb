class BirthdayValidator < ActiveModel::EachValidator
	def validate_each(record, attribute, value)
		if value>Time.now
			record.errors.add(attribute, "have to less than now")
		end
	end
end