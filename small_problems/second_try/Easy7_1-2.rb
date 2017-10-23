#input: 2 arrays passed in an arguments
#output: a new array that contains all elements from both Array arguments, with the elements alternating

# Approach:
# use array.zip to combine arrays.
# flattetn the array

# def interleave(array_1, array_2)
#   array_1.zip(array_2).flatten
# end

#Alternate Approach:
# Iterate through first array
# use indexes to reference elements in the same position from both arrays
# push elements to a new array

def interleave(array_1, array_2)
  results_array = []
  array_1.each_with_index do |elem, index|
    results_array << elem << array_2[index]
  end
  results_array
end

#test cases:
p interleave([1, 2, 3], ['a', 'b', 'c']) #== [1, 'a', 2, 'b', 3, 'c']