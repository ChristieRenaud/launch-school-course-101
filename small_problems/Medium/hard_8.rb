#hard_8.
require 'pry'
def break_down(array)
  array_1 = []
  array_2 = []
  new_array = []
  array.each_with_index do |x, index| 
    index < array.size/2 ? array_1 << x : array_2 << x
  end
  new_array << array_1 << array_2
end

def merge_sort(array)
  new_array = break_down(array)   
  new_array = new_array.map { |arr| break_down(arr) }
  new_array = new_array.map do |arr|
        combined_array = arr[0] + arr[1]
        combined_array.sort
      end
  new_array = new_array[0] + new_array[1]
  new_array.sort
end
    
# def merge_sort(array)
#   new_array = break_down(array)  
#   array.size-1.times do
#     new_array = new_array.map do |arr| 
#         break_down(arr[0]) 
#       end



#   end
#   new_array
# end



p merge_sort([9, 5, 7, 1]) #== [1, 5, 7, 9]
#p merge_sort([5, 3]) #== [3, 5]
#p merge_sort([6, 2, 7, 1, 4]) #== [1, 2, 4, 6, 7]
#p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) #== %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
#p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) #== [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]