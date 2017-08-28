#easy_8_6.rb
def fizzbuzz(starting_number, ending_number)
numbers = []
  (starting_number..ending_number).each do |num|
    case 
    when num % 3 == 0 && num % 5 == 0
      numbers << "FizzBuzz"
    when num % 3 == 0
      numbers << "Fizz"
    when num % 5 == 0 
      numbers << "Buzz"
    else
      numbers << num
    end
  end 
  puts numbers.join(", ")
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
