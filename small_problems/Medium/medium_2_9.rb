def bubble_sort!(array)
loop do
  starting_array = array.dup
  ((array.size)-1).times do |x|
    if array[x] > array[x+1]
      array[x], array[x+1] = array[x+1], array[x]
    end
  end
break if starting_array == array
end
array
end

p bubble_sort!([6, 5, 4, 3, 2])

#Further Exploration

def bubble_sort!(array)
  n = array.length
  loop do
    new_n = 0
    1.upto(n-1) do |index|
      if array[index-1] > array[index]
        array[index-1], array[index] = array[index], array[index-1]
        new_n = index
      end
    end
    n = new_n
  break if n == 0
  end
end

p bubble_sort!([6, 5, 4, 3, 2])