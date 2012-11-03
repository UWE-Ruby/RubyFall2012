require "#{File.dirname(__FILE__)}/calculator"

describe Calculator do
  
  before do
    @calculator = Calculator.new
  end

  describe "#sum" do
    it "computes the sum of an empty array" do
      @calculator.sum([]).should == 0
    end
    
    it "computes the sum of an array of one number" do
      @calculator.sum([7]).should == 7
    end
    
    it "computes the sum of an array of two numbers" do
      @calculator.sum([7,11]).should == 18
    end
    
    it "computes the sum of an array of many numbers" do
      @calculator.sum([1,3,5,7,9]).should == 25
    end
  end
  
  # Once the above tests pass, 
  # write tests and code for the following:
<<<<<<< HEAD
  describe "#multiply" do
  	it "multiplies two numbers" do
		@calculator.multiply(2,2).should eq 4
	end

  	it "multiplies an array of numbers" do
		@calculator.multiply([2,2]).should eq 4
  	end
  end
  
  it "raises one number to the power of another number" do
  	p = 1
	32.times{ p *= 2 } 
	@calculator.pow(2,32).should eq p 
  end
  
  # http://en.wikipedia.org/wiki/Factorial
  describe "#factorial" do
    it "computes the factorial of 0" do
    	@calculator.fac(0).should eq 1
    end
    it "computes the factorial of 1" do
    	@calculator.fac(1).should eq 1
    end

    it "computes the factorial of 2" do
    	@calculator.fac(2).should eq 2
    end

    it "computes the factorial of 5" do
    	@calculator.fac(5).should eq 120
    end

    it "computes the factorial of 10" do
    	@calculator.fac(10).should eq 3628800
    end

  end
=======
  
  it "multiplies two numbers" do
    @calculator.mul([1,4]).should == 4
  end

  it "multiplies an array of numbers" do
    @calculator.mul([8,2,1,5]).should == 80
  end
  
  it "raises one number to the power of another number" do
    @calculator.power([2,4]).should == 16
  end

  
  # http://en.wikipedia.org/wiki/Factorial
  describe "#factorial" do
>>>>>>> f22446d7c1ea0cf75d26c958547a3d11b80f5fd7

    it "computes the factorial of 0" do
      @calculator.factorial(0).should == 0
    end

    it "computes the factorial of 1" do
      @calculator.factorial(1).should == 1
    end
    it "computes the factorial of 2" do
      @calculator.factorial(2).should == 2
    end
    it "computes the factorial of 5" do
      @calculator.factorial(5).should == 120
    end
    it "computes the factorial of 10" do
      @calculator.factorial(10).should == 3628800
    end
  end
end


