module SimonSays
  include Enumerable
  def echo (word)
   return word
  end 
end
  def shout (word)
    return word.upcase
  end
  def repeat (word, number = 2)
   
    ((word + " ") * number).strip
    end
    
   def start_of_word (word, numofletters)
     
     word[0..numofletters-1]
   end 
   def first_word(words)
     #Array.try_convert(words)
    #Array.split
  #   words.scan(/\w+/)
     #words.scan(/\w+/) >> words[]
     word_array = words.split
     word_array[0]
   end