# Write a method, match_maker, which will receive an unknown number of
# elements, and return an array where every two elements are represented by true or false.
#
# The very first parameter will not be part of this set. Instead, it will tell
# you how to determine what their value should be.
# If it is true, then they will be true when they are oppositely truthy.
# If it is false, then they will be true when they are similarly truthy.
#
# Examples:
# match_maker false, true,  true                # => [true]
# match_maker true,  true,  true                # => [false]
# match_maker true,  false, false               # => [false]
# match_maker true,  false, true                # => [true]
# match_maker true,  true,  false               # => [true]
# match_maker true,  true,  true, false, true   # => [false, true]
# match_maker true,  true,  true, false, nil    # => [false, false]
# match_maker true,  true,  true, true, nil     # => [false, true]
# match_maker true,  true,  true, 0, nil        # => [false, true]

def match_maker(reference, *elements)
  i=0
  array = Array.new
  #binding.pry
  if reference && elements.size > 0
    begin
      
      if (elements[i] && elements[i+1]) || (!elements[i] && !elements[i+1]) 
        array << false
        i += 2
      else
        array << true
        i += 2
      end     

    end until i >= elements.size
  elsif !reference && elements.size > 0
    begin
      
      if (elements[i] && elements[i+1]) || (!elements[i] && !elements[i+1]) 
        array << true
        i += 2
      else
        array << false
        i += 2
      end     

    end until i >= elements.size
  end
  array
end
