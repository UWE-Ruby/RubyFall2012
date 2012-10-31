require "./calculator"

describe Calculator do
  
  before do
    @calculator = Calculator.new
  end

  describe "sum" do
    it "computes the sum of an empty array" do
      @calculator.sum([]).should == 0
    end
    
    it "computes the sum of an array of one number" do
      @calculator.sum([17]).should == 17
    end
    
    it "computes the sum of an array of two numbers" do
      @calculator.sum([7,17]).should == 24
    end
    
    it "computes the sum of an array of many numbers" do
      @calculator.sum([1,3,5,7,9, 11, 12]).should == 48
    end
  end

  describe "multiply" do
    it "multiplies two numbers" do
      @calculator.multiply([3,4]).should == 12
    end
    it "multiplies an array of numbers" do
      @calculator.multiply([5,7,9]).should == 315
    end
  end

  describe "power" do
    it "raises number to a power" do
      @calculator.power(2,3).should == 8
    end
  end

  describe "factorial" do
    it "computes the factorialof 0" do
      @calculator.factorial(0).should == 0
    end
    it "computes the factorial of 0" do
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