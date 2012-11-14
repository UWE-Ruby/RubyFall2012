class Timer

  def self.time_code(n=1)
  	start_time = Time.now
  	n.times{yield}
  	end_time - Time.now
  	(end_time - start_time) / n.to_f
  end
end

  # def self.time_code(&my_code)
  # 	# or def Timer.time_code
  # 	# if no instances methods then you might just make this a module
  # 	start_time = Time.now
  # 	my_code.call 
  # 	# or "yield"
  # 	end_time = Time.now
  # 	end_time - start_time
  # end
  # load 'timer.rb'
  # Timer.time_code {(1..10000000).to_a}

	# def self.time_code(n=1)
	# 	start_time = Time.now
	# 	n.times{yield}
	# 	end_time = Time.now
	# 	(end_time - start_time) / n.to_f
	# end
  
end

