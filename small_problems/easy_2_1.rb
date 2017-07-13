puts "What is your name?"
my_name = gets.chomp
my_name = 'Teddy' if my_name == ''
age = rand(20..200)
puts "#{my_name} is #{age} years old!"