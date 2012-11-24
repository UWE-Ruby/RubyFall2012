<<<<<<< HEAD
#helps test run
=======
class Book
end

>>>>>>> 7a51db287e3acee6bc9678f2d9531ecd3e8bc7c4
require 'minitest/autorun'

# Unit tests
#class Book
#  def initialize
#  end
#end

class TestBook < MiniTest::Unit::TestCase
  def setup
    @book = Book.new('test', "Mr. Test", 4)
  end

  def test_that_book_can_print_pretty
    assert_equal "#{@book.title} - #{@book.author} pages: #{@book.page_count}", @book.pretty_print
  end
end

# Specs

describe Book do
  before do
    @book = Book.new
    @book.pages = ['This is page 1', 'Page 2 is this one', 'Page 3 is short', 'Page 4 is very very very long']
  end

  describe "when counting characters" do
    it "should count the characters on every page" do
      @book.characters.must_equal 29
    end
  end
end