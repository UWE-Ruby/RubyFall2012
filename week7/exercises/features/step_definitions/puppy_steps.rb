Given /^we have a puppy$/ do
  @puppy = Puppy.new
end

Given /^its name is (\w+)$/ do |arg1|
  @puppy.name = arg1
  @puppy.name == arg1
end

When /^we pet the puppy$/ do
  @result = @puppy.pet
end

Then /^the puppy wags its tail$/ do
  @result.should eq "the puppy wags its tail"
end

Given /^its name is (\w+)$/ do |arg1|
  @puppy = Puppy.new
  @puppy.name = arg1
  @puppy.name.should eq arg1
end

When /^we ring the bell$/ do
  @result = @puppy.ring_the_bell
end

When /^it wags its tail$/ do
  @result.should eq "the puppy wags its tail"
end

Then /^we must take it out$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^then it will not pee on the floor$/ do
  pending # express the regexp above with the code you wish you had
end
