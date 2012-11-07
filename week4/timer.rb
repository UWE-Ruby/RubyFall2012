class Timer
	#def Timer. is an alt for .self
	#def self.time_code(&my_code)
	# this is a named vs anonymous block(this is like a lambda - namded code ie a block into a variable)
	#def self.time_code()
	#	start_time=Time.now
		#my_code.call
	#	yield
	#	end_time=Time.now
	#	end_time - start_time
	#end
	def self.time_code(n=1)
		start_time=Time.now
		n.times{yield}
		end_time=Time.now
		(end_time - start-time) / n.to_f
	end
	
end