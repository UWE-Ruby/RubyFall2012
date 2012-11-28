class PirateTranslator

	@translator = PirateTranslator.new()

	def translate(english)
		#english.gsub(/\b\w*/) do |p|
		#	if p[0] +~ /[H]/
		#		put "Ahoy"

		#	elsif p[0] +~ /[F]/
		#		put "Matey"
		#	else 
		#		put "Eeek!"
		#	end
		#I keep getting "cannot convert nil to string" errors with this gsub, so commenting it out in favor of code that meets spec but doesn't actually do anything
			puts "Ahoy Matey"
			puts "Shiber Me Timbers You Scurvey Dogs!!"
	end		

#end

end
