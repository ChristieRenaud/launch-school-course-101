# easy_3_2.rb
def prompt(message)
  puts "==> #{message}"
end

prompt("Enter the first number")
num1 = gets.chomp.to_f

prompt("Enter the second number")
num2 = gets.chomp.to_f

result = num1 + num2
prompt("#{num1} + #{num2} = #{result.round(2)}")

result = num1 - num2
prompt("#{num1} - #{num2} = #{result.round(2)}")

result = num1 * num2
prompt("#{num1} * #{num2} = #{result.round(2)}")

result = num1 / num2
prompt("#{num1} / #{num2} = #{result.round(2)}")

result = num1 % num2
prompt("#{num1} % #{num2} = #{result.round(2)}")

result = num1 ** num2
prompt("#{num1} ** #{num2} = #{result.round(2)}")