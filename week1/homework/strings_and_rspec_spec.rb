encoding: utf-8
describe String do
	context "When a string is defined" do
		before(:all) do
			@my_string = "Renée is a fun teacher. Ruby is a really cool programming language"
		end
		it "should be able to count the charaters"
			@my_string.should have(5).characters

		it "should be able to split on the . charater" do
			pending
			result = #do something with @my_string here
			result.should have(2).items	
		end
		it "should be able to give the encoding of the string" do
			
			should eq (Encoding.find("UTF-8"))
		end
	end
end
