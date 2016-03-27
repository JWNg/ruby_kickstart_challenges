def pirates_say_arrrrrrrrr(string)
  holder = String.new
  i = 0
  until i+1 == string.length
    holder << string[i+1] if string[i] == "r" || string[i] == "R"
    i +=1
  end
  holder
end
