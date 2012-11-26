class PirateTranslator
	attr_accessor :translation

	def say(phrase)
		@translation = "Ahoy Matey"	if phrase == "Hello Friend"
	end

	def translate
		@translation + " Shiber Me Timbers You Scurvey Dogs!!"
	end

end