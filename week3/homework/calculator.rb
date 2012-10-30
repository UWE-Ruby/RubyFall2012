class Calculator

private
  @@ADD_IDENT = 0 # Addition identity, basis for add operations
  @@MULT_IDENT = 1 # Multiplicative identity, basis for multiply operations

  # Check to see if a value is an array containing only numbers. For this test,
  # an empty array returns true, because everything in it is a number (the test
  # is vacuously true)
  def Calculator.is_numeric_array?(inArr)
    # First make sure it's an array
    result = (inArr.is_a? Array)
    # Then make sure each of its elements is numeric
    if result
      inArr.each { |item| result &= item.is_a? Numeric }
    end
    result
  end

public
  # Add an array of numbers, returning the sum. If the input is an array which
  # contains only numbers (including the empty array), it returns the sum of all
  # numbers in it. For any other input (non-arrays and non-numeric arrays), the
  # return value is nil.
  def sum(inArr)
    result = nil
    if Calculator.is_numeric_array?(inArr)
      # Start with the identity
      result = @@ADD_IDENT
      # And add each element to the current sum
      inArr.each { |numVal| result += numVal }
    end
    result
  end

  # Multiply either two numbers, or an array of numbers. Since Ruby doesn't
  # allow multiple signatures for the same method name, need to handle the
  # two cases via optional parameters and type checking. (There must be a way
  # to enforce parameter types, but we haven't seen it yet.) If the arguments
  # passed are not valid (not two separate numbers, and not a numeric array),
  # the result is nil. In the case of two numbers, we simply multiply them
  # together. In the case of a numeric array, all the numbers in it are
  # multiplied together. The empty array is considered a numeric array, and its
  # product is the multiplicative identity, 1. This is consistent with the
  # operations (0! = 1) and (x^0 = 1). It also gives distributive consistency:
  # Concatenating two arrays together and then taking the product of the result,
  # yields the same value as taking the products of two arrays, and multiplying
  # those results together.
  def product(p1, p2 = nil)
    result = nil
    # If we have two parameters, both numeric
    if ((p1.is_a? Numeric) && (p2.is_a? Numeric))
      result = p1 * p2
    # If we just one parameter and it is an array
    elsif (Calculator.is_numeric_array?(p1) && p2.nil?)
      # Start with the identity
      result = @@MULT_IDENT
      # And multiply each element by the current product
      p1.each { |numVal| result *= numVal }
    end
    result
  end

  # Raise a number to an integer power. We don't mess around with non-integral
  # powers. And we certainly don't try to do anything with non-numerics.
  def exp(base, exp)
    result = nil
    negativeExponent = false
    counter = 0
    # Make sure base is numeric, exponent is integer
    if ((base.is_a? Numeric) && (exp.is_a? Integer))
      negativeExponent = (exp < 0)
      counter = exp.abs
      # Start with value of 1, so we're correct if exponent is zero
      result = @@MULT_IDENT
      # Repeat multiplying
      counter.times { result *= base }
      # If the exponent was negative, take the inverse of the product
      if (negativeExponent)
        result = 1.0 / result
      end
    end
    result
  end

  # Take the factorial value of a non-negative integer. If not an integer, or
  # if a negative integer, returns nil.
  def factorial(n)
    result = nil
    # Check for valid input
    if ((n.is_a? Integer) && (n >= 0))
      # Set base for multiplying
      result = @@MULT_IDENT
      # Multiply by values 1 through n
      n.times do |index|
        result *= (index + 1) # Index will be 0 through n-1, so increment
      end
    end
    result
  end
end
