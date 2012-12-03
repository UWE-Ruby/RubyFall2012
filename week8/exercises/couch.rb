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
<<<<<<< HEAD
		define_method("#{s.to_s.gsub('s', '')_colors}") do
			instance_variable_get("@#{s}").join("")
		end
=======
>>>>>>> 4b2958513d06a8a3cac07f3785ec431b77644ba7
	end
end
