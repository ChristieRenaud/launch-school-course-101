#input: a string of digits, possibly with a + or - sign at the beginning
#ouput: positive or negative integer, depending on the sign of given string

#approach: check if string starts with +, if so remove, run string_to_integer and make result negative
# if it starts with a +, remove plus and run string_to_signed_integer
#if neither, run string_to_signed_integer

NUMBERS = {"0"=>0, "1"=> 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9}

def string_to_integer(string)
  integer = 0
  exponent = 0
  string.reverse.chars.each do |string_num|
    integer += NUMBERS[string_num] * (10**exponent)
    exponent += 1
  end
  integer
end

def string_to_signed_integer(string)
  case string[0]
  when '-'
    -string_to_integer(string[1..-1])
  when '+'
    string_to_integer(string[1..-1])
  else
    string_to_integer(string)
  end
end

def string_to_signed_integer(string)
  sign = 1
  sign = -1 if string[0] == '-'
  string = (string[1..-1]) if ['-', '+'].include?(string[0])
  sign * string_to_integer(string)
end


#test cases:
p string_to_signed_integer('4321') #== 4321
p string_to_signed_integer('-570') #== -570
p string_to_signed_integer('+100') #== 100