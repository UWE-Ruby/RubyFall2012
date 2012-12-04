class Couch
<<<<<<< HEAD
	def initialize(pillow_colors, cushion_colors)
		@pillow_colors = pillow_colors
		@cushion_colors = cushion_colors
	end

	[:pillow_colors, :cushion_colors].each do |s|
		define_method("list_#{s}") do
			instance_variable_get("@#{s}").join(", ")
=======
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
>>>>>>> 4b2958513d06a8a3cac07f3785ec431b77644ba7
		end
	end
end
