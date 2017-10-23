#input: an array
#output: an array where the first element of input array has been moved to the end of the array
#rules: do not modify original array. One element array stays the same

#approach:
# select first element of array
# add it to the end of a selection of the second to last elements of array
def rotate_array(array)
  array[1..-1] << array[0]
end

def rotate_string(string)
  rotate_array(string)
end

def rotate_integer(integer)
  rotate_array(integer.to_s)
end
# test cases:

p rotate_integer(1386)
p rotate_integer(385)
p rotate_integer(5)

# p rotate_string('abcdefg')
# p rotate_string('a')
# p rotate_array([7, 3, 5, 2, 9, 1]) #== [3, 5, 2, 9, 1, 7]
# p rotate_array(['a', 'b', 'c']) #== ['b', 'c', 'a']
# p rotate_array(['a']) #== ['a']

# x = [1, 2, 3, 4]
# p rotate_array(x) #== [2, 3, 4, 1]   # => true
# p x #== [1, 2, 3, 4]                 # => true