require 'pry'
def merge(array1, array2)
  new_array = []
  combined_array = array1 + array2
  #   loop do 
  #     case combined_array[0] <=> combined_array[1] 
  #       when -1
  #         new_array << combined_array[0]
  #         combined_array.delete_at(0)
  #       when 0
  #         new_array << combined_array[0] << combined_array[1]
  #         combined_array.delete_at(0)
  #         combined_array.delete_at(0)
  #       when 1
  #         new_array << combined_array[1]
  #         combined_array.delete_at(1)
  #     end
  #   break if combined_array.size == 1
  # end
  # new_array << combined_array[0]
  loop do 
    smallest = combined_array.min
    new_array << smallest
    combined_array.delete_if do |x| 
      x == smallest 
      #break if x == smallest
    end
    binding.pry
    break if combined_array.empty?
  end
  new_array
end








p merge([1, 5, 9], [2, 6, 8]) #== [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) #== [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) #== [1, 4, 5]
p merge([1, 4, 5], []) #== [1, 4, 5]