#Easy7_7-2.rb

#input: Array of integers
#output: Prints the result of multiplying all the numbers together, dividing by no. of entries, rounded to 3 decimal places

#Approach:
#Iterate through the array and multiply all integers together
# Divide the result by the size of the array
# Round to 3 decimal points
# Print out the result

def show_multiplicative_average(array)
  result = array.inject(:*)/array.size.to_f
  puts "The result is #{format("%5.3f", result)}"
end

# test cases:
show_multiplicative_average([3, 5])
#The result is 7.500

show_multiplicative_average([6])
#The result is 6.000

show_multiplicative_average([2, 5, 7, 11, 13, 17])
#The result is 28361.667