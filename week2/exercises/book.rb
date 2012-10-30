class Book
  attr_reader :title

  def initialize title, page_count
    @title = title
    @page_count = page_count
  end

  def page_count
    %Q[Page count is #@page_count]
  end
end
