#Easy6_5-2.rb
#input: an array
#output: a new array with original array elements in reverse order

#approach
# initialize a new results array
# iterate from array.size downto 0
# save elem at each array position to results array

# def reverse(array)
#   results = []
#   (array.size-1).downto(0) do |num|
#     results << array[num]
#   end
#   results
# end

# # further exploration

# def reverse(array)
#   array.each_with_object([]) do |elem, results|
#     results.unshift(elem)
#   end
# end
require 'pry'
def reverse(array)
  results = array.inject do |memo, elem|
    binding.pry
    new_array.unshift(elem)
    
  end
end
#test cases:
p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b c d e)) == %w(e d c b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 2, 3]                      # => [1, 2, 3]
p new_list = reverse(list)              # => [3, 2, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 2, 3]                     # => true
p new_list == [3, 2, 1]                 # => true