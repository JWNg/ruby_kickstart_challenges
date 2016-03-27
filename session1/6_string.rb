# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#
# odds_and_evens("abcdefg",true)    # => "bdf"
# odds_and_evens("abcdefg",false)   # => "aceg"

def odds_and_evens(string, return_odds)
  new_string = String.new
  i = 0
  if return_odds == true
    i = 1
    while i<string.length
      new_string << string[i]
      i += 2
    end
  else
    while i<string.length
      new_string << string[i]
      i +=2
    end
  end
  new_string
end
