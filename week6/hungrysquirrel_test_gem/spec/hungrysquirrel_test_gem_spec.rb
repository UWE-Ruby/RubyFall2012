require 'hungrysquirrel_test_gem'

describe "test_gem" do
  it "should print hello" do
    h = Hello.new
    h.should be_a Hello
  end

end
