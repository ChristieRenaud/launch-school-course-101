#input: hexadecimal number string
#output: integer

#approach:
#iterate through number string. Find value for each digit or letter. Multiply by 16 to the power of its position. 
# add all values together.



HEXADECIMAL_VALUES = {"0"=>0, "1"=> 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5, "6" => 6,    
                      "7" => 7, "8" => 8, "9" => 9, "A" => 10, "B" => 11, "C" => 12, "D" => 13,
                      "E" => 14, "F" => 15}


def hexadecimal_to_integer(hex_number)
  results = 0
  hex_number.upcase.reverse.chars.each_with_index do |digit, idx|
    results += HEXADECIMAL_VALUES[digit] * (16**idx)
  end
  results
end

#text cases:
p hexadecimal_to_integer('4D9f') #== 19871