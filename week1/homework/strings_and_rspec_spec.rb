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
            puts "Starting string: \"#@my_string\""
		end

        after(:all) do
            puts "\nFooling around some more with strings. Splitting on 'a'"
            counter = 0
			result = @my_string.split(/a/)
            result.each do |current_item|
                puts "#{counter}: \"#{current_item}\""
                counter += 1
            end

            rebuilt = ""
            result.each do |current_item|
                counter -= 1
                rebuilt += current_item
                if (counter > 0) then rebuilt += "a" end
            end
            puts "Rebuilt string = \"#{rebuilt}\""

            puts "This is#{if (rebuilt != @my_string) then " not" else "" end} equal to the original."
        end

		it "should be able to count the characters" do
            @my_string.should have(66).characters
            @my_string.length.should eq 66
        end

		it "should be able to split on the . character" do
			result = @my_string.split(/\.\s*/)
			result.should have(2).items
		end

		it "should be able to give the encoding of the string" do
			@my_string.encoding.should eq (Encoding.find("UTF-8"))
		end
	end
end
