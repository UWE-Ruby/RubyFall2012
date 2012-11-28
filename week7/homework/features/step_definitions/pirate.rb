class PirateTranslator

	@translator = PirateTranslator.new()

	def translate(english)
		#this isn't the greatest solution, but at least it does something and offers some flexibility.
		english.sub(/Hello/, 'Ahoy')
		english.sub(/Friend/, 'Matey')
		english.sub(/w*\b/, 'Eek!')
			puts "Shiber Me Timbers You Scurvey Dogs!!"
	end	
		
#end
end
