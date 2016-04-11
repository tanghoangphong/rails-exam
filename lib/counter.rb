class Counter
	def increment
		@@count ||=0
		@@count +=3
	end
	def count
		@@count ||=0
	end
end
