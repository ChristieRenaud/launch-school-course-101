require 'pry'
VALID_CHOICES = %w(rock paper scissors spock lizard)

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == 'rock' && second == ('scissors' || 'lizard')) ||
    (first == 'paper' && second == ('rock' || 'spock')) ||
    (first == 'scissors' && second == ('paper' || 'lizard')) ||
    (first == 'lizard' && second == ('spock' || 'paper')) ||
    (first == 'spock' && second == ('scissors' || 'rock'))
end

def display_results(player, computer)
  if win?(player, computer) 
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("it's a tie!")
  end
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()
    
    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)
  binding.pry

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Good-bye!")
