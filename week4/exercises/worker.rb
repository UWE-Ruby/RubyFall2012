class Worker
 	def self.work(n=1)
 		# result = nil
 		# n.times do
 		# 	result = yield
 		# end
 		# 
 		# n.times.inject(nil) {|result, v| yield }
 		n.times.inject(nil){yield}
 	end
end