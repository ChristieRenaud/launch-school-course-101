#Easy7_8-2.rb

#input: Two arrays that contain a list of numbers
#output: A new array that contains the product to each pair with the same index

# Approach:
# Zip lists together
# Iterate through results and map product of each array
# flatten array

def multiply_list(array_1, array_2)
  array_1.zip(array_2).map { |subarray| subarray[0] * subarray[1] }
end

# test cases:
p multiply_list([3, 5, 7], [9, 10, 11]) #== [27, 50, 77]