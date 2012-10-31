class Calculator

  def sum(array)
    sum = 0
    array.each do |value|
      sum += value
    end
    sum
  end

  def mult(array)
    array.reject(&:zero?).inject(:*)
  end

  ### Have Questions on this one
  def power (base, p)
  #(1..p).to_a.inject(1){|r,v| r *= base}
    pow = 1
    if base == 0
      pow = 0
    else
      p.times do
        pow *= base
      end
      pow
    end
  end

  def factorial(range)
    if range == 0 || range ==1
      factr =1
    else
      factrrange = 1..range
      factr = factrrange.to_a.inject(:*)
    end
    factr

  end

end