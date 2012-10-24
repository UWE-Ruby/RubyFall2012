#!/usr/bin/env ruby

module SimonSays

array2 = []

    def initialize ()
      @global_array = []
      @count = 0
    end

    def echo(arg)
      arg
    end
    
    def shout(arg1)
      arg1.upcase
    end
    
    def repeat(repeat_arg, *therest)
=begin
@global_array[@count + 1] =  repeat_arg
      puts "GA: #{@global_array}"
      @count += 1 
      
      puts "count: #{@count}"
      @global_array[0..1]
     # if count == 1
        puts "GA: #{@global_array} count: #{@count}"
       # @global_array.each.to_s
    #  elsif therest == 3
        puts "GA: #{@global_array[0...5].to_s} count: #{@count}"

       # @global_array[0..2].to_
       
             #puts "1: #{repeat_arg}"
      puts "2: #{therest}"
=end
     return repeat_arg = "\"" + repeat_arg + " " + repeat_arg + "\""  # this is really clunky, there must be a better way

    end
    
    
    def start_of_word(word, num)
     #puts word[0...num]      code to visually verify my answer
     word[0...num]
    end
    
    def first_word(array2)
      #puts array2            code to visually verify my answer
      array2 = array2.split(" ")
      array2[0]
    end
  
end
