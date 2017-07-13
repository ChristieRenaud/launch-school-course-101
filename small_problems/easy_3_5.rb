# easy_3_5.rb

def multiply(x, y)
  x * y
end

def square(num, power)
  return num if power == 1
  x = multiply(num, num)
  counter = (power - 1)
  loop do 
    counter -= 1
    break if counter == 0
    x = multiply(num, x)
  end
  return x
end

puts square(10, 3)
puts square(-5, 5)
puts square(4, 2)
puts square(10, 1)