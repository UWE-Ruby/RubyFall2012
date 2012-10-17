# encoding: utf-8
describe String do
	context "When a string is defined" do
		before(:all) do
			@my_string = "Renée is a fun teacher. Ruby is a really cool programming language"
		end
		it "should be able to count the characters"do
      @charcount = @my_string.length
      @charcount.should_not be_nil
    end
		it "should be able to split on the . character" do
			@result = @my_string.split('.')
      @result = @result.length
			@result.should eq 2
		end
		it "should be able to give the encoding of the string" do
			@my_string = @my_string.encoding
			@my_string.should eq (Encoding.find("UTF-8"))
		end
	end
end
