<<<<<<< HEAD
class PirateTranslator

	def initialize
		@translation_buffer = ""
	end

	def get_input(input)
		@translation_buffer = input
	end

	def translate
		case @translation
		when 'Hello Friend'
			output = 'Ahoy Matey'
		else
			output = 'Avast!'
		end
		output+'Shiber Me Timbers You Scurvey Dogs!!'
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
>>>>>>> 49855ef72d67870e69889977eb388f8994bc02f9
end