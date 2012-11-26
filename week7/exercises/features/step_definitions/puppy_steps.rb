Given /^we have a puppy$/ do
  @puppy = Puppy.new
end

Given /^its name is (\w*)$/ do |name|
  @puppy.name = name
end

When /^we pet the puppy$/ do
  @puppy.pet
end

Then /^(it|the puppy) wags its tail$/ do |puppy|
  @puppy.tail.should == "wagging"
end

When /^we ring the bell$/ do
	@puppy.ring_bell #Perhaps this should work on a Bell or Instrument class?
end

Then /^we must take it out$/ do
  @puppy.walk
end

Then /^then it will not pee on the floor$/ do
  @puppy.pee.should_not eq "on the floor"
end