def oddities(array) 
  new_array = []
  array.each_with_index do |elem, index|
    new_array << elem if (index + 1).odd?
  end
  new_array
end

puts oddities([2, 3, 4, 5, 6])
puts oddities(['abc', 'def'])

####

def evens(array)
  index = 0
  array.select do |elem|
    index += 1
    index.even?
  end
end

puts evens([2, 3, 4, 5, 6])

####

def evens(array)
  index = 0
  array.each_with_object([]) do |elem, evens_array|
    evens_array << elem if index.odd?
    index += 1
  end
end