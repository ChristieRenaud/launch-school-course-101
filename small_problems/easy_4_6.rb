def running_total(array)
  new_total = 0
  array.map do |num|
    new_total += num
  end
end

# alternate solution

def running_total(array)
  sum = 0
  array.each_with_object([]) do |num, totals|
    totals << sum += num
  end
end

# alternate solution

def running_total(array)
  new_array = []
  array.each_with_index do |_, idx|
    new_array << array[0, idx+1].inject(:+)
  end
  new_array
end


p running_total([2, 5, 13]) 
p running_total([14, 11, 7, 15, 20])
p running_total([3])
p running_total([])