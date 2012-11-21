class Converter
	
	def initialize (value)
		@value = value.to_f
	end

	def type=(type)
		@type = type
	end

	def convert
		self.send("#{@type}_convertion")
	end

	def Fahrenheit_convertion
		((@value - 32) / 1.8).round(1)
	end

end
