def interleave(array_1, array_2)
  new_array = []
  loop do 
    break if array_1.empty? && array_2.empty?
    new_array << array_1.shift << array_2.shift
  end
  new_array
end

#further exploration
def interleave(array_1, array_2)
  array_1.zip(array_2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c'])