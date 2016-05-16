# you will be given a file name
# inside the file will be a series of numbers
# find the largest number on each line
# return their sum
#
# EXAMPLE
#     file: nums.txt
#      406 217 799 116 45 651 808 780 
#      205 919 474 567 712 
#      776 170 681 86 822 9 100 540 812 
#      602 117 181 169 876 336 
#      434 165 725 187 974 48
#
# line_sums('nums.txt')   # =>   808 + 919 + 822 + 876 + 974   # =>   4399
# 808 919 9 876 974


def line_sums(file)
  container_of_max = []

  lines = IO.readlines(file)
  i = 0
  if lines[0]
    begin
      line = lines[i].split.map {|obj| obj.to_i}
      max_in_line = line.max
      #p max_in_line.class
      #p max_in_line       
      container_of_max << max_in_line
      i += 1
    end until !lines[i]
  else
    return 0
  end
  container_of_max.reduce(:+)
end

