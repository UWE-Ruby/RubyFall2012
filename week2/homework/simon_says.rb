module SimonSays
  def echo(textToEcho)
    textToEcho
  end

  def shout(textToShout)
    textToShout.upcase
  end

  def repeat(textToRepeat, count=2)
    Array.new(count, textToRepeat + " ").inject(:+).chomp(" ")
  end

  def start_of_word(word, count)
    word[0...count]
  end

  def first_word(sentence)
    sentence.scan(/[\w']+/)[0]
  end
end

