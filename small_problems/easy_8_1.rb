# easy_8_1.rb
def sum_of_sums(numbers)
  result = 0
  numbers.each_with_index do |_, index|
    result += numbers.take(index + 1).inject(:+) 
  end
  result
end

p sum_of_sums([3, 5, 2]) #== (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) #== (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) #== 4
p sum_of_sums([1, 2, 3, 4, 5]) #== 35