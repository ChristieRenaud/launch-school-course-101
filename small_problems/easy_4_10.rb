DIGITS = {0 => "0",
          1 => "1", 
          2 => "2",
          3 => "3",
          4 => "4",
          5 => "5", 
          6 => "6",
          7 => "7",
          8 => "8",
          9 => "9"}

def integer_to_string(number)
  string_number = ''
  loop do
    ones = number%10
    string_number.prepend(DIGITS[ones])
    number = number/10
    break if number == 0
  end
  string_number
end

def signed_integer_to_string(number)
  if number == 0
    integer_to_string(number) 
  elsif number > 0
    integer_to_string(number).prepend('+')
  else
    integer_to_string(-number).prepend('-')
  end
end  

#refactored

def signed_integer_to_string(number)
  case number <=> 0
  when -1 
    then coefficient, multiplier = "-", -1
  when +1
    then coefficient, multiplier = "+", 1
  else
    coefficient, multiplier = "", 1
  end
  coefficient + integer_to_string(number*multiplier)
end


p signed_integer_to_string(4321) #== '+4321'
p signed_integer_to_string(-123) #== '-123'
p signed_integer_to_string(0) #== '0'