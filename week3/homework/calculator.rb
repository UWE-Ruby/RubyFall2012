class Calculator


  # chapter 4 lessons on iterators and blocks,pg 51 to 57
  # remember to return sumnum from do end block for test to pass
  def sum(array)
    sumnum = 0
    array.each do  |value|
        sumnum += value
    end
    sumnum
  end

  #chapter 4 injection page 60
  def mult(array)
    #[1, 2, 3, 4, 5].reject(&:zero?).inject(:*)
    array.reject(&:zero?).inject(:*)
  end

  #def power(intnumber,powernum)

    #array.each do |value|
      #square = value * powernum
    #end

    #square
  #end

  def factorial(range)
    if range == 0 || range ==1
      factr = 1
    else
      factrange = 1..range
      factr = factrange.to_a.inject(:*)
    end
    factr

    #factrange = 1..range
    #sum = factrange.to_a.inject(:*)
    #factrange.to_a.reject(&:zero?).inject(:*)
  end

end