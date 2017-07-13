def multisum(number)
  multi_array = (1..number).to_a.select do |num|
    (num % 3 == 0) || (num % 5 == 0)
  end
  multi_array.inject(:+)
end

p multisum(3)
p multisum(5)
p multisum(10)
p multisum(1000)