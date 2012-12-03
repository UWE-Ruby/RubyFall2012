class Couch
	def initialize(pillows, cushions)
		@pillows = pillows
		@cushions = cushions
	end

	[:pillows, :cushions].each do |s|
		define_method("how_many_#{s}") do
			instance_variable_get("@#{s}").count
		end
		define_method("#{s}_colors") do
			instance_variable_get("@#{s}").join(' ')
		end
	end

	def to_str
		"i am a couch"
	end
	def method_missing(meth, *args, &block)
		puts "You called #{meth} with #{args.join(' ')}"
		define_method(meth) do 
			puts "hello world"
		end
		super
	end
end