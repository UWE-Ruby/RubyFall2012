class Converter
	def initialize(value)
		@value = value.to_f
	end

	def type=(type)
		@type = type
	end

	def convert
		self.send("#{@type}_conversion")
	end

	def Fahrenheit_conversion
		((@value - 32.0) /  1.8).round(1)
	end

	def Celsius_conversion
		((@value * 1.8) + 32).round(1)
	end
end