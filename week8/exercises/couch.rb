

class Couch
	def initialize(pillows, cushions, cats)
		@pillows = pillows
		@cushions = cushions
		@cats = cats
	end

	def pillow_colors
		@pillows.join(", ")
	end

	def cushion_colors
		@cushions.join(", ")
	end

	[:pillows, :cushions, :cats].each do |s|
		define_method("how_many_#{s}") do
			instance_variable_get("@#{s}").count
		end
	end
end
