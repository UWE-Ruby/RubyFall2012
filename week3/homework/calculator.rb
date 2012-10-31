class Calculator
  def sum(arg1)
    return 0 if arg1==[]
    arg1.inject('+')
  end
  def times(arg1)
    arg1.inject('*')
  end
  def exponent(arg1)
    arg1.inject('**')
  end
  def factorial(arg1)
    #arg1.downto(1).inject(:*)
    (1..arg1).inject('*') || 1
    #if arg1 == 0 then arg1 == 1
     # arg1
    #[arg1...(arg1 - 1)]
    #arg1 = [arg1..1]
    #arg1[0]
    #my_array = arg1.downto(1)
    #my_array[0].times..my_array[0].times 
  end
end