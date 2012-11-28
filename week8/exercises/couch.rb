class Couch
	def initialize(pillows, cushions)
		@pillows = pillows
		@cushions = cushions
	end

	def pillow_colors
		@pillows.join(", ")
	end

	def cushion_colors
		@cushions.join(", ")
	end

	[:pillows, :cushions].each do |s|
		define_method("how_many_#{s}") do
			instance_variable_get("@#{s}").count
		end
	end
end
