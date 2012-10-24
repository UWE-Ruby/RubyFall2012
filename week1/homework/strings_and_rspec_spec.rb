# encoding: utf-8

# Please make these examples all pass
# You will need to change the 3 pending tests
# You will need to write a passing test for the first example 
# 	(Hint: If you need help refer to the in-class exercises)
# The two tests with the pending keyword, require some ruby code to be written
# 	(Hint: You should do the reading on Strings first)

describe String do

	context "When a string is defined" do

		before(:all) do
			@my_string = "Renée is a fun teacher. Ruby is a really cool programming language"
		end
<<<<<<< HEAD

		it "should be able to count the charaters" do
			@my_string.length.should eq 67
			
			@my_string.should have(@my_string.size).characters
		end

		it "should be able to split on the . charater" do
			result = @my_string.split('.')
			result.should have(2).items
=======
		it "should be able to count the charaters" do
			@my_string.should have(@my_string.size).characters
		end
		it "should be able to split on the . charater" do
			result = @my_string.split('.')
			result.should have(2).items	
>>>>>>> 476e4b543ee68aad8bb809afdfe2207afd39e8e5
		end

		it "should be able to give the encoding of the string" do
<<<<<<< HEAD
			@my_string.encoding.name should eq (Encoding.find("UTF-8"))

=======
>>>>>>> 476e4b543ee68aad8bb809afdfe2207afd39e8e5
			@my_string.encoding.should eq (Encoding.find("UTF-8"))
		end

	end

end
