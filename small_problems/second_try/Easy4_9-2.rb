#input: a positive integer or zero
#output: a string representation of the integer

#approach:
#Create a hash look-up table
#isolate each digit in integer by dividing by 10 and finding the remainder
#lookup each digit in look-up table and add number to beginning of results string

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
p integer_to_string(4321) #== '4321'
p integer_to_string(0) #== '0'
p integer_to_string(5000) #== '5000'