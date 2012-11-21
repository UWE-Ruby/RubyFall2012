Given /^I have entered (\d+) into the converter$/ do |arg1|
  @converter = Converter.new(arg1) # express the regexp above with the code you wish you had
end

Given /^I set the type to Fahrenheit$/ do
  @converter.type = arg1
end

When /^I press convert$/ do
  @result = @converter.send(arg1)
end

Then /^the result returned should be (\d+)\.(\d+)$/ do |arg1, arg2|
  @result.should == "#{arg1}.#{arg2}".to_f
end
