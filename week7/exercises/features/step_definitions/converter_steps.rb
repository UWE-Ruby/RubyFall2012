Given /^I have entered (\d+) into the converter$/ do |arg1|
	@converter = Converter.new(arg1)
end

Given /^I set the type to (\w+)$/ do |arg1|
	@converter.type = arg1
end

When /^I press (\w+)$/ do |arg1|
	@result = @converter.send(arg1)
end

Then /^the result returned should be (\d+)\.(\d+)$/ do |arg1, arg2|
	@result.should == "#{arg1}.#{arg2}".to_f
end