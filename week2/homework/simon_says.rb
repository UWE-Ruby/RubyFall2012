module SimonSays

  # Returns the given str.
  def echo(str)
    str
  end

  # Returns a copy of str with all lowercase letters replaced with their uppercase counterparts.
  def shout(str)
    str.upcase
  end

  # Returns a copy of str, repeated count times and separated with a single space.
  def repeat(str, count = 2)
    raise ArgumentError, "count must be a positive integer" if !(count.is_a? Integer) || count < 1

    (1..count).collect{ str }.join(' ')
  end

  # Returns the portion of word from the beginning of word to the given length.
  def start_of_word(word, length)
    raise ArgumentError, "length must be an integer greater or equal to 0" if !(length.is_a? Integer) || length < 0
    raise ArgumentError, "length is greater than the length of word" if length > word.length

    word[0, length]
  end

  # Returns a new string of the first word in str.
  def first_word(str)
    str.split(' ')[0]
  end
end
