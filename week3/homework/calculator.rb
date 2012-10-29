class Calculator
  def sum(numberArray)
    if (numberArray.count == 0)
      return 0
    end
    numberArray.inject(:+)
  end

  def multiply2numbers(firstNumber, secondNumber)
    firstNumber * secondNumber
  end

  def multiply(numberArray)
    if (numberArray.count == 0)
      return 0
    end
    numberArray.inject(:*)
  end

  def power(baseNumber, exponent)
    Array.new(exponent, baseNumber).inject(:*)
  end

  def factorial(number)
    if (number == 0)
      return 0
    end
    Math.gamma(number + 1)
  end
end