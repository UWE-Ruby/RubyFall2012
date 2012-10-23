class Book
  attr_accessor :title, :page_count
  
  def initialize(title, page_count)
    @title = title
    @page_count = page_count
  end
  
  def page_count
    "Page count is #{@page_count}"
  end
end
