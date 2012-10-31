class Calculator

  def sum(x)
    if x.length == 0
      return 0
    else
      x.inject(:+)
    end
    #elsif @x.length == 1
  end

  def multiply(*args)
    #n.to_a
    args.inject(:*)

    # monkey = n.to_a
    # n[0] * n[1]
    # (n.first..n.last).inject(:*)

  # def multiply(*args)
  #   monkey = args.to_a
  #   monkey.inject(:*)
  end  

  def to_power(a,b)
    a ** b
  end

  def factorial(z)
    if z == 0
      return 1
    else
      (1..z).inject(:*)
    #1.upto(z).inject(:*)
    end
  end
end