def interleave(array_1, array_2)
  new_array = []
  loop do 
    break if array_1.empty? && array_2.empty?
    new_array << array_1.shift
    new_array << array_2.shift
  end
  new_array
end


p interleave([1, 2, 3], ['a', 'b', 'c'])