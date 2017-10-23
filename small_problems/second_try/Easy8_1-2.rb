#Easy8_1-2.rb

#input: an array of numbers
#output: the sum of the sums of each leading subsequence for that array

#Approach
# loop through array number of times of array length
# Take first mumber, add it to an accumulator variable
# Take first 2 numbers, add to variable
# Take first 3 numbers, add to variable
# .. until all iterations are complete
# return variable

# def sum_of_sums(array)
#   sum = 0
#   counter = 1
#   while counter <= array.size
#     array[0, counter].each { |num| sum += num } 
#     counter += 1
#   end
#   sum
# end

def sum_of_sums(array)
  multiplier = array.length
  sum = 0
  array.each do |num|
    sum += num * multiplier
    multiplier -= 1
  end
  sum
end

# test cases:
p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35