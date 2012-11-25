Given /^I have entered (\d+) into the converter$/ do |arg1| #copy this from running your cucumber feature converter.feature
	@converter = Converter.new(arg1) # you write this code
end

Given /^I select Celsius$/ do
	@converter.type = "Celsius"
end

When /^I press convert$/ do
	@result = @converter.convert
end

Then /^the result should be (\d+)\.(\d+) on the screen$/ do |arg1, arg2|
	@result.should eq "#{arg1}.#{arg2}".to_f
end
