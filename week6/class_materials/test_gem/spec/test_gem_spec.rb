require 'test_gem'

describe "test_gem" do
	it "Should make a new Hello" do
		h = Hello.new
		h.should be_a Hello
	end
	
end