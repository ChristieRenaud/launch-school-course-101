num = ''
loop do
  puts ">> Please enter an integer greater than 0:"
  num = gets.chomp
  break if (num.to_i.to_s == num) && (num.to_i > 0)
  puts ">> Invalid input."
end
num = num.to_i

operator = ''
loop do 
  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  operator = gets.chomp.downcase
  break if ['s','p'].include?(operator)
  puts ">> Invalid input."
end

if operator == 's'
  sum = (1..num).inject(:+)
  puts "The sum of the integers between 1 and #{num} is #{sum}."
elsif operator == 'p' 
  product = (1..num).inject(:*)
  puts "The product of the integers between 1 and #{num} is #{product}."
else
  puts "Sorry, invalid inputs."
end
