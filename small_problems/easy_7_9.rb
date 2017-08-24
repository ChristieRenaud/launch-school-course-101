def multiply_all_pairs(numbers_1, numbers_2)
  numbers_array = numbers_1.product(numbers_2)
  numbers_array.map{ |subarray| subarray[0] * subarray[1] }.sort
end  


p multiply_all_pairs([2, 4], [4, 3, 1, 2]) #== [2, 4, 4, 6, 8, 8, 12, 16]