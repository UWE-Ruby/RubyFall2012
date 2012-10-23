module SimonSays

    # echo simply echoes the input value back
    def echo(inVal)
        inVal
    end

    # shout converts all alpha characters to uppercase
    def shout(inVal)
        inVal.upcase
    end

    # repeat repeats an input value "count" times, with spaces between. We give
    # a default value of 2 for count, since one of the tests in the spec doesn't
    # use a second parameter, and expects the input duplicated
    def repeat(inVal, count=2)
        outVal = ""
        if (count >= 1)
            count.times do
                outVal += (inVal + ' ')
            end
        end
        # get rid of the extra trailing space
        outVal.chomp(' ')
    end

    # first try at this, breaking up the word into an enumerator of characters,
    # converting the enum to an array, and then pulling the first character
    # from the array "count" times. Works, but it's the hard way.
    def first_try_start_of_word(inVal, count=1)
        outVal = ""
        if (count >= 1)
            charEnum = inVal.chars
            charArray = charEnum.to_a
            count.times do
                outVal += charArray.shift
            end
        end
        outVal
    end

    # Probably the preferred way, using the built-in string interval method
    def start_of_word(inVal, count=1)
        outVal = ""
        if (count >= 1)
            outVal = inVal[0,count]
        end
        outVal
    end

    # Split the input string on spaces, and then return the first word in
    # the resulting array
    def first_word(inVal)
        outVal = ""
        if (inVal)
            splitString = inVal.split(' ')
            outVal = splitString[0]
        end
        outVal
    end
end
