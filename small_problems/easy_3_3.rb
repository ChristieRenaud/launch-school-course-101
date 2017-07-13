# easy_3_3.rb
def prompt(message)
  puts "==> #{message}"
end
prompt("Please write word or multiple words:")
answer = gets.chomp
num_characters = answer.delete(" ").size
prompt("There are #{num_characters} characters in \"#{answer}\".")