
 
def find_fibonacci_index_by_length(digit_length)
  index = 2
  fib_numbers = [1, 1]
  loop do 
    fib_numbers[index] = fib_numbers[index-1] + fib_numbers[index-2]
    return index+1 if (fib_numbers[index].to_s.length == digit_length)
    index += 1
  end
end







p find_fibonacci_index_by_length(2) #== 7
p find_fibonacci_index_by_length(10) #== 45
p find_fibonacci_index_by_length(100) #== 476
p find_fibonacci_index_by_length(1000) #== 4782
p find_fibonacci_index_by_length(10000) #== 47847