class Pirate
  def say(str1)
    @phrase = str1
  end
  def translate
  	@phrases = { 'Hello Friend' => 'Ahoy Matey' }
    #false if @phrase.nil?
    @result = @phrases.fetch(@phrase, "derp")
  end
  def say_result
  	@result
  end
  def end_convo
  	"Shiber Me Timbers You Scurvey Dogs!!"
  end
end
