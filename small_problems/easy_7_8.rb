#easy_7_8.rb
def multiply_list(array_1, array_2)
  result_array = []
  array_1.size.times do |i|
    result_array << array_1[i] * array_2[i]
  end
  result_array
end

#further exploration
def multiply_list(array_1, array_2)
  result_array = []
  array_1.zip(array_2){ | x, y| result_array << x * y }
  result_array
end

def multiply_list(array_1, array_2)
  array_1.zip(array_2).map { |subarray| subarray[0] * subarray[1] }
end

p multiply_list([3, 5, 7], [9, 10, 11]) #== [27, 50, 77]