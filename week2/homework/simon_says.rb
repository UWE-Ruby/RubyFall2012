module SimonSays

    def echo(echo_words)
      return "#{echo_words}"
    end

    def shout(shout_words)
      return shout_words.upcase
    end

    def repeat(words, time=2)
      return (words + " ") * (time - 1) + words
    end

    def start_of_word(word, characters)
      return word[0..characters-1]
    end

    def first_word(multi_words)
      return multi_words.split[0]
    end
end




# bob = SimonSays.new

# bob.echo("tim")

# bob.shout("mike")

# bob.repeat("fat", 2)

# bob.start_of_word("jacobi", 2)

# bob.first_word("Hello world whats goin on?")


# def repeat2(thing)
#   lambda {|n| thing * n }
# end

# p1 = repeat2("hello")
# puts p1.call(3)


    # def repeat(repeat_words, n)
    #   the_repeat = (repeat_words + " ") * n
    #   return the_repeat.chomp
    # end