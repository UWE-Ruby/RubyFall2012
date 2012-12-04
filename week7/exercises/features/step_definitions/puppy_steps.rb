Given /^we have a puppy$/ do
  @puppy = Puppy.new()
end

Given /^its name is Fred$/ do
  @puppy.name = "Fred"
end

When /^we pet the puppy$/ do
  @pet = @puppy.pet
end

Then /^the puppy wags its tail$/ do
  @pet.should eq "The puppy wags its tail!"
end

Given /^its name is Bella$/ do
  @puppy.name = "Bella"
end

When /^we ring the bell$/ do
  @ring = @puppy.ring_bell
end

When /^it wags its tail$/ do
  @ring.should eq "it wags its tail!"
end

Then /^we must take it out$/ do
  @out = @puppy.go_potty
end

Then /^then it will not pee on the floor$/ do
  @out.should eq "it will not pee on the floor!"
end