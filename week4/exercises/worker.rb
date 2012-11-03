class Worker
<<<<<<< HEAD

	def self.work(num=1, &block)
		num.times { return block.call }
	end

end
=======
	def self.work(n=1)
		n.times.inject(nil){yield}
	end
end
>>>>>>> 9c18a234b31d38e09197996c7784b3944c89148e
