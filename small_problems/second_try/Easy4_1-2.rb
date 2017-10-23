# input: two strings of different lengths
# output: a new string made from joining the shorter string, longer string, and shorter string

#approach: determine lenghth of each string. Compare, if first is longest join them first + second + first.
# If second is longest, join second, first, second
# return new string

def short_long_short(string_1, string_2)
  case string_1.size <=> string_2.size
  when -1
    string_1 + string_2 + string_1
  when 1
    string_2 + string_1 + string_2
  end
end

#alternate solution:

def combine(x, y)
  x + y + x
end

# def short_long_short(string_1, string_2)
#   case string_1.size <=> string_2.size
#   when -1
#     combine(string_1, string_2)
#   when 1
#     combine(string_2, string_1)
#   end
# end

def short_long_short(string_1, string_2)
string_1.size < string_2.size ? combine(string_1, string_2) : combine(string_2, string_1)
end

# test cases:
p short_long_short('abc', 'defgh') #== "abcdefghabc"
p short_long_short('abcde', 'fgh') #== "fghabcdefgh"
p short_long_short('', 'xyz') #== "xyz"