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

p rotate_rightmost_digits(735291, 1) #== 735291
p rotate_rightmost_digits(735291, 2) #== 735219
p rotate_rightmost_digits(735291, 3) #== 735912
p rotate_rightmost_digits(735291, 4) #== 732915
p rotate_rightmost_digits(735291, 5) #== 752913
p rotate_rightmost_digits(735291, 6) #== 352917