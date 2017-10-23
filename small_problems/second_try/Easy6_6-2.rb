#Easy6_6-2.rb
#input: two arrays
#output: a new array that contains all the values from the 2 argument arrays. No duplicate values.

#approach 
# add arrays together and call uniq on the results array

def merge(array_1, array_2)
  results = array_1 + array_2
  results.uniq
end

#alternate solution

def merge(array_1, array_2)
  array_1.each { |value| array_2 << value if !array_2.include?(value) }
  array_2.sort
end

#test cases:
p merge([1, 3, 5], [3, 6, 9]) #== [1, 3, 5, 6, 9]