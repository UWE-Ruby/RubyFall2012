class Worker
  def self.work(n=1)
  	result = ''
    n.times do
      result = yield
    end
    result
  end
end
