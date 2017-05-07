#Question 1
10.times { |number| puts (" " * number) + "The Flintstones Rock!"}

#Question 2
puts "the value of 40 + 2 is " + (40 + 2)
puts "the value of 40 + 2 is #{40 + 2}"
puts "the value of 40 + 2 is " + (40 + 2).to_s

#Question 3
def factors(number)
  dividend = number
  divisors = []
  while dividend > 0
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  divisors
end
