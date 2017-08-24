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

STRING_TO_HEX = { "0" => 0,
                  "1" => 1, 
                  "2" => 2,
                  "3" => 3,
                  "4" => 4,
                  "5" => 5, 
                  "6" => 6,
                  "7" => 7,
                  "8" => 8,
                  "9" => 9,
                  "A" => 10,
                  "B" => 11, 
                  "C" => 12,
                  "D" => 13,
                  "E" => 14,
                  "F" => 15 }



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

p string_to_integer('4321')
p string_to_integer('570')

def hexadecimal_to_integer(hex_num)
  digits = hex_num.chars.map { |value| STRING_TO_HEX[value.upcase] }
  value = 0
  digits.each { |num| value = 16 * value + num }
  value
end 

p hexadecimal_to_integer('4D9f') #== 19871

