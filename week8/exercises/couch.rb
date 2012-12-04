class Couch
	def initialize(pillow_colors, cushion_colors)
		@pillow_colors = pillow_colors
		@cushion_colors = cushion_colors
	end

	[:pillow_colors, :cushion_colors].each do |s|
		define_method("list_#{s}") do
			instance_variable_get("@#{s}").join(", ")
		end
	end
end
