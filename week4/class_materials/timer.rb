class Timer
  def self.time_code(n=1)  #this is a class method
    start_time = Time.now
    #my_code.call
    n.times{yield}
    end_time = Time.now
    (end_time - start_time) / n.to_f
  end
end