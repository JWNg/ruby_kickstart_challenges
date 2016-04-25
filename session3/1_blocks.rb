# Write a method, reverse_map, which invokes a block on each of the elements in reverse order,
# and returns an array of their results.
#
# reverse_map(1, 2, 3) { |i| i * 2 }      # => [6, 4, 2]

def reverse_map(*arguments)
  return_array = []
  duplicate_input = arguments
  begin
    return_array << yield(duplicate_input.pop) unless duplicate_input.size == 0   
  end until duplicate_input == []  
  
  return_array
end

