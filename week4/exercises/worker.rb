class Worker

	def self.work(num=1, &block)
		num.times { return block.call }
	end

end
