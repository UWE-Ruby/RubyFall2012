class PirateTranslator 
	def phrase=(value)
		@phrase = value
	end
	def translate
		translated = @phrase.gsub(/Hello/, 'Ahoy').gsub(/Friend/, 'Matey')
		return "#{translated}\nShiber Me Timbers You Scurvey Dogs!!"
	end
end