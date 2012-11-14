require 'hologem'

describe "hologem" do
  it "Should make a new Hello" do
    h = Hello.new
    h.should be_a Hello
  end

end