module SimonSays
  def echo(str)
    str
  end
  
  def shout(str)
    str.upcase
  end
  
  def repeat(str, n=2)
    str = ((str + ' ') * n).strip
  end
  
  def start_of_word(str, n)
    str[0, n]
  end
  
  def first_word(str)
    str.split(' ').first
  end
end
