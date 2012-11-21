require "#{File.dirname(__FILE__)}/EvenNumber.rb"

describe EvenNumber do
	it "should only allow even numbers" do
		EvenNumber.new(2).inspect.should_not == nil
		EvenNumber.new(3).inspect.should == nil
		EvenNumber.new(-4).inspect.should_not == nil
		EvenNumber.new(-5).inspect.should == nil
	end
	it "should be able to get the next number" do
		EvenNumber.new(2).succ.inspect.should == 4
		EvenNumber.new(-4).succ.inspect.should == -2
	end
	it "should be able to compare even numbers" do
		(EvenNumber.new(6) < EvenNumber.new(8)).should == true
		(EvenNumber.new(-10) > EvenNumber.new(-12)).should == true
		(EvenNumber.new(14) == EvenNumber.new(14)).should == true
	end
	it "should be able to generate a range of even numbers" do
		r = EvenNumber.new(20)..EvenNumber.new(30)
		r.collect {|en| en.inspect}.should == [20, 22, 24, 26, 28, 30]
	end
end
