#inputs: an array
#outputs: an array containing every other element of first string, starting at index 0

#approach
#iterate through array, saving every other element to a new array, starting with the first element

def oddities(array)
result = []
array.each_with_index do |value, idx|
  result << value if (idx + 1).odd?
end
result
end


p oddities([2, 3, 4, 5, 6]) #== [2, 4, 6]
p oddities(['abc', 'def']) #== ['abc']
p oddities([123]) #== [123]
p oddities([]) #== []

def evens(array)
  counter = 0
  even_elements = array.select do |elem|
    counter += 1
    counter.even?
  end
end

p evens([2, 3, 4, 5, 6]) #== [2, 4, 6]
p evens(['abc', 'def']) #== ['abc']
p evens([123]) #== [123]
p evens([]) #== []