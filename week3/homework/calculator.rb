class Calculator
  def initialize()
  end

  def sum(a)
    # renee // array.inject(0){|sum, x| sum +x}
  	a = [0] if a.empty?
    a.inject(:+)
  end

  def multiplies(a,b)
    # renee - works for both "multiplies" tests // numbers.flatten.inject(:+)
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
    # renee1 (1..p).to_a.inject(1){|r,v| r *= base}
    # renee2 pow_fac(base, p)
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

    # renee1 (1..n).to_a.inject(1){|f,v| f *= v}
    # renne2 pow_fac(n)
  end
end

=begin // method used by renee's pow_fac
private
	def pow_fac(base=nil, p)
		(1..p).to_a.inject(1){|f,v| f *= base || v}
	end	
end
=end
