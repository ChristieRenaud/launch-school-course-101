# easy_8_3.rb
def substrings_at_start(string)
  result = []
  string.size.times do |i|
    result << string.slice(0, i+1)
  end
  result
end  




p substrings_at_start('abc') #== ['a', 'ab', 'abc']
p substrings_at_start('a') #== ['a']
p substrings_at_start('xyzzy') #== ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']