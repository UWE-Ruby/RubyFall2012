Given /^I have entered (\d+) into the converter$/ do |arg1|
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
end

Given /^we have a puppy$/ do
  @puppy = Puppy.new()
end

Given /^its name is (\w)$/ do |arg1|
  @puppy.name = arg1
end

When /^we pet the puppy$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^the puppy wags its tail$/ do
  pending # express the regexp above with the code you wish you had
end

Given /^its name is Bella$/ do
  pending # express the regexp above with the code you wish you had
end

When /^we ring the bell$/ do
  pending # express the regexp above with the code you wish you had
end

When /^it wags its tail$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^we must take it out$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^then it will not pee on the floor$/ do
  pending # express the regexp above with the code you wish you had
end
