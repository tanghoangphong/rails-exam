require 'match'
RSpec.describe Match do
	describe '.sum' do
		it 'return the sum of class method' do
			expect([1,3,2,4]).to match_array([2,4,1]).or include(3)
		end
	end
	
end