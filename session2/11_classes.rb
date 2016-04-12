# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method 
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.


class BeerSong
  attr_accessor :number
  def initialize(number)
    @number = number_limiter(number)
  end
  
  def number_limiter(number)
    if number <0
      return 0
    elsif number>99
      return 99
    else
      return number
    end
  end
  
  def bottle_plural_adjusted(number)
    number == 1 ? "bottle" : "bottles"
    
    
  end
  
  def fixnum_to_words(number)
    if number <20
      return %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)[number]
    elsif number % 10 == 0 
      tens = %w(zero ten twenty thirty forty fifty sixty seventy eighty ninety)[number/10]
    else
      "#{fixnum_to_words number/10*10}-#{fixnum_to_words number%10}".downcase.capitalize
    end
  end  
  
  def combine_lyrics_with_number(number)
    written_number = fixnum_to_words(number)
    print "#{written_number} #{bottle_plural_adjusted(number)} of beer on the wall,\n"
    print "#{written_number} #{bottle_plural_adjusted(number)} of beer,\n"
    print "Take one down, pass it around,\n"
    print "#{fixnum_to_words(number-1)} #{bottle_plural_adjusted(number-1)} of beer on the wall.\n" 
  end
  
  def print_song  
    i = @number
    begin      
      combine_lyrics_with_number(i)
      i -= 1
    end until i == 0  
  end
end
