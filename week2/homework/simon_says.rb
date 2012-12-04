module SimonSays

  def echo str
    str.to_s
  end

  def shout str
    str.to_s.upcase
  end

  def repeat str, repeats = 2
    ((str.to_s.strip + ' ') * repeats).rstrip
  end

  def start_of_word word, length = 1
    word[0..(length.to_i - 1)]
  end

  def first_word sentence
    matches = sentence.to_s.match /(^\w*)(.*)/
    matches[1]
  end
end
