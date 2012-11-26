class PirateTranslator
	attr_accessor :translation

	def say(phrase)
	@translation = 	case phrase
								 	when "Hello Friend"
										"Ahoy Matey"
								 	end
	end

	def translate
		@translation + " Shiber Me Timbers You Scurvey Dogs!!"
	end

end