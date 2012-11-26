


Given /^I have entered (\d+) into the converter$/ do |arg1|
  @converter = Converter.new(arg1) # express the regexp above with the code you wish you had
end

Given /^I set the type to Fahrenheit$/ do
  @converter.type = "Fahrenheit" # express the regexp above with the code you wish you had
end

When /^I press convert$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^the result returned should be (\d+)\.(\d+)$/ do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end