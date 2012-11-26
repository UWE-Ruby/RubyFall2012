Given /^I have entered (\d+) into the converter$/ do |arg1|
<<<<<<< HEAD
  @converter = Converter.new(arg1)
end

Given /^I set the type to Fahrenheit$/ do
  @converter.type = "Fahrenheit"
end

When /^I press convert$/ do
  @result = @converter.convert
end

Then /^the result returned should be (\d+)\.(\d+)$/ do |arg1, arg2|
  @result.should eq "#{arg1}.#{arg2}".to_f
=======
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
>>>>>>> 7a51db287e3acee6bc9678f2d9531ecd3e8bc7c4
end