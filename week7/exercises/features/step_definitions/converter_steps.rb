Given /^I have entered (\d+) into the converter$/ do |arg1|
	@converter = Converter.new(arg1)
end

Given /^I set the type to (\w+)$/ do |arg1|
	@converter.type = arg1
end

<<<<<<< HEAD

=======
>>>>>>> 7a51db287e3acee6bc9678f2d9531ecd3e8bc7c4
When /^I press (\w+)$/ do |arg1|
	@result = @converter.send(arg1)
end

<<<<<<< HEAD

Then /^the result should be (\d+)\.(\d+) on the screen$/ do |arg1, arg2|
=======
Then /^the result returned should be (\d+)\.(\d+)$/ do |arg1, arg2|
>>>>>>> 7a51db287e3acee6bc9678f2d9531ecd3e8bc7c4
	@result.should == "#{arg1}.#{arg2}".to_f
end