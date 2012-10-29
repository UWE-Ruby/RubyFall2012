class Calculator

  def sum(array)
    if array.any?
      array.inject(:+)
    else
      0
    end 	  
  end

  def multiply(array)
    if array.any?
      array.inject(:*)
    else
      0
    end 
  end

  def pow(x, y)
  	x**y
  end

  def factorial(n)
    if n == 0
      1
    else
      n * factorial(n - 1)
    end
  end

end
