require 'rspec/expectations'
class Calculator
	include RSpec::Matchers

	def add(a,b)
		a+b
	end
	def Calculator.sum(a,b)
		[1]
	end

end
