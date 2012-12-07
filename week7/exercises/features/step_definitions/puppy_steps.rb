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

When /^we ring the bell$/ do
  @result = @puppy.ring_the_bell
end

When /^it wags its tail$/ do
  @result.should eq "the puppy wags its tail"
end

Then /^we must take it out$/ do
  @puppy.take_it_out
end

Then /^then it will not pee on the floor$/ do
  @puppy.pee_on_floor.should eq false
end
