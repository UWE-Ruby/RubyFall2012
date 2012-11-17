class Worker
<<<<<<< HEAD
  def self.work(n=1)
    result = nil
    n.times do 
      result = yield
    end
    result
  end
=======
	def self.work(n=1)
		n.times.inject(nil){yield}
	end
>>>>>>> 217a9fddb9c3593e5125cdc0b20bbd32afab6597
end