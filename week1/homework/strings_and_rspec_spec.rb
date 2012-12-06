# encoding: utf-8

# Ryan Calderon
# 10/16/12
# Week 1 homework

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
		  @my_string.should have(67).characters
	  end
		it "should be able to split on the . charater" do
			result = @my_string.split(/\s*\.\s*/)
			#do something with @my_string here
			result.should have(2).items	
		end
		it "should be able to give the encoding of the string" do
		  #.encoding is not working for me as I have Ruby 1.8.7
			stringEncoding = @my_string.encoding
			stringEncoding.should eq("UTF-8")
			#stringEncoding.should eq (Encoding.find("UTF-8"))
			#should eq (Encoding.find("UTF-8"))
=======
			@my_string.should have(@my_string.size).characters
		end
		it "should be able to split on the . charater" do
			result = @my_string.split('.')
			result.should have(2).items	
		end
		it "should be able to give the encoding of the string" do
			@my_string.encoding.should eq (Encoding.find("UTF-8"))
<<<<<<< HEAD
>>>>>>> 4d8ccdb3a54249f560991eda7f157ec66c3516d3
=======
>>>>>>> 217a9fddb9c3593e5125cdc0b20bbd32afab6597
>>>>>>> master
		end
	end
end
