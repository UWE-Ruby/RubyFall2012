class Calculator
  def sum(numberArray)
    numberArray.count == 0 ? 0 : numberArray.inject(:+)
  end

  def multiply(*numberArray)
    numberArray.flatten().count == 0 ? 0 : numberArray.flatten().inject(:*)
  end

  def power(baseNumber, exponent)
    baseNumber**exponent
  end

  def factorial(number)
    number == 0 ? 1 : Math.gamma(number + 1)
  end
end
