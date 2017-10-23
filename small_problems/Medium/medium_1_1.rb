def rotate_array(elements)
  length = elements.size - 1
  elements[1, length] + [elements[0]]
end

#further exploration
def rotate_string(string)
  string = string.chars
  rotate_array(string).join
end

def rotate_integer(number)
  rotate_string(number.to_s).to_i
end

p rotate_string('hello')
p rotate_integer(12345)

p rotate_array([7, 3, 5, 2, 9, 1]) #== [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) #== ['b', 'c', 'a']
p rotate_array(['a']) #== ['a']

p x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true