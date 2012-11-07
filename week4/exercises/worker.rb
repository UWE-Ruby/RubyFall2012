class Worker

	def self.work(n=1)
		return = nil
		n.times do
			result = yield
		end
		result
	end

end