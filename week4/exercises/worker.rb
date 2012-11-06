class Worker
    def self.work(iterations = 1)
         iterations.times.inject(nil) {|result, v| yield }
    end
end