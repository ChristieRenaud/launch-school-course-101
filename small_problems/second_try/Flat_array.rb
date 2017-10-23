def flat(multi_array)
  multi_array.each_with_object([]) do |sub_array, flat_array|
    #flat_array.concat(sub_array)
    flat_array << sub_array
  end
end


array = [[3, 4], [1,2,3], [6]]

p flat(array)