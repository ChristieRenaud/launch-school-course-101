#input: a string
#output: an array that consists of all substring of a string, ordered by where in the string the substring begins

#approach:
# loop over the string
# run substrings_at_start on the string
# then run substrings_at_start on the slice of substring starting at position 1, append to results array
# then run substrings_at_start on the slice of substring starting at position 2, append to results arra
# stop after running method on slice starting at one less than the string length
# return results array



def substrings_at_start(string)
  strings_array = (1..(string.length)).map { |idx| string[0, idx] }
  strings_array.sort_by { |string| string.length }
end

def substrings(string)
  all_substrings_array = []
  0.upto(string.length - 1) do |idx|
    all_substrings_array += substrings_at_start(string[idx..string.length - 1])
  end
  all_substrings_array
end

# test cases:
p substrings('abcde') #== [
#   'a', 'ab', 'abc', 'abcd', 'abcde', 
#   'b', 'bc', 'bcd', 'bcde',
#   'c', 'cd', 'cde',
#   'd', 'de',
#   'e'
# ]
