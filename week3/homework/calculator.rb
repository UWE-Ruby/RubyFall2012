class Calculator
  def initialize()
  end

  def sum(a)
  	a = [0] if a.empty?
    a.inject(:+)
  end

  def multiplies(a,b)
  	a * b
  end

  def multiplies_array(a)
  	return 0 if a.empty?
    a.inject(:*)
  end

  def raises_to_power(a=1,b=1)
  	# here's my first try (which worked)
    # total = 1
  	# for i in 1..b do
    #  total = total*a
    # end
 	  # return total

    # here's my second version (more comapct)
    a ** b
  end

  def factorial(a)
  	# my first try (which worked)
    # return 0 if a == 0
  	# total = 1
  	# for i in 1..a do
    #   total = total * i
    # end
 	  # return total

    # my second version (more compact)
    return 0 if a == 0
    a.downto(1).inject(:*)
  end
end