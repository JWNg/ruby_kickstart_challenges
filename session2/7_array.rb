# Given a sentence, return an array containing every other word.
# Punctuation is not part of the word unless it is a contraction.
# In order to not have to write an actual language parser, there won't be any punctuation too complex.
# There will be no "'" that is not part of a contraction.
# Assume each of these  charactsrs are not to be considered: ! @ $ # % ^ & * ( ) - = _ + [ ] : ; , . / < > ? \ |
# 
# Examples
# alternate_words("Lorem ipsum dolor sit amet.")  # => ["Lorem", "dolor", "amet"]
# alternate_words("Can't we all get along?")      # => ["Can't", "all", "along"]
# alternate_words("Elementary, my dear Watson!")  # => ["Elementary", "dear"]

def alternate_words(string)
  array = string.gsub(/[\.|?|,|;|(|)]/i, '').gsub(/[-]/, ' ').split(/ +|--/)
  
  odd = Array.new
  for i in 0..array.length-1
    odd << array[i] unless i.odd?
  end
  odd
end
string = "I could have made money this way, and perhaps amused myself writing code. But I knew that at the end of my career, I would look back on years of building walls to divide people, and feel I had spent my life making the world a worse place."

alternate_words(string)                         # => ["I", "have", "money", "way", "perhaps", "myself", "code", "I", "that", "the", "of", "career", "would", "back", "years", "building", "to", "people", "feel", "had", "my", "making", "world", "worse"]
alternate_words("Lorem ipsum dolor sit amet.")  # => ["Lorem", "dolor", "amet"]
alternate_words("Can't we all get along?")      # => ["Can't", "all", "along"]
alternate_words("Elementary, my dear Watson!")  # => ["Elementary", "dear"]

