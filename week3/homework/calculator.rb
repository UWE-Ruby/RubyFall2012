class Calculator
  def sum(num_array)
    num_array.inject(0) do |total, value|
      total + value
    end
  end
  
  def mult(x, y)
    x*y
  end
  
  def multa(num_array)
    num_array.inject(1) do |total, value|
      total * value
    end
  end
  
  def raiseby(x,y)
    x**y
  end
  
  def factorial(x)
    (1..x).inject(1) do |total, value|
      total*value
    end
  end
end

