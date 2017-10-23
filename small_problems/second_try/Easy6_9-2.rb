# Easy6_9-2.rb
#input: An array and a search value
#output: true or false depending on if value is included in array

# approach:
# iterate through array and check if value matches any elem
# return true or false

def include?(array, value)
  array.member?(value)
end

def include?(array, value)
  return true if array.count { |elem| elem == value } > 0
else
  false
end

def include?(array, value)
  array.any? { |elem| elem == value }
end
#test cases:
p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false