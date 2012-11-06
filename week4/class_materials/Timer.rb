class Timer
  def self.time_code(iterations = 1)
    start_time = Time.now
    iterations.times{ yield }
    end_time = Time.now
    (end_time - start_time).to_f / iterations
  end
end
