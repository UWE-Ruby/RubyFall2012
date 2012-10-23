module SimonSays
  def echo(message)
    message
  end

  def shout(message)
    message.upcase
  end

  def repeat(message,count = 2)
    Array.new(count, message).join(" ")
  end

  def start_of_word(word, count)
    word[0,count]
  end

  def first_word(sentence)
    sentence.split.first
  end
end
