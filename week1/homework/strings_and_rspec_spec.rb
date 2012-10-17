# encoding: utf-8
describe String do
	context "When a string is defined" do
		before(:all) do
		  @my_string = "Renée is a fun teacher. Ruby is a really cool programming language"
		end
		
		it "should be able to count the charaters" do
		  @my_string.should have(66).characters
		end
		
		it "should be able to split on the . charater" do
		  result = @my_string.split(".")
		  result.should have(2).items	
		end
		it "should be able to give the encoding of the string" do
		  "#{@my_string.encoding}".should eq ("UTF-8")
		  #should eq (Encoding.find("UTF-8"))
		end
	end
end
