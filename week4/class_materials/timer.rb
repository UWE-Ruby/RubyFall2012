class Timer
<<<<<<< HEAD
  def self.time_code(&my_code)
    start_time = Time.now
    my_code.call
    end_time = Time.now
    end_time - start_time
  end
end
=======
	def self.time_code(n=1)
		start_time = Time.now
		n.times{yield}
		end_time = Time.now
		(end_time - start_time) / n.to_f
	end
end
>>>>>>> 217a9fddb9c3593e5125cdc0b20bbd32afab6597
