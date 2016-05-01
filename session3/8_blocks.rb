# This problem is based off of example 2
# Modify it so that it also tracks a person's age and a quote
# Allow any of these to be set with a hash as well, but the block should overwrite the hash
#
#
# EXAMPLE:
#
# artist = Person.new :name => 'Prince' do |person|
#   person.age   = 47
#   person.quote = "Why don't you purify yourself in the waters of Lake Minnetonka?"
# end
#
# artist.name   # => "Prince"
# artist.age    # => 47
#
# artist.name = 'The Artist Formarly Known As Prince'
# artist.age  = 1999
#
# artist.name   # => "The Artist Formarly Known As Prince"
# artist.age    # => 1999
#
# artist.reinit
#
# artist.name   # => "The Artist Formarly Known As Prince"
# artist.age    # => 47


class Person
  attr_accessor :name, :initializer, :age, :quote

  def initialize(*hash, &initializer)
    @name = hash[0][:name] unless nil
    @age = hash[0][:age] unless nil
    @quote = hash[0][:quote] unless nil
    @initializer = initializer
    initializer.call self unless initializer == nil
  end

  def reinit
    @initializer.call self
  end
end

#@artist = Person.new :name => 'Prince' do |person|
#  person.age    =  47
#  person.quote  =  "Why don't you purify yourself in the waters of Lake Minnetonka?"
#end
#
#
#age = Person.new(:age => 27).age
#p age

# artist = Person.new :name => 'Prince' do |person|
#   person.age   = 47
#   person.quote = "Why don't you purify yourself in the waters of Lake Minnetonka?"
# end
#
#p artist.name   
#p artist.age    
#
#p artist.name = 'The Artist Formarly Known As Prince'
#p artist.age  = 1999
#
#p artist.name   # => "The Artist Formarly Known As Prince"
#p artist.age    # => 1999
#
# artist.reinit
#
#p artist.name   # => "The Artist Formarly Known As Prince"
#p artist.age 
