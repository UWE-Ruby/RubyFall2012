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
		it "should be able to count the charaters" do
<<<<<<< HEAD
                        count = @my_string.length
			count.should eq @my_string.length.size	
		end
		it "should be able to split on the . charater" do
			result = @my_string.split("\.")
			result.should have(2).items	
		end
		it "should be able to give the encoding of the string" do
                        encoding = @my_string.encoding
                        encoding.should eq (Encoding.find("UTF-8"))
=======
			@my_string.should have(@my_string.size).characters
		end
		it "should be able to split on the . charater" do
			result = @my_string.split('.')
			result.should have(2).items	
		end
		it "should be able to give the encoding of the string" do
			@my_string.encoding.should eq (Encoding.find("UTF-8"))
>>>>>>> 476e4b543ee68aad8bb809afdfe2207afd39e8e5
		end
	end
end
