Given /^I have entered (\d+) into the converter$/ do |arg1|
	@converter = Converter.new(arg1)
end

Given /^I select Celsius$/ do
	@converter.type = "Celsius"
end

When /^I press convert$/ do
	@result = @converter.convert
end

Then /^the result should be (\d+) on the screen$/ do |arg1|
	@result.should eq arg1.to_i
end
