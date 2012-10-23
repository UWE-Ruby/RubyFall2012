module SimonSays

  def echo(greeting)
    return greeting
  end

  def shout(greeting)
    return greeting.upcase
  end

  def repeat(greeting, time=2)
    return (greeting + " ") * (time - 1) + greeting 
  end

  def start_of_word(word, letter)
    return word[0..letter-1]
  end

  def first_word(first_word)
    return first_word.split[0]
  end

end

