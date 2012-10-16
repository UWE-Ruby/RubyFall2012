# encoding: utf-8
describe String do
	context "When a string is defined" do
		before(:all) do
			@my_string = "Renée is a fun teacher. Ruby is a really cool programming language"
		end
		it "should be able to count the charaters"
                        count = @my_string.length
		it "should be able to split on the . charater" do
			pending
			result = @my_string.split("\.")
			result.should have(2).items	
		end
		it "should be able to give the encoding of the string" do
			pending
			#should eq (Encoding.find("UTF-8"))
                        encoding = @my_string.encoding
		end
	end
end
