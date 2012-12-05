Given /^I have entered (\d+) into the converter$/ do |arg1|
  @converterF = Converter.new(arg1)
end

Given /^I select Farenheit$/ do
  @converterF.type = "Farenheit"
end

When /^I press (\w+)$/ do |arg1|
	#turns "convert" order into an argument, so you could use it later for other tests, etc
  @converterF.send(arg1)
end

Then /^the result should be (\d+)\.(\d+) on the screen$/ do |arg1, arg2|
  
end
