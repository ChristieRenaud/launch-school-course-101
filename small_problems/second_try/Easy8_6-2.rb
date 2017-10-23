#input: two arguments, the starting number and ending number
#output: print out all numbers between 2 numbers, except 'Fizz' if num is divisible by 3, "buzz" if divisible by 5, and 
#"FizzBuzz" if divisible by both

#approach:
# Iterate through range of numbers
# Check if divisible by 3 and 5, print out FizzBuzz
# Check if divisible by 3, print out Fizz
#  Check if divisible by 5, print out Buzz
# If not, print out number

def fizzbuzz(start_number, end_number)
  results_array = []
  (start_number..end_number).each do |num|
    if num % 3 == 0 and num % 5 == 0
      results_array << "FizzBuzz"
    elsif num % 3 == 0
      results_array << "Fizz"
    elsif num % 5 == 0
      results_array << "Buzz"
    else
      results_array << num
    end
  end
  results_array.join(', ')
end

# test cases:
p fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz