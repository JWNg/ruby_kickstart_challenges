# Print to stdout, each element in a hash based linked list, in reverse.
# If you don't know what that is, go check out the previous problem.
#
# EXAMPLES:
# head = {:data => 1, :next => nil}
# head = {:data => 2, :next => head}
#
# print_list_in_reverse head   # >> "1\n2\n"

def print_list_in_reverse(head)
  string = ""
  string << (head[:data].to_s + "\n")
  begin
    head = head[:next] unless head[:next] == nil
    string = (head[:data].to_s + "\n") + string unless string == (head[:data].to_s + "\n")
  end until head[:next] == nil 
  print string
end

