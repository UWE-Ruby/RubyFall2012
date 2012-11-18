class Converter

	def initialize(unit)
		@unit = unit
	end

	def type=(type)
		@type = type
	end

	def convert
		self.send("#{@type}_convertion")
	end

	def Celsius_convertion
		32
	end
end
