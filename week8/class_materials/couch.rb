class Couch
	def initialize(pillows, cushions, dogs)
		@pillows = pillows
		@cushions = cushions
		@dogs = dogs
	end

	#def how_many_pillows
	#	@pillows.count
	#end

	#def how_many_cushions
	#	@cushions.count
#	end
#so easy to add new parameters now! just throw some dogs on it- done.

	[:pillows, :cushions, :dogs].each do |s|
		define_method("how_many_#{s}") do
			instance_variable_get("@#{s}").count
				#don't forget @ - it's an instance variable!
		end
	end
end
