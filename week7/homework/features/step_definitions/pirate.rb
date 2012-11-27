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
end