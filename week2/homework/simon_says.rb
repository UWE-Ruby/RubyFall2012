module SimonSays
  def echo(input)
    input
  end
  
  def shout(input)
    input.upcase
  end
  
  def repeat(input, num_of_repeats = 2)
    ((input + " ") * num_of_repeats).strip
  end
  
  def start_of_word(input, num_of_characters = 1)
    input[0...num_of_characters]
  end
  
  def first_word(input)
    input.split[0]
  end
end

