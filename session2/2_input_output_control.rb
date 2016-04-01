# Prompt the user for a number, then read it in and print out "hi" that many times
# 
# Repeat this process until the user submits "bye", then say "goodbye" and end the program
# HINT: Check out example 2 if you get stuck

# example:
# PROGRAM: Enter a number
# USER:    4
# PROGRAM: hi hi hi hi
# PROGRAM: Enter a number
# USER:    2
# PROGRAM: hi hi
# PROGRAM: Enter a number
# USER:    bye
# PROGRAM: goodbye


# remember you can try your program out with              $ ruby 2_input_output_control.rb
# and when you think it is correct, you can test it with  $ rake 2:2

def hi_hi_goodbye
  i = 0
  until i == 1 do
    puts "Enter a number"
    input = gets.chomp.upcase  
    if input == "BYE"
      puts "goodbye"
      i = 1
    else
      puts "hi "* input.to_i      
    end 
  end # => 
end
