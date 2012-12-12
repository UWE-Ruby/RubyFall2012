require './worker.rb'

describe Worker do

	it "should run some code" do
		flag = false
		Worker.work do
			flag = true
		end
		flag.should be_true
	end

	it "should tell me the execution time" do
		Time.stub(:now).and_return(0,5)
		execution_time = Worker.work do
		end
		execution_time.should be_within(0.1).of(5.0)
	end

end