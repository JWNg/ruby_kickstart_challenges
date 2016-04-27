# Write first_pos, a method which takes a string and , returns a hash
# whose keys are all the words in the string, and values are the
# earliest position they were seen in the string.
#
# There will be no punctuation in the strings.
#
# first_pos "The dog and the cat and the cow" # => {"The" => 0, "dog" => 1, "and" => 2, "the" => 3, "cat" => 4, "cow" => 7}


#def first_pos(string)
#  array_of_string = string.split
#  word_position_hash = Hash.new
#  i = 0
#  begin
#    if word_position_hash[array_of_string[i]].class == Fixnum
#      i += 1
#    else
#      word_position_hash[array_of_string[i]] = i
#      i += 1
#    end
#  end until i == array_of_string.size 
#  word_position_hash
#end


def first_pos(string)
  array_of_string = string.split
  word_position_hash = Hash.new
  array_of_string.each do|word|
    word_position_hash[word] = array_of_string.index(word)
  end
  word_position_hash  
end

p first_pos("The dog and the cat and the cow")
