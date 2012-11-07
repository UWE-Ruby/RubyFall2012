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

  describe "times" do
    it "multiplies two numbers" do
      @calculator.*([2,7]).should == 14
    end

    it "should know that any number times zero is zero" do
      @calculator.*([0,14,67]).should == 0
    end

    it "multiplies an array of numbers" do
      @calculator.*([1,3,7,1]).should == 21
    end

    it "should raise error if input is not usable" do
      lambda { @calculator.*([1,"fifty"]).should raise_error(TypeError) }
    end
  end

  describe "exponent" do
    it "raises one number to the power of another number" do
      @calculator.exp(2,8).should == 256
    end
  end

  # http://en.wikipedia.org/wiki/Factorial
  describe "#factorial" do
    it "computes the factorial of 0" do
      @calculator.factorial(0).should == 1
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

    it "should raise error for input that can't be converted to an integer" do
      lambda { @calculator.factorial("fourty").should raise_error(ArgumentError) }
    end
  end

end
