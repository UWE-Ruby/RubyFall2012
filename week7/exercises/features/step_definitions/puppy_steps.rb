Given /^we have a puppy$/ do 
	@puppy = Puppy.new
	@message = "the puppy is wagging its tail" 
end

And /^its name is (.*)$/ do |name|
	@puppy.name=(name)
end

When /^we pet the puppy$/ do
	@being_pet = @puppy.send(:is_pet)
end

Then /^the puppy wags its tail$/ do
	@being_pet.should == @message
end

When /^we ring the bell$/ do
	@bell_response = @puppy.send(:hears_bell=, true)
	@bell_response.should == true
end

And /^it wags its tail$/ do
	@wags = @puppy.send(:wags)
	@wags.should == @message
end	  

Then /^we must take it out$/ do
	@take_out_pet = @puppy.send(:is_out)
	@take_out_pet.should == true
	@puppy.send(:peeing=, false)
end

And /^then it will not pee on the floor$/ do
	@peeing = @puppy.send(:peeing)
	@peeing.should == false
end