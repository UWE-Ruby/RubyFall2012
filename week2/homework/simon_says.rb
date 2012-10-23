module SimonSays
  def echo(message)
    message
  end
  
  def shout(message)
    message.upcase
  end
  
  def repeat(message,times_repeated=2)
    a = [message]*times_repeated
    a.join(" ")
  end
  
  def start_of_word(message,char=1)
    b = message.split(//)
    b[0...char].join
  end
  
  def first_word(message)
    c = message.split(/ /).to_a
    c[0]
  end
end