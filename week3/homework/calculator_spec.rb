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

  describe "multiplies" do
    it "multiplies two numbers" do
      @calculator.multiplies(3,4).should == 12
    end
  end

  describe "multiplies_array" do
    it "multiplies an array of numbers" do
      a = [2,3,4]
      @calculator.multiplies_array(a).should == 24
    end
  end
  
  describe "raises_to_power" do
    it "raises one number to the power of another number" do
      @calculator.raises_to_power(2,4).should == 16
    end
  end
  
  # http://en.wikipedia.org/wiki/Factorial
  describe "factorial" do
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
