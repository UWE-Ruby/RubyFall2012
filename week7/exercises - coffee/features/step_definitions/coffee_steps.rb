# features/step_definitions/coffee_steps.rb

Given /there are (\d+) coffees left in the machine/ do |n|
  @machine = Machine.new(n.to_i)
end

Given /^I have deposited (\d+)\$$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

When /^I press the coffee button$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should be served a coffee$/ do
  pending # express the regexp above with the code you wish you had
end