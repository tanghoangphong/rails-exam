require 'counter'

RSpec.describe Counter, '#increment' do
	it "should increment the count" do
		expect {Counter.new.increment}.to change(Counter.new, :count).by_at_least(0)
	end

end