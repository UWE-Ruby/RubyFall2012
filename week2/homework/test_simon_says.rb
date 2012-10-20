require './simon_says.rb'
require 'test/unit'

# Added since we learn it in the Pickaxe.
# Actually caught an error that rSpec didn't using this.
# Originally, SimonSays#start_of_word was 'def start_of_word(text,n=0)' which passes in rSpec.
# This failed in test/unit.  The reason is that the rspec declared the n value and test/unit doesn't.
# So bringing back n=0 would result in '' (start_of_word("word")).  This is because I declared n equal to 0 and
# not 1 in my method.  Just thought I'd share that :)

class TestSimonSays < Test::Unit::TestCase
	include SimonSays

	def test_echo_words
		assert_equal(echo("hello world"), "hello world")
	end

	def test_shout_words
		assert_equal(shout("hELLo worLd"), "HELLO WORLD")
	end

	def test_repeat_once
		assert_equal(repeat("hello"), "hello hello")
	end

	def test_repeating_n_times
		assert_equal(repeat("hello", 5), "hello hello hello hello hello")
	end

	def test_return_first_letter
		assert_equal(start_of_word("world"), "w")
	end

	def test_return_first_n_letters
		assert_equal(start_of_word("lionel richie",4), "lion")
	end

	def test_first_word
		assert_equal(first_word("dancing on the ceiling"), "dancing")
	end

end
