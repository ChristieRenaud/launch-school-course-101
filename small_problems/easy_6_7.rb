def halvsies(array)
  first_array = []
  second_array = []
  array.each_with_index do |elem, index| 
    if index+1 <= (array.size/2.0).ceil
      first_array << elem 
    else 
      second_array << elem
    end
  end
  result_array = [[first_array, second_array]]
end




p halvsies([1, 2, 3, 4]) #== [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) #== [[1, 5, 2], [4, 3]]
p halvsies([5]) #== [[5], []]
p halvsies([]) #== [[], []]