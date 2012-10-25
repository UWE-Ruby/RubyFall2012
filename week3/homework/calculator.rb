class Calculator

  def sum(*num)
    num.map {|n| n.inject(0,:+)}.first
  end

  def multiply(num1, num2=1)
    return num1 * num2 if num1.class == Fixnum
    num1.inject(:*)
  end

  def power(num1, num2)
    num1 ** num2
  end

  def factorial(num)
    (1..num).inject(1,:*)
  end

end
