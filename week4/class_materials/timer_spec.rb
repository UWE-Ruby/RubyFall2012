require "#{File.dirname(__FILE__)}/Timer.rb"

describe Timer do

	it "should report the time difference" do
		Time.stub(:now).and_return(0,3)
		time_difference = Timer.time_code do
		end
		time_difference.should be_within(0.1).of(3.0)
	end

	it "should run our code" do
		flag = false
		Timer.time_code do
			flag = true
		end
		flag.should be_true
	end
	
	it "should run our code multiple times" do
		start = 0
		Timer.time_code(5) do
			start += 1
		end
		start.should == 5
	end

	it "should give the average time to execute the code" do
		result = Timer.time_code(10) do
			sleep(1)
		end
		
		result.should be_within(0.1).of(1.0)
	end
end
