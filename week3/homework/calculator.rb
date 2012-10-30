class Calculator

  # Initializes the calculator.
  def initialize
  end

  # Returns the sum of the given numbers or an array of numbers.
  def sum(*arr)
    arr.flatten!

    arr.each{ |n| raise ArgumentError, "arguments must be of type Number or an 
      Array of variables all of type Numeric" unless n.is_a? Numeric }

    if arr.length > 0
      arr.inject(:+)
    else
      0
    end
  end

  # Returns the product of the given numbers or an array of numbers.
  def product(*arr)
    arr.flatten!

    arr.each{ |n| raise ArgumentError, "arguments must be of type Numeric or an 
      Array of variables all of type Numeric" unless n.is_a? Numeric }

    arr.inject(:+)
  end

  # Returns the result of the base number raised to the power of the exponent number.
  def pow(base, exponent)
    raise ArgumentError, "base must be of type Numeric" unless base.is_a? Numeric
    raise ArgumentError, "exponent must be of type Numeric" unless exponent.is_a? Numeric

    base ** exponent
  end

  # Returns the factorial of the specified number.
  def factorial(num)
    raise ArgumentError, "argument must be a non-negative integer" if !(num.is_a? Integer) || num < 0

    if num == 0
      1
    else
      num * factorial(num - 1)
    end
  end
end
