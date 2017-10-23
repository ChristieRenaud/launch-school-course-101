#Easy6_3-2.rb
#input: an integer that represents the number of digits in a Fibonacci number
#output: an integer that represents the index of the first Fibnacci number with the number of digits specified in input.
#Details:
#Fib number - first two nums are 1, then each number is the sum of the previous two numbers
#First Fib number index is 1(not zero)

#approach
# loop through indexes of Fib numbers until you come to the number of digits specified
#-algorithm for creating FIb sequence
#- check the size of the digit in string form
# if it equals the input number, return the index

def find_fibonacci_index_by_length(target_index)
  index = 3
  first_num = 1
  second_num = 1
  loop do 
    fib_number = first_num + second_num
    break if target_index == fib_number.to_s.length
    index += 1
    first_num, second_num = second_num, fib_number
  end
  index
end

#Test cases
p find_fibonacci_index_by_length(2) #== 7
p find_fibonacci_index_by_length(10) #== 45
p find_fibonacci_index_by_length(100) #== 476
p find_fibonacci_index_by_length(1000) #== 4782
p find_fibonacci_index_by_length(10000) #== 47847