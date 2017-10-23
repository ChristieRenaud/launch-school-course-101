#Easy6_8-2.rb
#input = an array containing 1 duplicate
#output = the number that is a duplicate

#approach
# iterate through the array
# compare first number to all numbers, if they match, return that number
# move on to the next number, skipping all the numbers that have already been searched

# def find_dup(array)
#   array.each do |elem|
#     x = array.pop
#     return x if array.include?(x)
#   end
# end

def find_dup(array)
  search_array = array.dup
  loop do 
    x = search_array.pop
    return x if search_array.include?(x)
  end
end
#test cases:
p find_dup([1, 5, 3, 1]) #== 1
p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) #== 73