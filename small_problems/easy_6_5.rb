def reverse(array)
array2 = array.dup
reverse_array = []
counter = 0
loop do
 break if counter >= array.size
 reverse_array << array2.pop
 counter += 1
end
reverse_array
end

###alternate solutions
def reverse(array)
  reverse_array = []
  array.reverse_each { |elem| reverse_array << elem }
  reverse_array
end

def reverse(array)
  array.inject([]) { |reverse_array, elem| reverse_array.unshift(elem) }
end



p reverse([1,2,3,4]) #== [4,3,2,1]          # => true
p reverse(%w(a b c d e)) == %w(e d c b a)  # => true
p reverse(['abc']) #== ['abc']              # => true
p reverse([]) #== []                        # => true

list = [1, 2, 3]                      # => [1, 2, 3]
p new_list = reverse(list)              # => [3, 2, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 2, 3]                     # => true
p new_list == [3, 2, 1]                 # => true