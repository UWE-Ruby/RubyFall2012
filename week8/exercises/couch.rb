class Couch
	def initialize(pillows, cushions)
		@pillows = pillows
		@cushions = cushions
	end

	# def add_colors(pillow_c, cushion_c)
	# 	@pc = pillow_c
	# 	@cc = cushion_c
	# end

	# def pillow_colors
	# 	@pillows.join(", ")
	# end

	# def cushion_colors
	# 	@cushions.join(", ")
	# end

	[:pillows, :cushions].each do |s|
		define_method("how_many_#{s}") do
			instance_variable_get("@#{s}").count
		end
	end

	[:pillow, :cushion].each do |c|
		define_method("#{c}_colors") do
			puts instance_variable_get("@#{c}s").join(", ")
		end
	end

	def to_str
		"I am a couch"
	end

# don't ever do this in production code!!!z
	def respond_to?(meth)
		true
	end

	def method_missing(meth, *args, &block)
		puts "You called #{meth} with #{args.join(' ')}"
		puts "#{self}"
		self.class.class_eval do
			define_method(meth) do
				puts "hey, #{meth} isn't a method, silly goose!"
			end
		end
		super 
	end
end
