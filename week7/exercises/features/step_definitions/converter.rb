class Converter
<<<<<<< HEAD
	
	def initialize (value)
=======
	def initialize(value)
>>>>>>> 7a51db287e3acee6bc9678f2d9531ecd3e8bc7c4
		@value = value.to_f
	end

	def type=(type)
		@type = type
	end

	def convert
		self.send("#{@type}_convertion")
	end

	def Fahrenheit_convertion
<<<<<<< HEAD
		((@value - 32) / 1.8).round(1)
	end

end
=======
		(((@value - 32.0) /5.0) * 9.0).round(1)
	end
end
>>>>>>> 7a51db287e3acee6bc9678f2d9531ecd3e8bc7c4
