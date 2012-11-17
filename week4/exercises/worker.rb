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
>>>>>>> 4d8ccdb3a54249f560991eda7f157ec66c3516d3
end