module SimonSays

  # Echos back the given string.
  def echo(str)
    str
  end

  # Returns the given string in uppercase.
  def shout(str)
    str.upcase
  end

  # Repeats string a given number of times.
  def repeat(str, count = 2)
    raise ArgumentError, "count must be a positive integer" if !(count.is_a? Integer) || count < 1

    (1..count).collect{ str }.join(' ')
  end

  # Returns the portion of a word from the beginning of the word to the specified position.
  def start_of_word(word, position)
    raise ArgumentError, "position must be an integer" if !position.is_a? Integer
    raise ArgumentError, "no character at position #{position} in word" unless position.between?(1, word.length)

    word[0..(position - 1)]
  end

  # Returns the first word in a string.
  def first_word(str)
    str.split(' ')[0]
  end
end
