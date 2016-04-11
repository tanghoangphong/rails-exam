require 'calculator'
RSpec.describe Calculator do
	describe '#add' do
		it 'return the sum of its argument' do
			expect(Calculator.new.add(2,3)).to eq(5)
		end
	end
	describe '.sum' do
		it 'return the sum of its argument class method' do
			expect(Calculator.sum(2,3)).to be_empty
		end
	end
end