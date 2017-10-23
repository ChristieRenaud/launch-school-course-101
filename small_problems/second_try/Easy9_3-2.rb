#Easy9_3-2.rb

#input: an integer
#output: the negative of that number if its positive, or the original number

#Approach
# if the number is greater than zero, make negative and return
# if not, return number

def negative(num)
  num > 0 ?  -num : num
end

# test cases:
p negative(5) #== -5
p negative(-3) #== -3
p negative(0) #== 0      # There's no such thing as -0 in ruby
