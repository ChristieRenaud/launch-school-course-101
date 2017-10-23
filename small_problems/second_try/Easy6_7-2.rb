#Easy6_7-2.rb

#input: An array
#output: two arrays that contain the first half and second half of the original array. Middle elemnent in first array.

#approach:
#find half of array length
# Iterate through array, save all elements before half of array in first array, put half and over in second array

def halvsies(array)
  first_half = []
  second_half = []
  array.each_with_index do |elem, idx|
    if idx < (array.length/2.0).ceil
      first_half << elem
    else
      second_half << elem
    end
  end
  [first_half, second_half]
end



#test cases:
p halvsies([1, 2, 3, 4]) #== [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) #== [[1, 5, 2], [4, 3]]
p halvsies([5]) #== [[5], []]
p halvsies([]) #== [[], []]
