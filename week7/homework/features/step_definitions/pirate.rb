class PirateTranslator
	def initialize (some_words)
		@some_words = some_words		
	end
	def translate
		self.send("some_words")
	end
	def some_words
		if @some_words == "Hello Friend"
			["Ahoy Matey", 'Shiber Me Timbers You Scurvey Dogs!!']
		end
	end		
end