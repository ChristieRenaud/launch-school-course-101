def rotate_array(elements)
  length = elements.size - 1
  elements[1, length] + [elements[0]]
end

def rotate_string(string)
  string = string.chars
  rotate_array(string).join
end

def rotate_integer(number)
  rotate_string(number.to_s).to_i
end

def rotate_rightmost_digits(number, digits)
  string_number = number.to_s
  unrotated_digits = string_number.length - digits
  number_to_rotate = string_number[unrotated_digits..-1]
  rotated_number = string_number[0...unrotated_digits].to_s + rotate_string(number_to_rotate).to_s
  rotated_number.to_i
end

def max_rotation(num)
  digits = num.to_s.length
  digits.downto(2) do |idx|
    num = rotate_rightmost_digits(num, idx)
  end
  num
end


p max_rotation(735291) #== 321579
p max_rotation(3) #== 3
p max_rotation(35) #== 53
p max_rotation(105) #== 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) #== 7_321_609_845