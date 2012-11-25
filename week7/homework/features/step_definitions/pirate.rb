class Pirate
    
  def translate
    if @phrase == 'Hello Friend'
      @result = "Ahoy Matey"
    end
  end
  
  def additionalPhrase
    "Shiber Me Timbers You Scurvey Dogs!!"
  end
  
  def phrase(say)
    @phrase = say
  end
  
end