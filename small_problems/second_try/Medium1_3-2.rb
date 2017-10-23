#input: an integer
#outut: the integer rotated the max number of times
#rules: first rotate all digits, then rotate all but first digit, then rotate all but first 2 digits, until you are down to the last number
# number of rotations = num of digits minus 1

# approach:
# find number of digits and subtract 1 to get num of rotations
# loop through num of rotations times
# - pass in number and rotations num
# - save number and subtract 1 from rotations each time
# - return number

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

# def max_rotation(number)
#   rotations = number.to_s.length - 1
#   counter = number.to_s.length
#   rotations.times do |_|
#     number = rotate_rightmost_digits(number, counter)
#     counter -= 1
#   end
#   number
# end

# alternate solution

def max_rotation(number)
  starting_num = number.to_s.length
  starting_num.downto(2) do |digits|
    number = rotate_rightmost_digits(number, digits)
  end
  number
end

# test cases:

p max_rotation(735291) #== 321579
p max_rotation(3) #== 3
p max_rotation(35) #== 53
p max_rotation(105) #== 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) #== 7_321_609_845