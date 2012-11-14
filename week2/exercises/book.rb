class Book
  attr_accessor :title
  def initialize(title, page_count)
    @title = title
    @page_count = page_count
  end
  def page_count
    "Page count is " + @page_count.to_s
  end
end
