puts 1.upto(99).select { |x| x.even? }

##############

value = 1
while value <= 99
  puts value if value.even?
  value += 1
end
