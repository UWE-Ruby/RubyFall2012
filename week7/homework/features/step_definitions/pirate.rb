class PirateTranslator

attr_accessor :talk

	def initialize(talk)
		@talk = talk
	end

	def talk
		@talk
	end

	def translate(talk)
		@translate = "Ahoy Matey" && "Shiber Me Timbers You Scurvey Dogs!!"
		puts "#{@translate}"
	end

end