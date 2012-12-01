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

#Renee's
#	PIRATE_WORDS = {
#		"Hello Friend" => "Ahoy Matey"
#	}
#	def say(str)
#		@said = lookup_pirate(str).to_s
#	end

#	def translate
#		@said + "\n Shiber Me Timbers You Scurvey Dogs!!"
#	end

#private
#	def lookup_pirate(str)
#		PIRATE_WORDS[str]
#	end
