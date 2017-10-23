#input: array of numbers
#output: array of numbers with same num of elements,each element has running total from the original array

# approach:

# initialize a totals variable
#iterate through array
# transform array, each iteration should be total plus value that iteration
# update total
# return new array

def running_total(array)
  total = 0
  array.map do |num|
    total += num
  end
end

#test cases:
p running_total([2, 5, 13]) #== [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) #== [14, 25, 32, 47, 67]
p running_total([3]) #== [3]
p running_total([]) #== []

