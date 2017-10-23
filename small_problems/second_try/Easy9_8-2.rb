#input: 2 integers, a count and a starting number
#output: An array that contains the same number of elements ans the count, each element is a multiple of the starting number

# approach:
# initialize results array
# loop the number of times of count
#  -each time multiply the second integer by the number of the iteration
# - push that number to the array
# return array

def sequence(count, start_number)
  results = []
  1.upto(count) do |index|
    results << start_number * index
  end
  results
end
#test cases:
p sequence(5, 1) #== [1, 2, 3, 4, 5]
p sequence(4, -7) #== [-7, -14, -21, -28]
p sequence(3, 0) #== [0, 0, 0]
p sequence(0, 1000000) #== []
