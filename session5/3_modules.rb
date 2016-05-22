# Write a list class. Implementation doesn't matter.
#
# list = List.new
# list << 1
# list << 5
# list << 3
# list << 4
# list << 2
# list # => #<List: 1, 5, 3, 4, 2>
#
#
# Then give it an each method that iterates over its items in the order they were inserted
# ary = []
# ff.each do |crnt|
#   ary << crnt
# end
# ary # => [1, 5, 3, 4, 2]
#
#
# Then use the Enumerable module http://ruby-doc.org/core/classes/Enumerable.html to give
# your class its methods.
# ff.max                        # => 5
# ff.min                        # => 1
# ff.select { |num| num.odd? }  # => [1, 5, 3]



class List
  include Enumerable
  def inspect
    output = "#<List: "
    @values.length == 0 ? list_values = nil : @values.each{|v| output << v.to_s + ", "}
    output.chop!.chop! if output[-2..-1] == ", "
    output << ">"
  end
  
  def initialize(*values)
    @values = values
    self
  end
  
  def <<(value)
    @values << value
    self
  end
    
  def each(&block)
    @values.each{|v| block.call(v)}
  end   
end

list = List.new
list << 1 << 5 << 3 << 4 << 2
list.inspect
