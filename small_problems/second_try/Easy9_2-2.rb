#input: and integer
# output: 2 times the number provided, or the number it is a double number

#approach:
# deternmine if a number is a double number
# - create a method that checks if number has even no of digits and digits are the same left and right side
# return num if double number, if not double and return number

def double_number?(number)
  number = number.to_s
  middle_index = number.size/2
  !!number.size.even? && number[0..middle_index-1] == number[middle_index..-1]
end

def twice(number)
  return number if double_number?(number)
  number * 2
end
# p double_number?(37)
# p double_number?(123123)

#test cases:
p twice(37) #== 74
p twice(44) #== 44
p twice(334433) #== 668866
p twice(444) #== 888
p twice(107) #== 214
p twice(103103) #== 103103
p twice(3333) #== 3333
p twice(7676) #== 7676
p twice(123_456_789_123_456_789) #== 123_456_789_123_456_789
p twice(5) #== 10