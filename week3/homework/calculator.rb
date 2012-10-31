class Calculator
  def sum(numberArray)
    numberArray.count == 0 ? 0 : numberArray.inject(:+)
  end

  def multiply2numbers(firstNumber, secondNumber)
    firstNumber * secondNumber
  end

  def multiply(numberArray)
    numberArray.count == 0 ? 0 : numberArray.inject(:*)
  end

  def power(baseNumber, exponent)
    baseNumber**exponent
  end

  def factorial(number)
    number == 0 ? 0 : Math.gamma(number + 1)
  end
end
