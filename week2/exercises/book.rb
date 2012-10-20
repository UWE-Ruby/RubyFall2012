class Book

  attr_accessor :title
  
  def initialize(title, page_count)
    @title = title
    @page_count = page_count
  end

  def title
    @title
  end

  def page_count
    @page_count
  end

  def title=(title)
    @title
  end

  def page_count=(page_count)
    @page_count
  end
end
