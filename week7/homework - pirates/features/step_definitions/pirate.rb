class PirateTranslator 
	def phrase=(value)
		@phrase = value
	end
	def translate
		# best practice is to leave in place the original (not mutating the original string)
		translated = @phrase.gsub(/Hello/, 'Ahoy').gsub(/Friend/, 'Matey')
		return "#{translated}\nShiber Me Timbers You Scurvey Dogs!!"
	end
end