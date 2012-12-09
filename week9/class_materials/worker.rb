class Worker
	def self.work
		start_time = Time.now
		yield
		Time.now - start_time
	end
end