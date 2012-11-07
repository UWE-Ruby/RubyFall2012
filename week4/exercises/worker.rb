class Worker
	def self.work(n=1)
		num = nil
		n.times do
			num = yield			
		end
		num
	end
end