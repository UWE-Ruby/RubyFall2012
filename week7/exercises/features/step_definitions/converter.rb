class Converter
<<<<<<< HEAD

	def initialize(unit)
		@unit = unit.to_f
=======
	def initialize(value)
		@value = value.to_f
>>>>>>> 7a51db287e3acee6bc9678f2d9531ecd3e8bc7c4
	end

	def type=(type)
		@type = type
	end

	def convert
<<<<<<< HEAD
		self.send("#{@type}_conversion")
	end

	def Celsius_conversion
	    (@unit *  (9.0/5.0) + 32.0).round(1)	
	end

	def Fahrenheit_conversion
		(@unit  - 32.0 * (5.0/9.0)).round(1)
	end
end
=======
		self.send("#{@type}_convertion")
	end

	def Fahrenheit_convertion
		(((@value - 32.0) /5.0) * 9.0).round(1)
	end
end
>>>>>>> 7a51db287e3acee6bc9678f2d9531ecd3e8bc7c4
