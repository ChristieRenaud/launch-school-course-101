# easy_3_1.rb
def prompt(message)
  puts "==> " + message
end 

order = ["1st", "2nd", "3rd", "4th", "5th", "last"]  
numbers = []
answer = nil
loop do
  prompt("Enter the #{order[0]} number")
  answer = gets.chomp.to_i
  break if order.first == "last"
  numbers << answer
  order.shift
end

result = numbers.include?(answer)? "appears" : "does not appear"
prompt("The number #{answer} #{result} in #{numbers}")
