require "#{File.dirname(__FILE__)}/calculator"

describe Calculator do
  
  before do
    @calculator = Calculator.new
  end

  describe "#sum" do
    it "computes the sum of an empty array" do
      @calculator.sum([]).should be_zero
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

    it "returns nil when the array is not entirely numeric" do
      @calculator.sum([1,3,"pancake",7,"cornflake",11]).should be_nil
    end

    it "returns nil when the array is not at all numeric" do
      @calculator.sum(["one", :two, "three", :four, "five"]).should be_nil
    end

    it "returns nil if it's passed a non_array" do
      @calculator.sum("zombie").should be_nil
    end

    it "returns nil if it's passed a nil" do
      @calculator.sum(nil).should be_nil
    end
  end
  
  # Once the above tests pass, 
  # write tests and code for the following:
  
  describe "#product" do
    it "multiplies two numbers" do
      @calculator.product(6, 7).should == 42
      @calculator.product(-11, 13).should == (-143)
      @calculator.product(9.3, 7.22).should == 67.146
    end

    it "returns nil when both its arguments are nil" do
      @calculator.product(nil, nil).should be_nil
    end

    it "returns nil when either of its arguments are non-numeric" do
      @calculator.product(1, "99").should be_nil
      @calculator.product(:one, 5.99).should be_nil
      @calculator.product("two", :seventy_seven).should be_nil
      @calculator.product(1, nil).should be_nil
    end

    it "returns nil when its single argument is nil" do
      @calculator.product(nil).should be_nil
    end

    it "returns nil when its argument is not an array" do
      @calculator.product(:not_an_array).should be_nil
      @calculator.product("also not an array").should be_nil
    end

    it "returns nil when its argument is a non-numeric array" do
      @calculator.product(["alpha", "bravo", "charlie"]).should be_nil
      @calculator.product([1, "two", 3, 4]).should be_nil
    end

    it "returns 1 when the array of numbers is empty" do
      @calculator.product([]).should == 1
    end

    it "returns the single value when the array contains only one number" do
      @calculator.product([3]).should == 3
      @calculator.product([2001]).should == 2001
      @calculator.product([-333]).should == (-333)
      @calculator.product([13.13]).should == 13.13
    end

    it "multiplies an array of numbers" do
      @calculator.product([2, 5]).should == 10
      @calculator.product([15, -13, 2]).should == (-390)
      @calculator.product([6, 2.5, -3, 6.1]).should == (-274.5)
      @calculator.product([-11, 16, -0.25, 3, 1.5]).should == 198
    end

    it "maintains distributive consistency" do
      a = [1, 2, 3]
      b = [-7, -8, -9]
      c = [3.14, 100.0, -5.55]
      @calculator.product(a).should == 6
      @calculator.product(b).should == (-504)
      @calculator.product(c).should == (-1742.7)
      # 6 * (-504) = (-3024)
      @calculator.product(a + b).should == (@calculator.product(a) * @calculator.product(b))
      # (-504) * (-1742.7) = 878320.8
      @calculator.product(b + c).should be_within(1.0e-8).of(@calculator.product(b) * @calculator.product(c))
      # (-1742.7) * 6 = −10456.2 
      @calculator.product(c + a).should == (@calculator.product(c) * @calculator.product(a))
      # 6 * (-504) * (-1742.7) = 5269924.8
      @calculator.product(a + b + c).should == (@calculator.product(a) * @calculator.product(b) * @calculator.product(c))

      # And because the identity is defined as 1, concatenating the empty array is the same as multiplying by 1
      d = []
      @calculator.product(a + d).should == (@calculator.product(a) * @calculator.product(d))
      @calculator.product(d + a + b + c).should == (@calculator.product(d) * @calculator.product(a) * @calculator.product(b) * @calculator.product(c))
    end
  end
  
  describe "#exp" do
    it "raises one integer to the power of another integer" do
      @calculator.exp(2, 8).should == 256
      @calculator.exp(5, 6).should == 15625
      @calculator.exp(-3, 7).should == (-2187)
      @calculator.exp(-11, 4).should == 14641
      @calculator.exp(-35, 1).should == (-35)
      @calculator.exp(77, 0).should == 1
      @calculator.exp(1, 99).should == 1
    end

    it "raises an integer to a negative integer power" do
      @calculator.exp(2, -3).should == 0.125
      @calculator.exp(10, -4).should == 0.0001
      @calculator.exp(-5, -3).should == (-0.008)
      @calculator.exp(8, -1).should == 0.125
      @calculator.exp(1, -33).should == 1
    end

    it "raises a float to the power of an integer" do
      @calculator.exp(2.2, 3).should be_within(1.0e-8).of(10.648)
      @calculator.exp(5.5, 4).should == 915.0625
      @calculator.exp(-0.25, -2).should == 16
      @calculator.exp(-6.3, -5).should be_within(1.0e-9).of(-0.000100762)
      @calculator.exp(3.77, 0).should == 1
      @calculator.exp(8.225, 1).should == 8.225
    end

    it "returns nil if we don't have a number raised to an integer" do
      @calculator.exp(5, 3.5).should be_nil
      @calculator.exp(9.9, nil).should be_nil
      @calculator.exp(nil, 5).should be_nil
      @calculator.exp("fish", "wanda").should be_nil
      @calculator.exp([:a, :b, :c], 3).should be_nil
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

    it "computes the factorial of 0" do
      @calculator.factorial(2).should == 2
    end

    it "computes the factorial of 5" do
      @calculator.factorial(5).should == 120
    end

    it "computes the factorial of 10" do
      @calculator.factorial(10).should == 3628800
    end

    it "does nothing for non-numeric values" do
      @calculator.factorial(nil).should be_nil
      @calculator.factorial("word").should be_nil
      @calculator.factorial([1, 2, 3]).should be_nil
    end

    it "does nothing for non-integer values" do
      @calculator.factorial(0.5).should be_nil
      @calculator.factorial(-3.7).should be_nil
      @calculator.factorial(9.999).should be_nil
    end

    it "does nothing for negative integer values" do
      @calculator.factorial(-1).should be_nil
      @calculator.factorial(-12).should be_nil
      @calculator.factorial(-9999).should be_nil
    end
  end

end
