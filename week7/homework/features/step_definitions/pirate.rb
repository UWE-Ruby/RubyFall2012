# nikky version
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
# class answer
class PirateTranslator
	PIRATE_WORDS = {
		"Hello Friend" => "Ahoy Matey"
	}
	def say(str)
		@said = lookup_pirate(str).to_s
	end

	def translate
		@said + "\n Shiber Me Timbers You Scurvey Dogs!!"
	end

private
	def lookup_pirate(str)
		PIRATE_WORDS[str]
	end
end
