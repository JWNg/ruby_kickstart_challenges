# Define a class called User that keeps track of a person's username
# it should receive the username when initialized
# it should have a method add_blog which accepts a date and text
# it should have a method blogs which returns an array of all blogs the user has written
# they should be in reverse chronological order (newest first)
#
# Define a class called Blog that could be used to store an entry for your web log.
# The class should have a getter and setter methods: text , date , user
# its initialize method should receive the date, user , and text
# have a method called summary that returns the first 10 words from the text (or the entire text if it is less than 10 words)
#
# Two blogs should be equal to eachother if they have the same user, date, and text
# here is a partially filled out example of how to define the == operator:
#      def ==(other)
#        return self.date == other.date
#      end



# ==========  EXAMPLE  ==========
#
# lissa = User.new 'QTSort'
# lissa.username                  # => "QTSort"
# lissa.blogs                     # => []
#
# lissa.add_blog Date.parse("2010-05-28") , "Sailor Mars is my favourite"
# lissa.blogs                     # => [ blog1 ]
#
# blog1 = lissa.blogs.first
# blog1.user                      # => lissa
#
# Blog.new Date.parse("2007-01-02"), lissa, "Going dancing!"                                    # we'll call this blog2
# Blog.new Date.parse("2006-01-02"), lissa, "For the last time, fuck facebook >.<"              # we'll call this blog3
# Blog.new Date.parse("2010-01-02"), lissa, "Got a new job, cuz I'm pretty much the best ^_^"   # we'll call this blog4
# lissa.blogs                     # => [ blog1 , blog4 , blog2 , blog3 ]
#
# blog5 = Blog.new Date.today, lissa, <<BLOG_ENTRY
# Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce orci nunc, porta non tristique eu, auctor tincidunt mauris.
# Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vitae nibh sapien. Curabitur
# eget eros bibendum justo congue auctor non at turpis. Aenean feugiat vestibulum mi ac pulvinar. Fusce ut felis justo, in
# porta lectus.
# BLOG_ENTRY
#
# blog5.get_summary   # => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce orci"
# blog5.entry         # => QTSort 2010-05-28
#                          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce orci nunc, porta non tristique eu, auctor tincidunt mauris.
#                          Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vitae nibh sapien. Curabitur
#                          eget eros bibendum justo congue auctor non at turpis. Aenean feugiat vestibulum mi ac pulvinar. Fusce ut felis justo, in
#                          porta lectus.
#
# blog5.date = Date.parse('2009-01-02')
# blog5.user = User.new 'disloyalist.party'
# blog5.text = "From the school of revision, Comes the standard inventor's rule, Books of subtle notation Compositions, all original\n" \
#              "I am a pioneer, synthetic engineer, On the brink of discovery, On the eve of historic light, Worked in secret for decades,\n" \
#              "All my labor will be lost with time"
#
# blog5.entry      # => disloyalist.party 2009-01-02
#                       From the school of revision, Comes the standard inventor's rule, Books of subtle notation Compositions, all original
#                       I am a pioneer, synthetic engineer, On the brink of discovery, On the eve of historic light, Worked in secret for decades,
#                       All my labor will be lost with time



# date docs are at: http://ruby-doc.org/core/classes/Date.html
# don't spend too much time worrying about them :)
require 'date'



class User
  attr_accessor :blogs, :username
  def initialize(username)
    @username = username
    @blogs = Array.new
  end
  # it should have a method add_blog which accepts a date and text
  def add_blog(date, text="")
    blog=Blog.new(date, self, text)
    ordered    
    blog
  end
  
  def ordered
    @blogs.sort! {|blog1, blog2| blog2.date <=> blog1.date}
  end
  
end

class Blog
  attr_accessor :text, :date, :user, :summary
  # Define a class called Blog that could be used to store an entry for your web log.
  # The class should have a getter and setter methods: text , date , user
  # its initialize method should receive the date, user , and text
  def initialize(date, user, text)
    @date = date
    @user = user
    @text = text
    @summary = get_summary
    user.blogs<<self
    user.ordered
  end
  
  # have a method called summary that returns the first 10 words from the text (or the entire text if it is less than 10 words)
  def get_summary
    array = @text.split(" ")[0..9]
    string = ""
    array.each do|word| 
      string << word
      string << " "unless word == array.last
    end
    string
  end
  
  
  def entry
    "#{self.user.username} #{self.date}\n#{self.text}"
  end 
  
  def ==(other)
    if self.date != other.date
      return false
    elsif self.user.username != other.user.username
      return false
    elsif self.text != other.text
      return false
    else 
      return true
    end
  end  
end
