def is_odd?(x)
  x % 2 == 1
end

def is_odd2?(x)
  x.abs % 2 == 1
end

def is_odd3?(x)
  x.abs.remainder(2) == 1
end
puts is_odd?(4)
puts is_odd?(3)
puts is_odd?(0)
puts is_odd?(-5)
puts is_odd?(-10)

puts is_odd2?(4)
puts is_odd2?(3)
puts is_odd2?(0)
puts is_odd2?(-5)
puts is_odd2?(-10)

puts is_odd3?(4)
puts is_odd3?(3)
puts is_odd3?(0)
puts is_odd3?(-5)
puts is_odd3?(-10)