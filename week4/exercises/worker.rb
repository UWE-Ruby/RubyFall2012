class Worker
	def self.work(n=1)
	  result = nil
	  n.times do 
	    result = yield
	  end
	  result
	end

	def self.work(n=1)
	  n.times.inject(nil) {|result, v| yield }
	end
end
