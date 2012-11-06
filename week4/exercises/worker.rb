class Worker
<<<<<<< HEAD

	def self.work(n=1) 
		result = nil
		
		n.times do 
			result = yield
		end

		result
		
	end
end
=======
	def self.work(n=1)
		n.times.inject(nil){yield}
	end
end
>>>>>>> f86ef48f01b2f530487a4fe320074634b7040078
