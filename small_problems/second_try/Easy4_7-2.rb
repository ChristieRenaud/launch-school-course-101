#input: string of digits
#output: integer

#approach:
#iterate through the string, comparing each number to a lookup table in the form of a hash
#replace each string with the corresponding number, multiplying by 10 each round, and them adding them together

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
#test cases
p string_to_integer('4321') #== 4321
p string_to_integer('570') #== 570