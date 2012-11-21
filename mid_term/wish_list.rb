class WishList
  include Enumerable
  attr_accessor :wishes
  
  def each
    @wishes.each_with_index {|e, index| yield "#{index + 1}. #{e}"}
  end
end
