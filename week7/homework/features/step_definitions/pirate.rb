<<<<<<< HEAD
class Pirate
	attr_accessor :phrase
	
	def initialize()
		@phrase = ""
	end
	
	def translate
		"Ahoy matey"
	end
	
	def insult
		"Shiber Me Timbers You Scurvey Dogs!!"
	end

=======
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
>>>>>>> 4b2958513d06a8a3cac07f3785ec431b77644ba7
end