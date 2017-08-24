STRING_TO_INTEGER_HASH = {"0" => 0,
                          "1" => 1, 
                          "2" => 2,
                          "3" => 3,
                          "4" => 4,
                          "5" => 5, 
                          "6" => 6,
                          "7" => 7,
                          "8" => 8,
                          "9" => 9}

def string_to_integer(number_string)
  number_array = number_string.split('')
  number_array.map! do |num|
    STRING_TO_INTEGER_HASH[num]
  end
  integer_number = 0
  number_string.size.times do |index|
    integer_number += number_array.pop * 10**index
  end
  integer_number
end

# def string_to_signed_integer(number_string) 
#   if number_string.start_with?("-")
#     number_string.delete!("-")
#     string_to_integer(number_string) * -1
#   elsif number_string.start_with?("+")
#     number_string.delete!("+")
#     string_to_integer(number_string) 
#   else
#     string_to_integer(number_string) 
#   end
# end

def string_to_signed_integer(number_string) 
  if number_string.start_with?("-")
    -string_to_integer(number_string.delete("-"))
  elsif number_string.start_with?("+")
    string_to_integer(number_string.delete("+")) 
  else
    string_to_integer(number_string) 
  end
end

p string_to_signed_integer('4321') #== 4321
p string_to_signed_integer('-570') #== -570
p string_to_signed_integer('+100') #== 100