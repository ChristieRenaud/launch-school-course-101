def triangle(num)
  index = 1
  num.times do 
    puts (" " * (num - index)) + ("*" * index)
    index += 1
  end
end

#further exploration

def triangle(num)
  index = 0
  num.times do 
    puts (" " * index) + ("*" * (num - index))
    index += 1
  end
end

triangle(5)
triangle(9)
