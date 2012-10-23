Module SimonSays
  def echo(text)
    text
  end

  def shout(text)
    text.upcase
  end

  def repeat(text, repeater = 2)
    repeated_text = "#{text} " * repeater
    repeated_text.strip!
  end

  def start_of_word(word, length)
    @string = word[0,length]
  end

  def first_word(phrase)
    @word = phrase.split(' ')[0]
  end
end