def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

buffer1 = [1, 2, 3]
buffer2 = [1, 3, 3]

puts rolling_buffer1(buffer1, 3, 4)
puts rolling_buffer2(buffer2, 3, 4)

puts buffer1
puts buffer2