class Pirate
	def initialize

	end

	def translate
		@phrase.gsub!("Hello", "Ahoy")
		@phrase.gsub!("Friend", "Matey")
		return "#{@phrase}\nShiber Me Timbers You Scurvey Dogs!!"
	end

	def phrase=(p)
		@phrase = p
	end

end