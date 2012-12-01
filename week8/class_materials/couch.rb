class Couch
	def initialize(pillows, cushions)
		@pillows = pillows
		@cushions = cushions
	end

	def how_many_pillows
		@pillows.count
	end

	def how_many_cushions
		@cushions.count
	end

#metaprogramming section
	[:pillows, :cushions].each do |s| #string
		define_method("how_many_#{s}") do
			instance_variable_get("@#{s}").count
				#remember the symbol!
		end
	end
end



