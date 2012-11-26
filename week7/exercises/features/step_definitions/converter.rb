class Converter

	def initialize(value)
		@value = value.to_f #the "to_f" onverts number to float instead of a string
	end

	def type=(type)
		@type = type
	end

	def convert
		self.send("#{@type}_convertion")
	end

	def Celsius_convertion
	    (@unit *  (9.0/5.0) + 32.0).round(1)	
	end

	def Farenheit_convertion
		((@value - 32.0  * (5.0/9.0))).round(1)	
	end

end