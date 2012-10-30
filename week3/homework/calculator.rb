class Calculator

  def sum(operands)
    if operands.length == 0
      return 0
    else
      return operands.inject('+')
    end
  end

  def multiply(operands)
    operands.inject('*')
  end

  def raise_to_power(operands)
    operands.inject('**')
  end

  def factorial(n)
    if n.length == 1
      return 1
    else
    1.upto(n.length).inject(:*)
    end
  end

end