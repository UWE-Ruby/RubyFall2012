class Couch
	def initialize(pillows, cushions)
		@pillows = pillows
		@cushions = cushions
	end

	[:pillows, :cushions].each do |s|
		define_method("how_many_#{s}") do
			instance_variable_get("@#{s}").count
		end
	end

	[:pillows, :cushions].each do |s|
		define_method("colors_#{s}") do
			instance_variable_get("@#{s}").join(",")
		end
	end
end
