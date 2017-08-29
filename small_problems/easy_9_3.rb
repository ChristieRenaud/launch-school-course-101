def negative(num)
  return num if num.zero? || num.negative?
  return -num
end  

#alternative solutions

def negative(number)
  number > 0 ? -number : number
end  

def negative(number)
  -number.abs
end  

p negative(5) #== -5
p negative(-3) #== -3
p negative(0) #== 0  