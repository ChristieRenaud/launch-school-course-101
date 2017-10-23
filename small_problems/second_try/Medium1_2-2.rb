#Medium1_2-2.rb

#input: an integer to rotate, and an integer n representing the number of digits to rotate
#output: an integer with n digits rotated

#approach
# change number to a string
# select last n digits of string
# pass these digits to the rotate string method
# replace original digits with rotated digits - reassign?

def rotate_array(array)
  array[1..-1] << array[0]
end

def rotate_string(string)
  rotate_array(string)
end

def rotate_integer(integer)
  rotate_array(integer.to_s)
end

def rotate_rightmost_digits(number, digits)
  number = number.to_s
  digits_to_rotate = number[-digits..-1]
  number[-digits..-1] = rotate_string(digits_to_rotate)
  number.to_i
end



# test cases:
p rotate_rightmost_digits(735291, 1) #== 735291
p rotate_rightmost_digits(735291, 2) #== 735219
p rotate_rightmost_digits(735291, 3) #== 735912
p rotate_rightmost_digits(735291, 4) #== 732915
p rotate_rightmost_digits(735291, 5) #== 752913
p rotate_rightmost_digits(735291, 6) #== 352917