puts "What is the bill?"
bill = gets.chomp.to_f
puts "What is the tip percentage?"
percentage = gets.chomp.to_f
tip = ((bill * percentage) * 0.01)

total = (bill + tip)
tip = format('%3.2f', tip)
total = format('%3.2f', total)
puts ''
puts "The tip is $#{tip}"
puts "The total is $#{total}"