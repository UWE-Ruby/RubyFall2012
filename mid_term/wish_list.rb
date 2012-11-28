class WishList
  include Enumerable
  attr_accessor :wishes
  def each
    @wishes.each_with_index do |w,i|
      yield "#{i+1}. #{w}"
    end
  end
end