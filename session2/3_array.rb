# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    if self == ""
      return self
    else
      i=0
      string = String.new
      until i == self.length 
        if i % 2 == 0
          string << self[i]
          i+= 1
        else
          i+=1
        end        
      end
      string
    end    
  end
end


puts "12".every_other_char

# >> 1
