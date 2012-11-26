class PirateTranslator

	def initialize
		@speak
	end

	def translate
		self.send("pirate_conversion")
	end

	def PirateTranslator
		puts "Ahoy Matey"
	end

end