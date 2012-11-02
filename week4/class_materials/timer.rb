class Timer
	def self.time_code(n=1,&my_code)
		# or yield
		start_time = Time.now
		n.times { my_code.call }
		end_time = Time.now
		(end_time - start_time) / n.to_f 
#	def self.time_code(n=1)
#		start_time = Time.now
#		n.times{yield}
#		end_time = Time.now
#		(end_time - start_time) / n.to_f
	end
end
