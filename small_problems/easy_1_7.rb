def stringy(n)
  new_string = ""
  n.times do |i|
    new_string << "1" if (i+1).even? 
    new_string << "0" if (i+1).odd?
  end
  new_string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# ------------------------------------
# further exploration

def stringy(n,start=1)
  numbers = []
  n.times do |index|
    number = index.even? ? start : [0,1].reject!{|x| x == start}.join
    numbers << number
  end
  numbers.join
end

stringy(6, 0) == '101010'
stringy(9, 0) == '101010101'