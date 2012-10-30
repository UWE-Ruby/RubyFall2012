class Calculator
  def sum(numeric_array)
    numeric_array.inject(0) {|sum,element| sum+element}
  end
  
  def multiply(a,b)
    a*b
  end
  
  def multarray(numeric_array)
    numeric_array.inject(:*)
  end
  
  def exp(a,b)
    a^b
  end
  
  def factorial(x)
    (1..x).inject(:*) || 1
  end
end