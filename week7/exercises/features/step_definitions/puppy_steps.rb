Given /^we have a puppy$/ do
  @puppy = Puppy.new()
end

Given /^its name is Fred$/ do
  @puppy.name = "Fred"  
end

When /^we pet the puppy$/ do
  @puppy.pet
end

Then /^the puppy wags its tail$/ do
  wags = true
end

Given /^its name is Bella$/ do
  @puppy.name = "Bella"
end

When /^we ring the bell$/ do
  @puppy.ring
end

And /^it wags its tail$/ do
  wags = true 
end

Then /^we must take it out$/ do
  location = "outside"
end

Then /^then it will not pee on the floor$/ do
  @puppy.pee
end
