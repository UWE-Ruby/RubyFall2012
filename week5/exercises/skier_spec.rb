load 'skier.rb'

describe Skier do
	it "should ski the hill" do
		s=Skier.new
		#s.ski("the hill").should equal "This skier is skiing the hill"  
		s.ski("the hill").should eq "This skier is skiing the hill"
		# eq looks at the value, equal looks at the instance (object identity!)
		# Use 'actual.should eq(expected)' if you don't care about
		# object identity in this example.
	end
end