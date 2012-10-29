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
  
  it "multiplies two numbers" do
    @calculator.multiply([2,3]).should == 6
  end


  it "multiplies an array of numbers" do
    @calculator.multiply([2,3,4]).should == 24
  end
  
  it "raises one number to the power of another number" do
    @calculator.exponent(5,2).should == 25
  end
  
  # http://en.wikipedia.org/wiki/Factorial
  describe "#factorial" do
    it "computes the factorial of 0" do
      @calculator.factoral(0).should == 1
    end

    it "computes the factorial of 1" do
      @calculator.factoral(1).should == 1
    end
    it "computes the factorial of 2" do
      @calculator.factoral(2).should == 2
    end
    it "computes the factorial of 5" do
      @calculator.factoral(5).should == 120
    end

    it "computes the factorial of 10" do
      @calculator.factoral(10).should == 3628800
    end
  end

end
