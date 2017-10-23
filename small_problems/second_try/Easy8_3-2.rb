#input: a string
#output: an array of the list of all substrings that start at the beginning of the original string.
# Arranged from shortest to longest substring

# Approach:
# loop over string string length times
# First loop slice first letter and save to array
# Second loop slice first 2 letters and save to array
# ... through all iterations
# sort and return array

# def substrings_at_start(string)
#   strings_array = []
#   1.upto(string.length) do |idx|
#     strings_array << string[0, idx]
#   end
#   strings_array.sort_by { |string| string.length }
# end

def substrings_at_start(string)
  strings_array = (1..(string.length)).map { |idx| string[0, idx] }
  strings_array.sort_by { |string| string.length }
end

# test cases:
p substrings_at_start('abc') #== ['a', 'ab', 'abc']
p substrings_at_start('a') #== ['a']
p substrings_at_start('xyzzy') #== ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']