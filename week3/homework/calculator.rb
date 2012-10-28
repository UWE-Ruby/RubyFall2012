class Calculator

  def sum(num)
    num.inject(0,:+)
  end

  def multiply(num1, num2=1)
    num1.class == Fixnum ? num1*num2 : num1.inject(:*)
  end

  def power(num1, num2)
    num1 ** num2
  end

  def factorial(num)
    (1..num).inject(1,:*)
  end

end
