Given /^we have a puppy$/ do
	@puppy = Puppy.new
end

Given /^its name is Fred$/ do
	@puppy.name = "Fred"
end

When /^we pet the puppy$/ do
  @result = @puppy.pet
end

Then /^the puppy wags its tail$/ do
  @result.should == "Yayyyy!"
end

Given /^its name is Bella$/ do
  @puppy.name = "Bella"
end

When /^we ring the bell$/ do
  @result = @puppy.ring_bell
end

When /^it wags its tail$/ do
  @result.should == "Yayyyy!"
end

Then /^we must take it out$/ do
  @puppy.take_dog_out.should == true
end

Then /^then it will not pee on the floor$/ do
  @puppy.pee?.should == false
end
