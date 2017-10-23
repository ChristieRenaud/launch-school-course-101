#input: A nested array containing 2 element arrays where the first element as an item and the second is a quantity
#output: a one-dimensional array with the items listed the number of times indicated by the quantity

def buy_fruit(array) 
  results = []
  array.each do |fruit, number|
    number.times { results << fruit }
  end
  results
end

# approach
#loop through array
# for each subarray push the item to a new array the times indicated in the quantity
# return new array

# test cases:
p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) #==
  # ["apples", "apples", "apples", "orange", "bananas","bananas"]