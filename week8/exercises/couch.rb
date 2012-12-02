class Couch
	def initialize(pillows, cushions)
		@pillows = pillows
		@cushions = cushions
	end

	[:pillows, :cushions].each do |s|
		define_method("how_many_#{s}") do
			instance_variable_get("@#{s}").count
    end
    define_method("#{s}".chomp() +"_colors") do
      instance_variable_get("@#{s}").join(", ")
    end
  end

  def method_missing(meth, *args, &block)
    puts "You called #{meth} with #{args.join(", ")}"
    super
  end
end
