# easy_1_8.rb

def average(array)
  total = array.inject(:+)
  total.to_f/array.size
end

average([1, 5, 87, 45, 8, 7])
average([9, 47, 23, 95, 16, 52])