module SimonSays
  def echo(greeting)
    greeting
  end
  def shout(greeting)
    greeting.upcase
  end
  def repeat(greeting, n=2)
    ("#{greeting} " * n).chop
  end
  def start_of_word(greeting,n)
    greeting[0,n]
  end
  def first_word(greeting)
    "#{greeting}".split(' ')[0]
  end
end

