<<<<<<< HEAD
#!/usr/bin/env ruby
class Worker
  def self.work(n=1)
      result = nil
      n.times do
         result = yield   
      end
      result
    end
end
=======
class Worker
	def self.work(n=1)
		n.times.inject(nil){yield}
	end
end
>>>>>>> 29ddcaf282428b53bc31e5d83eeb7b5374f162bb
