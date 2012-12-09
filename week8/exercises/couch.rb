class Couch
	def initialize(pillows, cushions)
		@pillows = pillows
		@cushions = cushions
	end


	[:pillows, :cushions].each do |s|
		define_method("how_many_#{s}") do
			instance_variable_get("@#{s}").count
		end
		puts "#{self}"
		define_method("#{s}_colors") do
			instance_variable_get("@#{s}").join(' ')
		end
	end

	def to_str
		"I am a Couch"
	end

	def respond_to?(meth)
		true
	end

	def method_missing(meth, *args, &block)
		puts "You called #{meth} with #{args.join(' ')}"
		puts "#{self}"
		self.class.class_eval do
			define_method(meth) do
				puts "hi"
			end
		end

		self.send(meth)
	end
end
