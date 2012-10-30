class Calculator
  def sum(arr)
    arr.inject(0, :+)
  end

  def *(arr)
    arr.inject(1, :*)
  end

  def exp(num, power)
    Integer(num)
    Integer(power)
    num** power
  end

  def factorial(num)
    Integer(num)
    num.downto(1).inject(1, :*)
  end
end
