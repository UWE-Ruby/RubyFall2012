class Calculator
  def sum(array)
    array.inject(0,:+)
  end

  def multiply(array)
    array.inject(:*)
  end

  def factoral(number)
    numb = []
    a = 1.step(number) {|i| numb << i}
    numb.inject(1,:*)
  end

  def exponent(number_1, number_2)
    number_1**number_2
  end
end
