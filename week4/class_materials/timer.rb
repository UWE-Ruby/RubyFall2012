class Timer
<<<<<<< HEAD

=======
>>>>>>> f86ef48f01b2f530487a4fe320074634b7040078
	def self.time_code(n=1)
		start_time = Time.now
		n.times{yield}
		end_time = Time.now
<<<<<<< HEAD

		end_time - start_time
	end


end
=======
		(end_time - start_time) / n.to_f
	end
end
>>>>>>> f86ef48f01b2f530487a4fe320074634b7040078
