class Book
  attr_reader :title, :pages

  def initialize(title, pages)
    @title = title
    @pages = pages
  end

  def page_count
    "Page count is #{@pages}"
  end
end
