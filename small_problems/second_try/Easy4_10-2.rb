# input: positive or negative integer
# output: signed number string

#approach:
# If integer is zero, return self as a string by calling integer_to_string
# If greater than zero, add a '+' to beginning of string converson 
# If less than zero, call integer_to_string on the abs value of integer, then add a "-" to beginning

# def signed_integer_to_string(number)
#   case 
#   when number == 0
#     integer_to_string(number)
#   when number > 0
#     '+' + integer_to_string(number)
#   when number < 0
#     '-' + integer_to_string(number.abs)
#   end
# end

def signed_integer_to_string(number)
  sign = ''
  sign = '+' if number > 0
  sign = '-' if number < 0
  sign + integer_to_string(number.abs)
end



DIGITS = {0 => "0", 1 => "1", 2 => "2", 3 => "3", 4 => "4", 5 => "5",
          6 => "6", 7 => "7", 8 => "8", 9 => "9"}

def integer_to_string(number)
  string = ''
  loop do 
    results = number.divmod(10)
    string += DIGITS[results[1]]
    number = results[0]
    break if number <= 0
  end
  string.reverse
end

#test cases:

p signed_integer_to_string(4321) #== '+4321'
p signed_integer_to_string(-123) #== '-123'
p signed_integer_to_string(0) #== '0'