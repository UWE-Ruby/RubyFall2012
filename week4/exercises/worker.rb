class Worker
  def self.work(n=1)
    result = nil
    n.times do 
      result = yield
    end
    result
  end
end