class Couch
	def initialize(pillows, cushions)
		@pillows = pillows
		@cushions = cushions
	end

	[:pillow, :cushion].each do |s|
    define_method("#{s}_colors") do
      instance_variable_get("@#{s}s").join(', ')
    end
  end

  def to_str
    "I am a Couch"
  end

  # not safe for production code
  # def respond_to?(meth)
  #   true
  # end

  def method_missing(meth, *args, &block)
    puts "you called #{meth} with #{args.join(' ')}"
    define_method("test") do
      puts "hi"
    end
    super
  end
end
