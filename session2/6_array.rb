# Write a method named prime_chars? which takes array of strings
# and returns true if the sum of the characters is prime. 
# 
# Remember that a number is prime if the only integers that can divide it with no remainder are 1 and itself. 
# 
# Examples of length three
# prime_chars? ['abc']            # => true
# prime_chars? ['a', 'bc']        # => true
# prime_chars? ['ab', 'c']        # => true
# prime_chars? ['a', 'b', 'c']    # => true
# 
# Examples of length four
# prime_chars? ['abcd']           # => false
# prime_chars? ['ab', 'cd']       # => false
# prime_chars? ['a', 'bcd']       # => false
# prime_chars? ['a', 'b', 'cd']   # => false


def prime_chars?(strings)
  return false if strings == [] || strings == [''] 
  new_string = String.new
  strings.each do |word|
    new_string << word
  end 
  length = new_string.length
  return false if length== 1
  return true if length == 2
  for i in 2..(length-1) 
    if length % i == 0
      return false
    else 
      next
    end
  end
  return true
end


prime_chars? ['a'] # => false
prime_chars? [''] # => false
prime_chars? ['ab'] # => true
 prime_chars? ['abc']            # => true
 prime_chars? ['a', 'bc']        # => true
 prime_chars? ['ab', 'c']        # => true
 prime_chars? ['a', 'b', 'c']    # => true
 
# Examples of length four # ~> NameError: undefined local variable or method `four' for main:Object
 prime_chars? ['abcd']           # => false
 prime_chars? ['ab', 'cd']       # => false
 prime_chars? ['a', 'bcd']       # => false
 prime_chars? ['a', 'b', 'cd']   # => false

