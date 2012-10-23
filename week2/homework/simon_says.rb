module SimonSays
  # echo("hello") => "hello"
  # echo("bye")   => "bye"
  # echo("foo")   => "foo"
  def echo(greeting)
    greeting
  end

  def shout(yelling)
    yelling.upcase
  end

  def repeat(string, number=2)
    ((string + " ")*number).strip
  end

  def start_of_word(string, num_letters)
    string[0, num_letters]
  end

  def first_word(string)
    string.split.first
  end
end


