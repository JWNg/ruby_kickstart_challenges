# Given an object, return the name of its longest method
# o = Object.new
# def o.this_is_a_really_really_really_really_really_long_method_name
# end
#
# longest_method o # => :this_is_a_really_really_really_really_really_long_method_name

def longest_method(obj)
  sorted_method_lengths = obj.methods.sort_by {|method_name| method_name.length}
  p sorted_method_lengths[-1]
end

#o = Object.new
#def o.this_is_a_really_really_really_really_really_long_method_name
#end
#longest_method o # => :this_is_a_really_really_really_really_really_long_method_name
