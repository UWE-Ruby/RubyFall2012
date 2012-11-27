class PirateTranslator

	@translator = PirateTranslator.new()

	def translate(english)
		english.gsub(/\b\w*/) do |p|
			if p[0] +~ /H/
				"Ahoy"

			elsif p[0] +~ /F/
				"Matey"
			else 
				"Eeek!"
			end
	end		

end

end
