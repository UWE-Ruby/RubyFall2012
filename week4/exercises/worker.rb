class Worker
  def self.work(n=1)
    result = nil
    n.times{result = yield}
    result
  end
end