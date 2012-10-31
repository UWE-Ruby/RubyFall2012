class Calculator
  
  def sum(input)
    output = 0
    input.each { |element| output += element }
    output
  end
  
  def multiply(input)
    output = 1 #since multiplying by zero always equals zero
    input.each { |element| output = output * element }
    output
  end
  
  def toThePowerOf(input, exponent)
    input **= exponent
  end
  
  def factorial(input)
    output = 1
    for i in 1..input do
      output *= i
    end
    output
  end
end