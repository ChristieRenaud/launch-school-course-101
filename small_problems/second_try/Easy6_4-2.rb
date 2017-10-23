#input: An array
#output: the same array with its elements reversed

#approach
# iterate from array.size-1 downto 0
# iterate through array using map!
# assign element to array at 
# 

def reverse!(list)
  list_copy = list.dup
  counter = list.size
  list.map! do |elem|
    counter -= 1
    list_copy[counter]
  end
end

#test cases:
p list = [1,2,3,4]
p result = reverse!(list) # => [4,3,2,1]
p list #== [4, 3, 2, 1]
p list.object_id == result.object_id

p list = %w(a b c d e)
p reverse!(list) # => ["e", "d", "c", "b", "a"]
p list #== ["e", "d", "c", "b", "a"]

p list = ['abc']
p reverse!(list) # => ["abc"]
p list #== ["abc"]

p list = []
p reverse!(list) # => []
p list #== []