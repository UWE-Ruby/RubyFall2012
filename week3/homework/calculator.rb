
class Calculator
  include Enumerable

  def sum(array)
    array.inject(0) { |sum, item| sum+item }
  end

  def multiply(array)
    array.inject { |multiply, item| multiply*item }
  end

  def power(base, exponent)
    base**exponent
  end

  def factorial(n)
    raise ArgumentError, "you can't take the factorial of a negative number!" if n < 0

    if n <= 1
      return 1
    else
      multiply(1..n)
    end
  end
end

      
  
